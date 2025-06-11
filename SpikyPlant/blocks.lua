{13000, features=COMMAND|THRUSTER|GENERATOR|TORQUER|REGROWER|PHOTOSYNTH|SEED|ASSEMBLER|TRACTOR, capacity=300,
    launchLifetime=30, fillColor=0x98a606, fillColor1=0x8a656, lineColor=0x879606,
    thrusterColor=0x90e56c65, thrusterColor1=0x90764593, group=13, shape=SEED_3, name="Seed",
    points=16, durability=3, density=0.15, powerCapacity=900, thrusterForce=2000,
    torquerTorque=4000, generatorCapacityPerSec=300, seedLifetime=0, sort=-99984,
    elasticity=0},
{13001, features=COMMAND|GENERATOR|PHOTOSYNTH, capacity=1000, fillColor=0x98a606,
    fillColor1=0x8a656, lineColor=0x879606, group=13, shape=HEPTAGON, scale=3, name="Pod Command",
    points=75, durability=0.5, density=0.15, powerCapacity=1500, generatorCapacityPerSec=500,
    photosynthPerSec=5, sort=-99925},
{13002, features=COMMAND|PHOTOSYNTH, capacity=1000, fillColor=0x98a606, fillColor1=0x8a656,
    lineColor=0x879606, group=13, shape=OCTAGON, scale=3, name="Pod Command", points=55,
    durability=0.5, density=0.15, photosynthPerSec=5, sort=-99945},
  
-- Polyp blocks (armor only) – each one is replaced with a pair of entries:
  
	{ -- Polyp
		13010,
		features=PALETTE,
		group=13,
		name="Polyp",
		blurb="",
		shape=GEM_1, scale=1,
		fillColor=0x677606, fillColor1=0x424512, lineColor=0x879606,
		points=1, durability=3, density=0.1, growRate=12,
		capacity=0.1, sort=-10000,
	},
	
			-- Polyp 
	{13011, extends=13010,  scale=1,	shape=GEM_2,}
	{13012, extends=13010,  scale=1,	shape=GEM_3,}
	{13013, extends=13010,  scale=1,	shape=GEM_4,}
	{13014, extends=13010,  scale=1,	shape=HEPTAGON,}
	{13015, extends=13010,  scale=1,	shape=OCTAGON,}
	{13052, extends=13010,  scale=1,	shape=RECT,}
	{13017, extends=13010,  scale=1,	shape=ISOTRI_25,}
			-- Scale 2
	{13046, extends=13010,  scale=2,	shape=GEM_1,}
	{13047, extends=13010,  scale=2,	shape=GEM_2,}
	{13048, extends=13010,  scale=2,	shape=GEM_3,}
	{13049, extends=13010,  scale=2,	shape=GEM_4,}
	{13050, extends=13010,  scale=2,	shape=HEPTAGON,}
	{13051, extends=13010,  scale=2,	shape=OCTAGON,}
	{13016, extends=13010,  scale=2,	shape=RECT,}
	{13053, extends=13010,  scale=2,	shape=ISOTRI_25,}
			-- Scale 3
	{13082, extends=13010,  scale=3,	shape=GEM_1,}
	{13083, extends=13010,  scale=3,	shape=GEM_2,}
	{13084, extends=13010,  scale=3,	shape=GEM_3,}
	{13085, extends=13010,  scale=3,	shape=GEM_4,}
	{13086, extends=13010,  scale=3,	shape=HEPTAGON,}
	{13087, extends=13010,  scale=3,	shape=OCTAGON,}
	{13088, extends=13010,  scale=3,	shape=RECT,}
	{13089, extends=13010,  scale=3,	shape=ISOTRI_25,}
			-- Extras
	{13094, extends=13010,  scale=2,	shape=SQUARE,}
	{13095, extends=13010,  scale=1,	shape=SQUARE,}
	{13096, extends=13010,  scale=4,	shape=RECT_QUARTER,}
	{13097, extends=13010,  scale=6,	shape=RECT_QUARTER,}
	{3013137, extends=13010,  scale=8,	shape=RECT_QUARTER,}
	{3013142, extends=13010,  scale=5,	shape=RECT_QUARTER,}
	{3013143, extends=13010,  scale=7,	shape=RECT_QUARTER,}
	{3013138, extends=13010,  scale=4,	shape=HEPTAGON,}
	{13098, extends=13010,  scale=3,	shape=HEPTAGON,}
	{13099, extends=13010,  scale=1,	shape=ADAPTER,}
	
	{ -- Light Polyp
		113010,
		features=PALETTE,
		group=13,
		name="Light Polyp",
		blurb="",
		shape=GEM_1, scale=1,
		fillColor=0x889828, fillColor1=0x636724, lineColor=0xaab818,
		points=-1, durability=1, density=0.08, growRate=16,
		capacity=0.1, sort=-10000,
	},
	
			-- Light Polyp 
	{113011, extends=113010,  scale=1,	shape=GEM_2,}
	{113012, extends=113010,  scale=1,	shape=GEM_3,}
	{113013, extends=113010,  scale=1,	shape=GEM_4,}
	{113014, extends=113010,  scale=1,	shape=HEPTAGON,}
	{113015, extends=113010,  scale=1,	shape=OCTAGON,}
	{113052, extends=113010,  scale=1,	shape=RECT,}
	{113017, extends=113010,  scale=1,	shape=ISOTRI_25,}
			-- Scale 2
	{113046, extends=113010,  scale=2,	shape=GEM_1,}
	{113047, extends=113010,  scale=2,	shape=GEM_2,}
	{113048, extends=113010,  scale=2,	shape=GEM_3,}
	{113049, extends=113010,  scale=2,	shape=GEM_4,}
	{113050, extends=113010,  scale=2,	shape=HEPTAGON,}
	{113051, extends=113010,  scale=2,	shape=OCTAGON,}
	{113016, extends=113010,  scale=2,	shape=RECT,}
	{113053, extends=113010,  scale=2,	shape=ISOTRI_25,}
			-- Scale 3
	{113082, extends=113010,  scale=3,	shape=GEM_1,}
	{113083, extends=113010,  scale=3,	shape=GEM_2,}
	{113084, extends=113010,  scale=3,	shape=GEM_3,}
	{113085, extends=113010,  scale=3,	shape=GEM_4,}
	{113086, extends=113010,  scale=3,	shape=HEPTAGON,}
	{113087, extends=113010,  scale=3,	shape=OCTAGON,}
	{113088, extends=113010,  scale=3,	shape=RECT,}
	{113089, extends=113010,  scale=3,	shape=ISOTRI_25,}
			-- Extras
	{113094, extends=113010,  scale=2,	shape=SQUARE,}
	{113095, extends=113010,  scale=1,	shape=SQUARE,}
	{113096, extends=113010,  scale=4,	shape=RECT_QUARTER,}
	{113097, extends=113010,  scale=6,	shape=RECT_QUARTER,}
	{3113137, extends=113010,  scale=8,	shape=RECT_QUARTER,}
	{3113139, extends=113010,  scale=5,	shape=RECT_QUARTER,}
	{3113140, extends=113010,  scale=7,	shape=RECT_QUARTER,}
	{3113138, extends=113010,  scale=4,	shape=HEPTAGON,}
	{113098, extends=113010,  scale=3,	shape=HEPTAGON,}
	{113099, extends=113010,  scale=1,	shape=ADAPTER,}
	
  
-- Block 13018 (has special features – not changed)
{13018, features=PALETTE|THRUSTER, capacity=0.1, fillColor=0x677646, fillColor1=0x507646,
    lineColor=0x879606, thrusterColor=0x90e56c65, thrusterColor1=0x90764593, group=13,
    shape=THRUSTER, name="Polyp", points=3, durability=0.5, density=0.15, thrusterForce=40000,
    sort=10004},
  
  
-- Block 13054 (has special features – not changed)
{13054, features=PALETTE|THRUSTER, capacity=0.1, fillColor=0x677646, fillColor1=0x507646,
    lineColor=0x879606, thrusterColor=0x90e56c65, thrusterColor1=0x90764593, group=13,
    shape=THRUSTER, scale=2, name="Polyp", points=5, durability=0.5, density=0.15,
    thrusterForce=70000, sort=10005},
  
  
-- Block 13090 (has special features – not changed)
{13090, features=PALETTE|THRUSTER, capacity=0.1, fillColor=0x677646, fillColor1=0x507646,
    lineColor=0x879606, thrusterColor=0x90e56c65, thrusterColor1=0x90764593, group=13,
    shape=THRUSTER, scale=3, name="Polyp", points=7, durability=0.5, density=0.15,
    thrusterForce=120000, sort=10006},
  
  
-- Other blocks unchanged
{13101, features=PALETTE|LASER|MELEE, meleeDamage=2.5, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    laser={power=7, width=3, damage=100, color=0x7fcfff0f, range=800, linearForce=-100000},
     group=13, shape=ISOTRI_6, scale=3, name="Light Spine", points=11, durability=10,
    density=0.15, sort=280009, barrelTaper=0},
{13102, features=PALETTE|LASER|MELEE, meleeDamage=2.5, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    laser={power=15, width=6, damage=200, color=0x7fcfff0f, range=900, linearForce=-100000},
     group=13, shape=ISOTRI_6, scale=4, name="Light Spine", points=18, durability=10,
    density=0.15, sort=280016, barrelTaper=0},
{13103, features=PALETTE|LASER|MELEE, meleeDamage=2.5, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    laser={power=25, width=11, damage=400, color=0x7fcfff0f, range=1000, linearForce=-100000},
     group=13, shape=ISOTRI_3, scale=9, name="Light Spine", points=43, durability=10,
    density=0.15, sort=280025, barrelTaper=0},
{13110, features=PALETTE|LAUNCHER, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    replicateBlock=
    {lifetime=5, features=PALETTE|THRUSTER|EXPLODE, capacity=0.1, fillColor=0xb7ff00, fillColor1=0xcfff0f,
      lineColor=0xe7f606, thrusterColor=0x90e56c65, thrusterColor1=0x90e5d8d8, group=13,
      shape=ISOTRI_25_MISSILE, points=4, durability=0.2, density=0.15, thrusterForce=2000,
      explodeDamage=75, explodeRadius=20, launchSpeed=500, sort=120003}, group=13,
    shape=GEM_3_LAUNCHER, name="Thistle", points=28, durability=0.5, density=0.15,
    replicateTime=0.85, sort=110028},
{13111, features=PALETTE|LAUNCHER, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    replicateBlock=
    {lifetime=5, features=PALETTE|THRUSTER|EXPLODE, capacity=0.1, fillColor=0xb7ff00, fillColor1=0xcfff0f,
      lineColor=0xe7f606, thrusterColor=0x90e56c65, thrusterColor1=0x90e5d8d8, group=13,
      shape=ISOTRI_25_MISSILE, points=7, durability=0.2, density=0.15, thrusterForce=2000,
      explodeDamage=75, explodeRadius=20, launchSpeed=500, sort=120003}, group=13,
    shape=GEM_4_LAUNCHER, name="Thistle", points=28, durability=0.5, density=0.15,
    replicateTime=0.85, sort=110028},
{13112, features=PALETTE|LAUNCHER, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    replicateBlock=
    {lifetime=5, features=PALETTE|THRUSTER|EXPLODE, capacity=0.1, fillColor=0xb7ff00, fillColor1=0xcfff0f,
      lineColor=0xe7f606, thrusterColor=0x90e56c65, thrusterColor1=0x90e5d8d8, group=13,
      shape=ISOTRI_25_MISSILE, points=11, durability=0.2, density=0.15, thrusterForce=2000,
      explodeDamage=75, explodeRadius=20, launchSpeed=500, sort=120003}, group=13,
    shape=HEPTAGON_LAUNCHER, name="Thistle", points=28, durability=0.5, density=0.15,
    replicateTime=0.85, sort=110028},
{13119, features=PALETTE|LAUNCHER, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    replicateBlock=
    {lifetime=5, features=PALETTE|THRUSTER|EXPLODE, capacity=0.1, fillColor=0xb7ff00, fillColor1=0xcfff0f,
      lineColor=0xe7f606, thrusterColor=0x90e56c65, thrusterColor1=0x90e5d8d8, group=13,
      shape=ISOTRI_25_MISSILE, scale=2, points=4, durability=0.2, density=0.15, thrusterForce=2500,
      explodeDamage=150, explodeRadius=25, launchSpeed=500, sort=120004}, group=13,
    shape=GEM_3_LAUNCHER, scale=2, name="Thistle", points=43, durability=0.5, density=0.15,
    replicateTime=0.85, sort=110041},
{13120, features=PALETTE|LAUNCHER, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    replicateBlock=
    {lifetime=5, features=PALETTE|THRUSTER|EXPLODE, capacity=0.1, fillColor=0xb7ff00, fillColor1=0xcfff0f,
      lineColor=0xe7f606, thrusterColor=0x90e56c65, thrusterColor1=0x90e5d8d8, group=13,
      shape=ISOTRI_25_MISSILE, scale=2, points=4, durability=0.2, density=0.15, thrusterForce=2500,
      explodeDamage=150, explodeRadius=25, launchSpeed=500, sort=120004}, group=13,
    shape=GEM_4_LAUNCHER, scale=2, name="Thistle", points=67, durability=0.5, density=0.15,
    replicateTime=0.85, sort=110041},
{13121, features=PALETTE|LAUNCHER, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    replicateBlock=
    {lifetime=5, features=PALETTE|THRUSTER|EXPLODE, capacity=0.1, fillColor=0xb7ff00, fillColor1=0xcfff0f,
      lineColor=0xe7f606, thrusterColor=0x90e56c65, thrusterColor1=0x90e5d8d8, group=13,
      shape=ISOTRI_25_MISSILE, scale=2, points=4, durability=0.2, density=0.15, thrusterForce=2500,
      explodeDamage=150, explodeRadius=25, launchSpeed=500, sort=120004}, group=13,
    shape=HEPTAGON_LAUNCHER, scale=2, name="Thistle", points=127, durability=0.5, density=0.15,
    replicateTime=0.85, sort=110041},
{13130, features=PALETTE|LAUNCHER, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    replicateBlock=
    {lifetime=5, features=PALETTE|THRUSTER|EXPLODE, capacity=0.1, fillColor=0xb7ff00, fillColor1=0xcfff0f,
      lineColor=0xe7f606, thrusterColor=0x90e56c65, thrusterColor1=0x90e5d8d8, group=13,
      shape=ISOTRI_25_MISSILE, scale=2, points=4, durability=0.2, density=0.15, thrusterForce=2500,
      explodeDamage=150, explodeRadius=25, launchSpeed=500, sort=120004}, group=13,
    shape=HEPTAGON_LAUNCHER, scale=3, name="Thistle", points=235, durability=0.5, density=0.15,
    replicateTime=0.85, sort=110041},
{3013131, features=PALETTE|LAUNCHER, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    replicateBlock=
    {lifetime=5, features=PALETTE|THRUSTER|EXPLODE, capacity=0.1, fillColor=0xb7ff00, fillColor1=0xcfff0f,
      lineColor=0xe7f606, thrusterColor=0x90e56c65, thrusterColor1=0x90e5d8d8, group=13,
      shape=ISOTRI_25_MISSILE, points=2, durability=0.2, density=0.15, thrusterForce=2000,
      explodeDamage=125, explodeRadius=20, launchSpeed=500, sort=120003}, group=13,
    shape=GEM_2_LAUNCHER, name="Thistle", points=16, durability=0.5, density=0.15,
    replicateTime=0.85, sort=110028},
{3013132, features=PALETTE|LAUNCHER, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    replicateBlock=
    {lifetime=5, features=PALETTE|THRUSTER|EXPLODE, capacity=0.1, fillColor=0xb7ff00, fillColor1=0xcfff0f,
      lineColor=0xe7f606, thrusterColor=0x90e56c65, thrusterColor1=0x90e5d8d8, group=13,
      shape=ISOTRI_25_MISSILE, scale=2, points=4, durability=0.2, density=0.15, thrusterForce=2500,
      explodeDamage=200, explodeRadius=25, launchSpeed=500, sort=120004}, group=13,
    shape=GEM_2_LAUNCHER, scale=2, name="Thistle", points=32, durability=0.5, density=0.15,
    replicateTime=0.85, sort=110041},
{3013133, features=PALETTE|LASER|MELEE, meleeDamage=2.5, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    laser={power=25, width=11, damage=300, color=0x7fcfff0f, range=1000, linearForce=-100000},
     group=13, shape=ISOTRI_3, scale=7, name="Light Spine", points=28, durability=10,
    density=0.15, sort=280025, barrelTaper=0},
{3013134, features=PALETTE|LASER|MELEE, fillColor=0xa0ad3b, meleeDamage=5, fillColor1=0xc2d609, lineColor=0xf2ff36,
    laser={power=35, width=11, damage=400, color=0x7fcfff0f, range=1200, linearForce=-100000},
     group=13, shape=ISOTRI_6, scale=6, name="Heavy Spine", points=62, durability=10,
    density=0.15, sort=280025, barrelTaper=0},
{3013135, features=PALETTE|LASER|MELEE, fillColor=0xa0ad3b, meleeDamage=5, fillColor1=0xc2d609, lineColor=0xf2ff36,
    laser={power=50, width=11, damage=600, color=0x7fcfff0f, range=1200, linearForce=-100000},
     group=13, shape=ISOTRI_3, scale=10, name="Heavy Spine", points=87, durability=10,
    density=0.15, sort=280025, barrelTaper=0},
{3013136, 
    features=PALETTE|LAUNCHER, 
    fillColor=0x778036, 
    fillColor1=0x92a202, 
    lineColor=0xe7f606,
    replicateBlock=
    {
      features=PALETTE|LASER|TURRET|EXPLODE|COMMAND|THRUSTER|TORQUER|GENERATOR, 
      fillColor=0x778036, 
      fillColor1=0x92a202, 
      lineColor=0xe7f606,
      capacity=0.1,
      command={
        faction=13,
      },
      laser={
        power=0, 
        width=10, 
        damage=0, 
        color=0x7fcfff0f, 
        range=1100, 
        linearForce=-150000,
        pulsesPerBurst=1,
        burstyness=1,
      },
      shape=COMMAND_MISSILE,
      scale=1,
      name="",
      points=0,
      durability=10,
      density=0.15, 
      thrusterForce=10000,
      thrusterColor=0x90e56c65,
      thrusterColor1=0x90e5d8d8,
      torquerTorque=100000,
      generatorCapacityPerSec=1000,
      lifetime=6,
      explodeDamage=150,
      explodeRadius=5,
      sort=280025,
    },
    shape=GEM_3_LAUNCHER, 
    scale=2, 
    group=13, 
    name="Drone Launcher", 
    points=84, 
    durability=0.5, 
    density=0.15,
    replicateTime=1.75, 
    sort=110041},
{3013139, group=13, features=PALETTE|GENERATOR, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    shape=HEPTAGON, scale=2, name="Photosynthesizer", points=10, durability=0.5, density=0.15,
    replicateTime=0.85, sort=110041, generatorCapacityPerSec=50, powerCapacity=200, capacity=200},
{3013140, group=13, features=PALETTE|GENERATOR, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    shape=HEPTAGON, scale=3, name="Photosynthesizer", points=25, durability=0.5, density=0.15,
    replicateTime=0.85, sort=110041, generatorCapacityPerSec=100, powerCapacity=500, capacity=400},
{3013141, group=13, features=PALETTE|GENERATOR, fillColor=0x778036, fillColor1=0x92a202, lineColor=0xe7f606,
    shape=OCTAGON, scale=3, name="Photosynthesizer", points=50, durability=0.5, density=0.15,
    replicateTime=0.85, sort=110041, generatorCapacityPerSec=200, powerCapacity=1200, capacity=600},