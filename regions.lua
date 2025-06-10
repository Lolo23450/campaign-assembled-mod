-- level/world generator configuration file, type 4

{
    totalSize = 300000,          -- radius of whole map
    color = 0x404040,
 
    fleets = { { 30359, { { 0, 5000 }, {1, 300} } },
       { 20359, { { 0.5, 0}, { 0.51, 3000 }, {1, 500}}},
       { 40359, { { 0.5, 0}, {0.7, 2000}, {0.9, 0} } } },
 
    ambient = { 2, 1, 0 },
    ident = 2,
 
    subregions = {
 
       -- this region generates the default player faction areas
       -- the map is generated and saved in sectors, each sector is a 6000 unit wide square
       {
          ident = 200,              -- unique identifier for this region (goes in generated map save files)
          count = 8,               -- generate 8 of these subregions
          radius = { 0.1, 0.15 },  -- each is 10-15% of the radius of the whole map
          position = { 0.1, 1.0 }, -- place between 10-100% of the way to edge of map
          fleets = { { 80359, { { 0, 3500}, {1, 1000} } } }, -- fill with faction 8 ships, each sector has 3500P at center, 1000P at edge
          fleetCount = { { 4, 8 } }                      -- each sector has 4-8 ships
          ambient = { 0 },                               -- plant type (0, 1, 2) are (green, blue, pink)
          -- type = 0 (default). type 0 is voronoi regions, type 1 are splats, type 2 are circles
       }
 
       {
          ident = 201,
          count = 1,
          radius = 0.2,
          position = 0,
          fleets = { { 110359, { { 0, 22000}, {1, 6000} } } },
          ambient = { 2 },
          asteroidSize = { 10, 100 },
          asteroidDensity = { 0.0, 0.2 },
       },
 
       {  
          ident = 202,
          count = 5,
          color = 0xff5000,
          radius = {0.1, 0.1},
          type = 1,
          position = {0.2, 0.8},
          fleets = { { 30359, { {0, 10000}, {1, 3000} } } },
          
          ambient = { 0 },
       },
       {  
          ident = 203,
          count = 6,
          radius = 0.1,
          position = {0.2, 0.8},
          fleets = { { 40359, { {0, 4000}, {1, 2000} } } },
          unique  = { { "40359_pstation02" }, { "40359_pstation01" } },
          ambient = { 1 },
          fortress = { "40359_platform0", "40359_platform1" },
          fortressCount = { 3, 4 },
          fortressRadius = { 600, 700 },
       },
       {  
          ident = 204,
          count = 18,
          radius = 0.04,
          position = {0.2, 0.8},
          fleets = { { 7, { {0, 4000}, {1, 2000} } } },
          type = 1,
          ambient = { 1 },
       },
       { 
          ident = 205,
          count = 6,
          color = 0xa0f000,
          radius = {0.05, 0.1},
          position = {0.15, 0.3},
          type = 2,
          fleets = { { 150359, { {0, 20000}, {1, 10000} } } },
          fleetCount = { { 3, 5 }, { 5, 10 } },
          fleetFraction = 0.6,
          ambient = { 0 },
          fortress = { "15_platform0", "15_platform1", "15_platform2" },
          fortressCount = { 1, 6 },
          fortressRadius = { 500, 700 },
       },
       {
          ident = 206,
          count = 4,
          radius = {0.1, 0.15},
          position = {0.3, 0.5},
          fleets = { { 120359, { {0, 5000}, {1, 5000} } } },
          unique  = { { "12_researchcenter1" } },
          fleetFraction = 0.6,
          ambient = { -1 },
       },
       {
          ident = 207,
          radius = {0.1, 0.15},
          count = 2,
          position = {0.15, 0.6},
          asteroidFlags = SQUARE,
          fleets = { { 60359, { {0, 1000}, {1, 8000} } } },
          fleetFraction = 0.8,
          ambient = { -1 },
       },
       {
          ident = 208,
          count = 4,
          radius = { 0.075, 0.085 },
          position = { 0.3, 0.9 },
          fleets = { { 20359, { { 0, 1500}, {1, 600} } } },
          ambient = { 0 },
          fortressCount = { 1, 3 },
       },
       {
          ident = 209,
          count = 3,
          radius = { 0.12, 0.14 },
          position = { 0.2, 0.4 },
          fleets = { { 20359, { { 0, 8000}, {1, 4000} } } },
          ambient = { 0 },
          fortressCount = { 4, 5 },
       },
       {
          ident = 210,
          count = 6,
          radius = { 0.1, 0.15 },
          position = { 0.3, 0.7 },
          fleets = { { 130359, { { 0, 4000}, {1, 2000} } } },
          fleetCount = { { 15, 20  } },
          ambient = { -1 },
       },
       {
          ident = 211,
          count = 10,
          color = 0xcc009f
          radius = { 0.07, 0.1 },
          position = { 0.05, 0.8 },
          fleets = { { 100359, { { 0, 7000}, {1, 2000} } } },
          ambient = { 0 },
       },
       {
          ident = 212,
          color = 0xff0000,
          count = 10,
          radius = 0.04,
          position = { 0.1, 0.8 },
          type = 2,
          asteroidSize = { 3, 10 },
          asteroidDensity = { 0.2, 0.3 },
          asteroidFlags = EXPLOSIVE|TRIANGLE,
       },
       {
          ident = 213,
          count = 10,
          radius = 0.1,
          position = { 0.5, 1.0 },
          fleets = { { 13, { { 0, 1500}, {1, 600} } } },
          type = 2,
          asteroidDensity = { 0 },
       }
    }
 }
 