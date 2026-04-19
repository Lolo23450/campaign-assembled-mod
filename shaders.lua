-- glsl shaders
-- #version 120

-- format is { COMMON_HEADER, VERTEX_SHADER, FRAGMENT_SHADER, TEXTURE_NAME }

-- implicit parameters:
-- attribute vec4 Position; (vertex position)
-- uniform mat4 Transform; (transformation matrix)
-- uniform sampler2D ShaderTex; (texture sampler for specified texture_name);
-- uniform vec2 ShaderTexRes; (widthxheight of texture_name)
-- uniform vec2 Resolution; (widthxheight of window in pixels)
-- uniform float ToPixels; (pixel_size / world_size, converts world sizes into (zoom invariant) pixels sizes)

{
    ShaderColorLuma = {
    "varying vec4 DestinationColor;
    varying vec2 LocalPos;
    varying float ShieldMode;"
    ,
    "attribute vec4 SourceColor;
    attribute float Luma;
    void main(void) {
        DestinationColor = Luma * SourceColor;
        LocalPos = Position.xy;
        ShieldMode = Position.z;
        gl_Position = Transform * Position;
    }"
    ,
    "#include 'noise3D.glsl'

    vec2 hexCoords(vec2 uv) {
        vec2 r = vec2(1.0, 1.7320508);
        vec2 h = r * 0.5;
        vec2 a = mod(uv, r) - h;
        vec2 b = mod(uv - h, r) - h;
        return dot(a,a) < dot(b,b) ? a : b;
    }

    void main(void) {

        vec4 col = DestinationColor;

        if (ShieldMode < 0.5) {

            gl_FragColor = col;

        } else {

            float shieldOpacity     = 0.80;
            float baseVisibility    = 0.65;
            float haloIntensity     = 0.24;
            float glintIntensity    = 0.05;
            float coreGlowIntensity = 0.5;
            float noiseScale1       = 0.0005;
            float noiseScale2       = 0.0015;
            float hexScale          = 0.005;
            float hexIntensity      = 0.015;
            float hexScroll         = 0.0;

            float ObjTime = Time;

            float n1 = snoise(vec3(LocalPos * noiseScale1, ObjTime * 0.4));
            float n2 = snoise(vec3(LocalPos * noiseScale2 - ObjTime * 0.2, ObjTime * 0.8));
            float shimmer = n1 * 1.5 + n2 * 0.5;

            float phase = 0.5 * ObjTime + shimmer;
            float val = 0.5 + 0.5 * sin(phase);
            float border = 1.0 - abs(val - 0.5) * 2.0;

            vec3 prism;
            prism.r = 0.5 + 0.5 * sin(phase * 2.0 - 1.0);
            prism.g = 0.5 + 0.5 * sin(phase * 2.0);
            prism.b = 0.5 + 0.5 * sin(phase * 2.0 + 1.0);

            vec2 hexUV = LocalPos * hexScale;
            hexUV.y -= ObjTime * hexScroll;

            vec2 hC = hexCoords(hexUV);
            float hDist = max(abs(hC.x), abs(hC.x) * 0.5 + abs(hC.y) * 0.866025);

            vec3 hexNormal = normalize(vec3(hC.x, hC.y, 0.25));
            float hexLight = max(0.0, dot(hexNormal, normalize(vec3(1.0, 1.0, 1.0))));

            float hexEdge = smoothstep(0.4, 0.5, hDist);
            float hex3D = hexLight * smoothstep(0.45, 0.1, hDist) * 0.6;

            vec3 hexFinal = prism * (hexEdge + hex3D) * hexIntensity;

            vec3 halo = prism * pow(border, 2.5) * haloIntensity;
            float glint = pow(border, 8.0) * glintIntensity;

            float intensity = dot(col.rgb, vec3(0.299, 0.587, 0.114));
            vec3 coreGlow = col.rgb * intensity * coreGlowIntensity * (0.5 + 0.5 * border);

            vec3 deepBase = col.rgb * baseVisibility * (0.85 + 0.15 * border);

            gl_FragColor = vec4(deepBase + coreGlow + halo + hexFinal + vec3(glint), col.a * shieldOpacity);

            }
        }"
    },

   -- draws stars
   ShaderStars = {
      "varying vec4 DestinationColor;"
      ,
      "attribute vec4 SourceColor;
       attribute float Size;
       uniform   float ToPixels;
       uniform float EyeZ;
       void main(void) {
           DestinationColor = SourceColor;
           gl_PointSize = Size * ToPixels * 0.5;
           gl_Position = Transform * Position;
       }"
      ,
      "void main(void) {
           vec2 coord = 2.0 * (gl_PointCoord - 0.5);
           float dist = length(coord);
           
           // Super bright, soft core
           float core = exp(-dist * 6.0);
           // Optical anamorphic cross-flares
           float rayX = exp(-abs(coord.x) * 20.0) * exp(-abs(coord.y) * 2.0);
           float rayY = exp(-abs(coord.y) * 20.0) * exp(-abs(coord.x) * 2.0);
           
           float alpha = core + (rayX + rayY) * 0.7;
           
           if (alpha <= 0.01)
               discard;
               
           // Burn highlights towards pure white in the center
           vec4 finalColor = DestinationColor;
           finalColor.rgb = mix(finalColor.rgb, vec3(1.0), core * 0.7);
           
           gl_FragColor = finalColor * vec4(1.0, 1.0, 1.0, clamp(alpha, 0.0, 1.0));
       }"
   },

   -- draws the wormhole
   ShaderWormhole = {
      "varying vec4 DestColor0;
       varying vec4 DestColor1;
       varying vec2 DestTex;
       float length2(vec2 x) { return dot(x, x); }"
      ,
      "attribute vec2 TexCoord;
      
      void main(void) {
          DestColor0 = vec4(0.1, 0.2, 0.9, 0.0);
          DestColor1 = mix(vec4(0.0, 1.0, 0.8, 1.2), vec4(DestColor0.xyz, 1.0), length2(TexCoord));
          DestTex = TexCoord;
          gl_Position = Transform * Position;
      }"
      ,
      "#include 'noise3D.glsl'
      vec2 rotate(vec2 v, float a) {
          float s = sin(a); float c = cos(a);
          return vec2(c * v.x - s * v.y, s * v.x + c * v.y);
      }

      void main(void) {
          float r = length2(DestTex);
          float dist = sqrt(r);
          
          // Gravitational space swirling
          vec2 swirledTex = rotate(DestTex, Time + 4.0 * r);
          
          // Layered cosmic dust clouds
          float val = snoise(vec3(swirledTex * 2.0, Time * 0.4 + r * 2.0));
          float aval = snoise(vec3(rotate(DestTex, Time + 2.5 * r), Time * 0.15));
          
          float alpha = 1.0 + 1.5 * aval;           
          alpha *= max(0.0, 1.0 - dist) * 4.0 * r;
          
          vec4 color = mix(DestColor0, DestColor1, 0.7 + 0.5 * val);
          
          // Hot inner accretion ring glow
          float ring = smoothstep(0.4, 0.15, dist) * smoothstep(0.0, 0.15, dist);
          color.rgb += vec3(0.3, 0.8, 1.0) * ring * 1.5;
          
          gl_FragColor = vec4(alpha * color.a * color.xyz, 0.0);
      }"
   },

   -- draws the blackhole
   ShaderBlackhole = {
      "varying vec2 uv;"
      ,
      "attribute vec2 TexCoord;
      void main(void) {
          uv = TexCoord;
          gl_Position = Transform * Position;
      }",
      "#include 'blackhole.glsl'

      void main(void) {
          vec4 col = frag(uv);
          // Subtle contrast enhancement for pure depths of space
          col.rgb = pow(col.rgb, vec3(1.05)) * 1.1;
          gl_FragColor = col;
      }",
      "textures/Starsinthesky.jpg"
      -- "C4s3q7KVUAAvVgu.jpg"
   },

   -- draws resource packets (R)
   ShaderResource = {
      "varying vec4 DestColor0;
       varying vec4 DestColor1;
       varying vec2 DestPos;
       varying float DestRad;"
      ,
      "attribute vec4 SourceColor0;
      attribute vec4 SourceColor1;
      attribute float Radius;
      uniform float ToPixels;
      void main(void) {
          DestColor0 = SourceColor0;
          DestColor1 = SourceColor1;
          DestPos = Position.xy / 100.0;
          DestRad = sqrt(Radius);
          gl_Position = Transform * Position;
          gl_PointSize = 2.0 * ToPixels * Radius;
      }"
      ,
      "#include 'noise2D.glsl'
      float length2(vec2 x) { return dot(x, x); }
      vec2 rotate(vec2 v, float a) {
          float s = sin(a); float c = cos(a);
          return vec2(c * v.x - s * v.y, s * v.x + c * v.y);
      }

      void main(void) {
            vec2 coord = gl_PointCoord.xy - 0.5;
            float len2c = length2(coord);
            float dist = sqrt(len2c);
            
            float thresh = 1.0 - (4.0 * len2c);
            if (thresh <= 0.0)
                discard;
                
            // Dynamic energy twisting behavior
            vec2 pos = 0.1 * DestPos + 0.15 * rotate(coord, len2c * 8.0 - Time * 0.5);
            float val = snoise(pos * 3.0 + Time) * 0.5 + snoise(pos * 6.0 - Time) * 0.05;
            
            // Soft plasma aura logic
            float aura = (0.5 + 0.5 * sin(10.0 * val)) * thresh;
            // Hot crystalline core
            float core = exp(-dist * 12.0);
            
            vec3 color = mix(DestColor0.xyz, DestColor1.xyz, aura);
            color += vec3(core * 0.8); // White-hot center
            
            float finalAlpha = clamp(aura + core, 0.0, 1.0) * thresh;
            gl_FragColor = vec4(color * finalAlpha, finalAlpha);
      }"
   },

   -- used for nice gradient backgrounds
   ShaderColorDither = {
      "varying vec4 DestinationColor;"
      ,
      "attribute vec4 SourceColor;
      void main(void) {
          DestinationColor = SourceColor;
          gl_Position = Transform * Position;
      }"
      ,
      "uniform sampler2D dithertex;
      void main(void) {
            float ditherv = texture2D(dithertex, gl_FragCoord.xy / 8.0).r / 64.0 - (1.0 / 128.0);
            gl_FragColor = DestinationColor + vec4(ditherv);
      }"
   },

   -- passthrough texture shader
   ShaderTexture = {
      "varying vec2 DestTexCoord;
       varying vec4 DestColor;\n"
      ,
      "attribute vec2 SourceTexCoord;
      uniform vec4 SourceColor;
      void main(void) {
          DestTexCoord = SourceTexCoord;
          DestColor    = SourceColor;
          gl_Position  = Transform * Position;
      }"
      ,
      "uniform sampler2D texture1;
       void main(void) {
           gl_FragColor = DestColor * texture2D(texture1, DestTexCoord);
       }"
   },

    ShaderTextureWarp = {
      "varying vec2 DestTexCoord;
       varying vec4 DestColor;"
      ,
      "attribute vec2 SourceTexCoord;
      uniform vec4 SourceColor;
      void main(void) {
          DestTexCoord = SourceTexCoord;
          DestColor    = SourceColor;
          gl_Position  = Transform * Position;
      }"
      ,
      "#include 'noise2D.glsl'
      uniform sampler2D texture1;
      uniform sampler2D warpTex;
      uniform vec2      camWorldPos;
      uniform vec2      camWorldSize;
      
      // Nebula Fractal function
      float nebula(vec2 p) {
          float n = snoise(p);
          n += 0.5 * snoise(p * 2.0);
          n += 0.25 * snoise(p * 4.0);
          return n;
      }

      void main(void) {
         vec2 texCoord = DestTexCoord;
         float warpv = length(texture2D(warpTex, texCoord).rgb);
         vec2 worldP = camWorldPos + (texCoord * camWorldSize * 0.01);
         
         // 1. NEBULA LAYER (Always active, subtle)
         vec2 nebP = worldP * 0.002 + Time * 0.02;
         float n = nebula(nebP);
         // Color the nebula (Deep Purple to Cyan transition)
         vec3 nebulaColor = mix(vec3(0.2, 0.0, 0.4), vec3(0.0, 0.3, 0.5), n * 0.5 + 0.5);
         float nebulaAlpha = smoothstep(0.1, 0.8, n) * 0.3; // Subtle opacity

         if (warpv > 0.0) {
             // 2. DISTORTION MATH
             float n1 = snoise(worldP * 0.3 + Time * 0.15);
             float n2 = snoise(worldP * 0.3 - Time * 0.15 + 100.0);
             float n3 = snoise(worldP * 1.2 + Time * 0.6);
             
             vec2 flow = vec2(n1, n2) * 0.8 + vec2(n3, n3) * 0.2;
             float angle = warpv * 3.14159; 
             flow = vec2(flow.x * cos(angle) - flow.y * sin(angle), flow.x * sin(angle) + flow.y * cos(angle));

             float intensity = (warpv * sqrt(warpv)) * 200.0 / max(camWorldSize.x, camWorldSize.y);
             vec2 offset = flow * intensity;
             
             // Chromatic Aberration
             float r = texture2D(texture1, texCoord + offset * 1.4).r;
             float g = texture2D(texture1, texCoord + offset * 1.0).g;
             float b = texture2D(texture1, texCoord + offset * 0.6).b;
             float a = texture2D(texture1, texCoord + offset).a; 
             
             vec3 warpedColor = vec3(r, g, b);
             
             // 3. COMBINE NEBULA WITH WARP
             // The nebula is warped ALONG with the background
             vec3 finalRGB = mix(warpedColor, nebulaColor, nebulaAlpha);
             
             gl_FragColor = DestColor * vec4(finalRGB, a);
         } else {
             // Normal Background + Nebula
             vec4 tex = texture2D(texture1, texCoord);
             gl_FragColor = DestColor * vec4(mix(tex.rgb, nebulaColor, nebulaAlpha), tex.a);
         }
      }"
   },

   -- HDR postprocessing
   ShaderTonemap = {
      "varying vec2 DestTexCoord;"
      ,
      "attribute vec2 SourceTexCoord;
      void main(void) {
          DestTexCoord = SourceTexCoord;
          gl_Position  = Transform * Position;
      }"
      ,
      "uniform sampler2D texture1;
      uniform sampler2D dithertex;
      void main(void) {
          vec2 texCoord = DestTexCoord;
          vec4 color = texture2D(texture1, texCoord);
          
          if (color.rgb != vec3(0.0))
          {
              // Slight exposure bump before tonemapping to keep scenes luminous
              vec3 x = color.rgb * 1.25;
              
              // ACES Filmic Tonemap Curve - gracefully rolls extremely bright particles to pure white without blowing out saturation
              color.rgb = clamp((x * (2.51 * x + 0.03)) / (x * (2.43 * x + 0.59) + 0.14), 0.0, 1.0);
              
      #if DITHER
              float ditherv = texture2D(dithertex, gl_FragCoord.xy / 8.0).r / 128.0 - (1.0 / 128.0);
              color.rgb += ditherv;
      #endif
          }
          gl_FragColor = vec4(color.rgb, color.a);
      }"
   },

   ShaderHsv = {
      "varying vec4 DestHSVA;"
      ,
      "attribute vec4 ColorHSVA;
       void main(void) {
           DestHSVA = ColorHSVA;
           gl_Position = Transform * Position;
       }"
      ,
      "#include 'hsv_rgb.glsl'
       void main(void) {
           gl_FragColor = vec4(hsv2rgb(DestHSVA.rgb), DestHSVA.a);
      }"
   },


   ShaderTextureHSV = {
      "varying vec2 DestTexCoord;
       varying vec4 DestColor;"
      ,
      "attribute vec2 SourceTexCoord;
       uniform vec4 SourceColor;
       void main(void) {
           DestTexCoord = SourceTexCoord;
           DestColor    = SourceColor;
           gl_Position  = Transform * Position;
       }"
      ,
      "#include 'hsv_rgb.glsl'
       uniform sampler2D texture1;

       void main(void) {
           vec4 tcolor = texture2D(texture1, DestTexCoord);
           gl_FragColor = vec4(hsv2rgb(DestColor.rgb * rgb2hsv(tcolor.rgb)), 
                              DestColor.a * tcolor.a);
       }"
   },

   -- full screen blurs. 
   ShaderBlur = {
      "varying vec2 DestTexCoord;"
      ,
      "attribute vec2 SourceTexCoord;
       void main(void) {
           DestTexCoord = SourceTexCoord;
           gl_Position  = Transform * Position;
       }"
      ,
      "uniform sampler2D source;
       uniform vec2 offsets[BLUR_SIZE];
       void main() {
           gl_FragColor = BLUR(source, DestTexCoord, offsets);
       }"
   }
}