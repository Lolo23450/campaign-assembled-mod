-- ==========================================
-- COMMAND & CONTROL BLOCKS
-- ==========================================

{
  400, 
  features=COMMAND|GENERATOR|ASSEMBLER|TRACTOR, 
  capacity=100, 
  fillColor=0x71965, fillColor1=0x384098, lineColor=0x40206b, 
  group=40359, 
  shape=COMMAND, 
  name="CommandControl",
  points=10, 
  durability=0.5, 
  density=0.15, 
  powerCapacity=120, 
  generatorCapacityPerSec=40,
  sort=-99990
},

-- ==========================================
-- POWER GENERATION BLOCKS
-- ==========================================

{
  401, 
  features=PALETTE|GENERATOR, 
  capacity=100, 
  fillColor=0x384098, fillColor1=0xa03000, lineColor=0x40206b, 
  group=40359, 
  name="Generator", 
  points=30, 
  durability=0.5, 
  density=0.15,
  powerCapacity=300, 
  generatorCapacityPerSec=100, 
  sort=20030
},

{
  416, 
  features=PALETTE|PHOTOSYNTH, 
  capacity=100, 
  fillColor=0x556699, fillColor1=0x71965, lineColor=0x10104b, 
  group=40359, 
  scale=2, 
  name="Solar Array", 
  points=10, 
  durability=0.5, density=0.15, 
  photosynthPerSec=0.5, 
  sort=230005
},

{
  417, 
  features=PALETTE|PHOTOSYNTH, 
  capacity=100, 
  fillColor=0x556699, fillColor1=0x71965, lineColor=0x10104b, 
  group=40359, 
  scale=3, 
  name="Solar Array", 
  points=15, 
  durability=0.5, density=0.15, 
  photosynthPerSec=0.75, 
  sort=230008
},

-- ==========================================
-- STRUCTURAL BLOCKS
-- ==========================================

-- Basic Struts
{
  402, 
  growRate=16.25, 
  fillColor=0x30203b, fillColor1=0x10104b, lineColor=0x384098,
  group=40359, 
  shape=RIGHT_TRI, 
  name="Strut", 
  sort=-10000
},

{
  426, 
  growRate=16.25, 
  fillColor=0x30203b, fillColor1=0x10104b, lineColor=0x384098,
  group=40359, 
  shape=RECT, 
  scale=2, 
  name="Strut", 
  sort=-10000
},

{
  428, 
  growRate=16.25, 
  fillColor=0x30203b, fillColor1=0x10104b, lineColor=0x384098,
  group=40359, 
  shape=RECT_LONG,  features=INVISIBLE|PALETTE,
  name="Strut", 
  sort=-10000
  shroud={
    --Beams
    {size={10, 0.5}, offset={-2.5, 5, 0.01}},
    {size={10, 0.5}, offset={-2.5, -5, 0.01}}
    --4 Squares at each end vertex of the block
    {size={1, 1}, offset={-3, 5, 0.02}},
    {size={1, 1}, offset={-3, -5, 0.02}},
    {size={1, 1}, offset={7, 5, 0.02}},
    {size={1, 1}, offset={7, -5, 0.02}}
    --Diagonal Beams
    {size={14, 0.25}, angle=pi/4 offset={-2.5, -5, -0.01}},
  }
},

{
  455, 
  growRate=16.25, 
  fillColor=0x30203b, fillColor1=0x10104b, lineColor=0x384098,
  group=40359, 
  shape=RECT_LONG,  features=INVISIBLE|PALETTE,
  name="Strut", 
  sort=-10000
  shroud={
    --Beams
    {size={10, 0.5}, offset={-2.5, 5, 0.01}},
    {size={10, 0.5}, offset={-2.5, -5, 0.01}}
    --4 Squares at each end vertex of the block
    {size={1, 1}, offset={-3, 5, 0.02}},
    {size={1, 1}, offset={-3, -5, 0.02}},
    {size={1, 1}, offset={7, 5, 0.02}},
    {size={1, 1}, offset={7, -5, 0.02}}
    --Diagonal Beams
    {size={14, 0.25}, angle=pi/-4 offset={-2.5, 5, -0.01}},
  }
},

{
  429, 
  growRate=16.25, 
  fillColor=0x30203b, fillColor1=0x10104b, lineColor=0x384098,
  group=40359, 
  shape=RECT_LONG, 
  scale=2, 
  name="Strut", 
  sort=-10000
},

{
  430, 
  growRate=16.25, 
  fillColor=0x30203b, fillColor1=0x10104b, lineColor=0x384098,
  group=40359, 
  shape=RECT_LONG, 
  scale=3, 
  name="Strut", 
  sort=-10000
},

{
  432, 
  growRate=16.25, 
  fillColor=0x30203b, fillColor1=0x10104b, lineColor=0x384098,
  group=40359, 
  shape=RIGHT_TRI, 
  name="Strut", 
  sort=-10000
},

{
  433, 
  growRate=16.25, 
  fillColor=0x30203b, fillColor1=0x10104b, lineColor=0x384098,
  group=40359, 
  shape=RIGHT_TRI, 
  scale=2, 
  name="Strut", 
  sort=-10000
},

{
  434, 
  growRate=16.25, 
  fillColor=0x30203b, fillColor1=0x10104b, lineColor=0x384098,
  group=40359, 
  shape=RIGHT_TRI, 
  scale=3, 
  name="Strut", 
  sort=-10000
},

{
  456, 
  growRate=16.25, 
  fillColor=0x30203b, fillColor1=0x10104b, lineColor=0x384098, features=INVISIBLE|PALETTE,
  group=40359, 
  shape=RECT, 
  scale=4, 
  name="Strut", 
  sort=-10000
  shroud={
    --Beams
      {size={0.5, 3.2},offset={1, 0, -0.01}, taper=1},
      {size={20, 0.5},offset={-8.5, 3, 0.01}, taper=1},
      {size={20, 0.5},offset={-8.5, -3, 0.01}, taper=1},
    --4 Squares at each end vertex of the block
      {size={1, 1}, offset={-9, 3, 0.02}},
      {size={1, 1}, offset={-9, -3, 0.02}},
      {size={1, 1}, offset={11, 3, 0.02}},
      {size={1, 1}, offset={11, -3, 0.02}}
  },
},

-- Resource Banks
{
  420, 
  capacity=1000, 
  growRate=16.25, 
  fillColor=0x74480, fillColor1=0x71965, lineColor=0x10104b,
  group=40359, 
  shape=RIGHT_TRI, 
  scale=4, 
  name="RBank", 
  sort=-10000
},

{
  451, 
  capacity=600, 
  growRate=16.25, 
  fillColor=0x74480, fillColor1=0x71965, lineColor=0x10104b,
  group=40359, 
  shape=RIGHT_TRI, 
  scale=3, 
  name="RBank", 
  sort=-10000
},

{
  452, 
  capacity=300, 
  growRate=16.25, 
  fillColor=0x74480, fillColor1=0x71965, lineColor=0x10104b,
  group=40359, 
  shape=RIGHT_TRI, 
  scale=2, 
  name="RBank", 
  sort=-10000
},

{
  457, 
  capacity=1000, 
  growRate=16.25, 
  fillColor=0x74480, fillColor1=0x71965, lineColor=0x10104b, features=PALETTE
  group=40359, 
  shape=40359001, 
  scale=1, 
  name="RBank", 
  sort=-10000
},

-- ==========================================
-- PROPULSION BLOCKS
-- ==========================================

{
  403, 
  features=PALETTE|THRUSTER, 
  capacity=0.1, 
  fillColor=0x800000, fillColor1=0xa03000, lineColor=0xb00000, 
  thrusterColor=0x90800000, thrusterColor1=0x90804040, 
  group=40359,
  shape=DISH_THRUSTER, 
  name="Thruster", 
  points=3, 
  durability=3, 
  density=0.15, 
  thrusterForce=25000, 
  thrusterBoost=2.5,
  sort=10003
},

{
  404, 
  features=PALETTE|THRUSTER, 
  capacity=0.1, 
  fillColor=0x800000, fillColor1=0xa03000, lineColor=0xb00000, 
  thrusterColor=0x90800000, thrusterColor1=0x90804040, 
  group=40359,
  shape=DISH_THRUSTER, 
  scale=2, 
  name="Thruster", 
  points=5, 
  durability=2, 
  density=0.15,
  thrusterForce=40000, 
  thrusterBoost=2.5, 
  sort=10005
},

{
  405, 
  features=PALETTE|THRUSTER, 
  capacity=0.1, 
  fillColor=0x800000, fillColor1=0xa03000, lineColor=0xb00000, 
  thrusterColor=0x90800000, thrusterColor1=0x90804040, 
  group=40359,
  shape=DISH_THRUSTER, 
  scale=3, 
  name="Thruster", 
  points=8, 
  durability=2, 
  density=0.15,
  thrusterForce=100000, 
  thrusterBoost=2.5, 
  sort=10008
},

{
  450, 
  features=PALETTE|THRUSTER, 
  capacity=0.1, 
  fillColor=0x800000, fillColor1=0xa03000, lineColor=0xb00000, 
  thrusterColor=0x90800000, thrusterColor1=0x90804040, 
  group=40359,
  shape=DISH_THRUSTER, 
  scale=4, 
  name="Thruster", 
  points=12, 
  durability=2, 
  density=0.15,
  thrusterForce=200000, 
  thrusterBoost=2.5, 
  sort=10008
},

-- ==========================================
-- WEAPON BLOCKS
-- ==========================================

-- Base Cannons
{
  406, 
  features=PALETTE|CANNON, 
  fillColor=0x40206b, fillColor1=8267, lineColor=0x71965, 
  cannon={
    roundsPerSec=2,
    muzzleVel=600, 
    power=11, 
    damage=30, 
    range=400, 
    color=0x769f5
  }, 
  group=40359, 
  shape=RECT_CANNON,
  name="CannonBase", 
  points=1, 
  durability=0.5, 
  density=0.15, 
  blurb="Modular plasma cannon",
  sort=60001
},

{
  443, 
  features=PALETTE|CANNON, 
  fillColor=0x40206b, fillColor1=8267, lineColor=0x71965, 
  cannon={
    roundsPerSec=2.5,
    muzzleVel=500, 
    power=8, 
    damage=28, 
    range=400, 
    spread=0.12, 
    color=0x769f5
  }, 
  group=40359, 
  shape=RECT_CANNON,
  name="SpreadBase", 
  points=2, 
  durability=0.5, 
  density=0.15, 
  blurb="Modular plasma spread cannon",
  sort=60001
},

{
  444, 
  features=PALETTE|CANNON, 
  fillColor=0x40206b, fillColor1=8267, lineColor=0x71965, 
  cannon={
    roundsPerSec=10,
    muzzleVel=700, 
    power=1, 
    damage=2, 
    range=600, 
    spread=0.23, 
    roundsPerBurst=10, 
    burstyness=0.99, 
    color=0x769f5
  }, 
  group=40359, 
  shape=RECT_CANNON,
  name="ShotBase", 
  points=80, 
  durability=0.5, 
  density=0.15, 
  blurb="Modular plasma shotgun cannon",
  sort=60001
},

{
  445, 
  features=PALETTE|CANNON|CHARGING, 
  fillColor=0x40206b, fillColor1=8267, lineColor=0x71965, 
  cannon={
    roundsPerSec=4,
    muzzleVel=900, 
    power=60, 
    damage=1000, 
    range=1200, 
    spread=0.04, 
    color=0x769f5
  },
  chargeMin=0.75, 
  chargeMaxTime=3, 
  group=40359, 
  shape=RECT_CANNON,
  name="ChargeBase", 
  points=127, 
  durability=0.5, 
  density=0.15, 
  blurb="Modular plasma charge cannon",
  sort=60001
},

-- Weapon Amplifiers
{
  407, 
  features=PALETTE|CANNON_BOOST, 
  fillColor=0x74480, fillColor1=8267, lineColor=0x71965,
  group=40359, 
  shape=DISH_WEAPON, 
  name="DamageAmplifier", 
  points=9, 
  durability=0.5, density=0.15, 
  blurb="Increases damage of attached weapon",
  shroud={
    {size={1, 1.5}, offset={-0.5, 0, 0}}
  }, 
  boost={
    power={1.02, 0},
    damage={1, 30}
  }, 
  sort=150005
},

{
  408, 
  features=PALETTE|CANNON_BOOST, 
  fillColor=0x74480, fillColor1=8267, lineColor=0x71965,
  group=40359, 
  shape=DISH_WEAPON, 
  scale=2, 
  name="DamageAmplifier", 
  points=16, 
  durability=0.5, density=0.15, 
  blurb="Significantly increases damage of attached weapon",
  shroud={
    {size={1.3, 3}, offset={1.62, 0, 0}},
    {size={2, 1.5}, offset={1.5, 0, 0}}
  },
  boost={
    power={1.04, 0}, 
    damage={1, 60}
  }, 
  sort=150008
},

{
  409, 
  features=PALETTE|CANNON_BOOST, 
  fillColor=0x74480, fillColor1=8267, lineColor=0x71965,
  group=40359, 
  shape=RECT_CANNON_BOOST, 
  name="RangeAmplifier", 
  points=12, 
  durability=0.5, density=0.15, 
  blurb="Increases range and projectile speed of attached weapon",
  shroud={
    {size={1.3, 2}, offset={-1.5, 0, 0}},
    {size={1.3, 2}, offset={1.5, 0, 0}},
    {size={2, 1.5}, offset={3.7, 0, 0}},
    {size={2, 1.5}, offset={-4.3, 0, 0}}
  },
  boost={
    muzzleVel={1, 100}, 
    power={1, 10}, 
    range={1, 400}
  }, 
  sort=150004
},

{
  410, 
  features=PALETTE|CANNON_BOOST, 
  fillColor=0x74480, fillColor1=8267, lineColor=0x71965,
  group=40359, 
  shape=ISOTRI_25_WEAPON, 
  name="RateAmplifier", 
  points=15, 
  durability=0.5, density=0.15, 
  blurb="Increases rate of fire of attached weapon", 
  boost={
    roundsPerSec={2, 0},
    power={1.2, 0}
  }, 
  sort=150006
},

{
  419, 
  features=PALETTE|CANNON_BOOST, 
  fillColor=0x74480, fillColor1=8267, lineColor=0x71965,
  group=40359, 
  shape=DISH_WEAPON, 
  scale=3, 
  name="VelocityAmplifier", 
  points=24, 
  durability=0.5, density=0.15, 
  blurb="Significantly increases projectile speed of attached weapon",
  boost={
    roundsPerSec={1.5, 0}, 
    muzzleVel={1, 200}, 
    power={1.1, 0}
  }, 
  sort=150005
},

{
  449, 
  features=PALETTE|CANNON_BOOST, 
  fillColor=0x74480, fillColor1=8267, lineColor=0x71965,
  group=40359, 
  shape=DISH_WEAPON, 
  scale=2, 
  name="RateAmplifier", 
  points=11, 
  durability=0.5, density=0.15, 
  blurb="Increases rate of fire of attached weapon", 
  boost={
    roundsPerSec={1.25, 0},
    power={1.4, 0}
  }, 
  sort=150006
},

-- Turret Lasers
{
  413, 
  features=PALETTE|TURRET|LASER|AUTOFIRE, 
  fillColor=0x40206b, fillColor1=0x384098, lineColor=0x71965,
  laser={
    power=3, 
    width=3, 
    damage=70, 
    color=0x800769f5, 
    range=500
  }, 
  group=40359, 
  name="Defense Laser",
  points=15, 
  durability=0.5, 
  density=0.15, 
  turretSpeed=20, 
  sort=80015, 
  barrelTaper=0
},

{
  414, 
  features=PALETTE|TURRET|LASER|AUTOFIRE, 
  fillColor=0x40206b, fillColor1=0x384098, lineColor=0x71965,
  laser={
    power=17, 
    width=5, 
    damage=250, 
    color=0x800769f5, 
    range=800
  }, 
  group=40359, 
  scale=2,
  name="Defense Laser", 
  points=74, 
  durability=0.5, 
  density=0.15, 
  turretSpeed=3,
  sort=80074, 
  barrelTaper=0
},

{
  453, 
  features=PALETTE|TURRET|LASER|AUTOFIRE, 
  fillColor=0x40206b, fillColor1=0x384098, lineColor=0x71965,
  laser={
    power=17, 
    width=5, 
    damage=400, 
    color=0x800769f5, 
    range=800
  }, 
  group=40359, 
  scale=3,
  name="Defense Laser", 
  points=120, 
  durability=0.5, 
  density=0.15, 
  turretSpeed=3,
  sort=80074, 
  barrelTaper=0
},

-- ==========================================
-- DEFENSIVE BLOCKS
-- ==========================================

{
  411, 
  features=PALETTE|SHIELD, 
  growRate=0.812, 
  fillColor=0x556699, fillColor1=0x558888, lineColor=0x69e81d, 
  shield={
    strength=600, 
    regen=150, 
    radius=42, 
    color=0x19171b29,
    lineColor=0xc171b29, 
    damagedColor=0x4c3c476b
  }, 
  group=40359, 
  name="Protector", 
  points=30,
  durability=0.5, 
  density=0.15, 
  sort=90030
},

{
  415, 
  features=PALETTE|SHIELD, 
  growRate=0.812, 
  fillColor=0x556699, fillColor1=0x558888, lineColor=0x69e81d, 
  shield={
    strength=2500, 
    regen=400, 
    radius=120, 
    color=0x19171b29,
    lineColor=0xc171b29, 
    damagedColor=0x4c3c476b
  }, 
  group=40359, 
  scale=2, 
  name="Protector",
  points=200, 
  durability=0.5, 
  density=0.15, 
  sort=90200
},

-- ==========================================
-- UTILITY BLOCKS
-- ==========================================

-- Harvesters & Factories
{
  441, 
  features=PALETTE|TRACTOR, 
  capacity=200, 
  fillColor=0x74480, fillColor1=0x71965, lineColor=0x10104b,
  group=40359, 
  scale=3, 
  name="Harvester", 
  points=10, 
  durability=0.5, density=0.2, 
  tractorRange=800, 
  sort=260105
},

{
  418, 
  features=PALETTE|TRACTOR|FACTORY, 
  capacity=300, 
  fillColor=8267, fillColor1=0x800000, lineColor=0x10104b, 
  group=40359, 
  scale=3, 
  name="Factory", 
  points=105, 
  durability=0.5, density=0.15, 
  tractorRange=700, 
  sort=260105
},

{
  454, 
  features=PALETTE|TRACTOR|FACTORY, 
  capacity=400, 
  fillColor=8267, fillColor1=0x800000, lineColor=0x10104b, 
  group=40359, 
  scale=4, 
  name="Factory", 
  points=125, 
  durability=0.5, density=0.15, 
  tractorRange=900, 
  sort=260105
},

-- Special Utility
{
  440, 
  features=PALETTE|EXPLODE|ACTIVATE, 
  explodeFaction=4, 
  fillColor=0x30203b, fillColor1=0xb00000, lineColor=0x384098, 
  group=40359, 
  shape=RIGHT_TRI, 
  name="Decoupler", 
  points=2, 
  durability=0.5, density=0.15, 
  blurb="Detaches a section of your ship", 
  sort=570002
},

-- ==========================================
-- DRONE LAUNCHERS
-- ==========================================

{
  412, 
  features=PALETTE|LAUNCHER, 
  fillColor=0x20201b, fillColor1=8267, lineColor=0x69e81d,
  replicateBlock={
    command={}, 
    lifetime=10, 
    features=PALETTE|COMMAND|THRUSTER|GENERATOR|CANNON|TORQUER|FREERES|NOCLIP_ALLY,
    capacity=100, 
    fillColor=0x69e81d, fillColor1=0x42b573, lineColor=0x769f5, 
    thrusterColor=0x90800000, thrusterColor1=0x90804040, 
    cannon={
      roundsPerSec=5, 
      roundsPerBurst=4, 
      burstyness=0.3,
      muzzleVel=800, 
      spread=0.05, 
      power=8, 
      damage=15, 
      range=700, 
      color=0x769f5
    },
    group=40359, 
    shape=MISSILE, 
    points=3, 
    durability=0.5, 
    density=0.15, 
    powerCapacity=120,
    thrusterForce=4000, 
    torquerTorque=4000, 
    generatorCapacityPerSec=40, 
    sort=-99997
  },
  group=40359, 
  shape=RECT_LAUNCHER, 
  name="Drone Launcher", 
  points=41, 
  durability=0.5, density=0.15, 
  launcherPower=200, 
  sort=110041
},

{
  421, 
  features=PALETTE|LAUNCHER, 
  fillColor=0x20201b, fillColor1=8267, lineColor=0x69e81d,
  replicateBlock={
    command={}, 
    lifetime=20, 
    features=PALETTE|COMMAND|THRUSTER|GENERATOR|TORQUER|LAUNCHER|FREERES|NOCLIP_ALLY,
    capacity=100, 
    fillColor=0x69e81d, fillColor1=0x42b573, lineColor=0x769f5, 
    thrusterColor=0x90ece1c6, thrusterColor1=0x90ececec, 
    replicateBlock={
      lifetime=2.5, 
      features=PALETTE|THRUSTER|EXPLODE, 
      capacity=0.1, 
      fillColor=0x69e81d, fillColor1=0x42b573, lineColor=0x769f5, 
      thrusterColor=0x90800000, thrusterColor1=0x90804040,
      group=40359, 
      shape=MISSILE, 
      points=2, 
      durability=0.5, 
      density=0.15, 
      thrusterForce=3000,
      explodeDamage=25, 
      explodeRadius=10, 
      sort=120002
    }, 
    group=40359, 
    shape=MISSILE_LAUNCHER,
    scale=2, 
    points=20, 
    durability=0.5, 
    density=0.15, 
    powerCapacity=120, 
    thrusterForce=4000,
    torquerTorque=4000, 
    replicateTime=0.5, 
    generatorCapacityPerSec=40, 
    launcherSpeed=500,
    sort=-99980
  }, 
  group=40359, 
  shape=RECT_LAUNCHER1, 
  name="Rocket Drone Launcher", 
  points=205,
  durability=0.5, 
  density=0.15, 
  replicateTime=1.5, 
  launcherPower=400, 
  sort=110205
},

{
  442, 
  features=PALETTE|LAUNCHER, 
  fillColor=0x20201b, fillColor1=8267, lineColor=0x69e81d,
  replicateBlock={
    command={}, 
    lifetime=10, 
    features=PALETTE|COMMAND|THRUSTER|GENERATOR|CANNON|TORQUER|FREERES|NOCLIP_ALLY,
    capacity=100, 
    fillColor=0x69e81d, fillColor1=0x42b573, lineColor=0x769f5, 
    thrusterColor=0x90800000, thrusterColor1=0x90804040, 
    cannon={
      roundsPerSec=1, 
      roundsPerBurst=4, 
      burstyness=0.4,
      muzzleVel=1700, 
      spread=0.03, 
      power=8, 
      damage=50, 
      range=2600, 
      color=0x769f5
    },
    group=40359, 
    shape=MISSILE, 
    points=3, 
    durability=0.5, 
    density=0.4, 
    powerCapacity=120,
    thrusterForce=8000, 
    torquerTorque=12000, 
    generatorCapacityPerSec=40, 
    scale=2, 
    sort=-99997
  },
  group=40359, 
  shape=RECT_LAUNCHER, 
  name="Ranged Drone Launcher", 
  points=67, 
  durability=0.5, density=0.15, 
  launcherPower=200, 
  scale=2, 
  sort=110041
},