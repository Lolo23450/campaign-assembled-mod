
    {20000, features=NOPALETTE|COMMAND|GENERATOR|ASSEMBLER|TRACTOR, capacity=100, fillColor=0x69a95,
      fillColor1=0x66a95, lineColor=0xaef300, group=20359, shape=COMMAND, name="Command Module",
      points=10, durability=0.5, density=0.2, blurb="The core of every ship", powerCapacity=300,
      generatorCapacityPerSec=100, sort=-99990},
    {20001, features=PALETTE|INTLINES, capacity=50, growRate=16.25, fillColor=0x202020, fillColor1=0x404040,
      lineColor=0xaef300, group=20359, shape=OCTAGON, name="Resource Containment Unit",
      blurb="Resource storage unit", sort=480000},
    {20002, features=PALETTE|THRUSTER, capacity=0.1, fillColor=0xc4e61, fillColor1=0x2c3e41, lineColor=0x70a000,
      thrusterColor=0x9095aeac, thrusterColor1=0x9075ceac, group=20359, shape=DISH_THRUSTER,
      scale=2, name="Thruster", points=4, durability=0.5, density=0.15, blurb="Produces a small amount of thrust",
      thrusterForce=30000, sort=10004},
    {20003, features=PALETTE|THRUSTER, capacity=0.1, fillColor=0xc4e61, fillColor1=0x2c3e41, lineColor=0x70a000,
      thrusterColor=0x9095aeac, thrusterColor1=0x9075ceac, group=20359, shape=DISH_THRUSTER,
      scale=3, name="Thruster", points=5, durability=0.5, density=0.15, blurb="Provides a medium amount of thrust",
      thrusterForce=60000, sort=10005},
    {20004, features=PALETTE|THRUSTER, capacity=0.1, fillColor=0xc4e61, fillColor1=0x2c3e41, lineColor=0x70a000,
      thrusterColor=0x9095aeac, thrusterColor1=0x9075ceac, group=20359, shape=DISH_THRUSTER,
      scale=4, name="Thruster", points=8, durability=0.5, density=0.15, blurb="Provides a large amount of thrust",
      thrusterForce=120000, sort=10007},
    {20005, features=PALETTE|GENERATOR, capacity=100, fillColor=0x2e535e, fillColor1=0x4e535e,
      lineColor=0xaef300, group=20359, name="Generator", points=36, durability=0.5, density=0.15,
      blurb="Produces energy to power a ship's weapons. More generators, more energy",
      powerCapacity=360, generatorCapacityPerSec=120, sort=20036},
    {20007, features=PALETTE|GENERATOR, capacity=100, fillColor=0x2e535e, fillColor1=0x4e535e,
      lineColor=0xaef300, group=20359, scale=3, name="Generator", points=150, durability=0.5,
      density=0.15, blurb="Produces energy to power a ship's weapons. More generators, more energy",
      powerCapacity=1500, generatorCapacityPerSec=500, sort=20150},
    {20008, features=PALETTE|INTLINES, capacity=200, growRate=16.25, fillColor=0x202020, fillColor1=0x404040,
      lineColor=0xaef300, group=20359, shape=OCTAGON, scale=2, name="Resource Containment Unit",
      blurb="Resource storage unit", sort=480000},
    {20013, capacity=50, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, shape=ADAPTER, name="Adapter", blurb="A basic building block", sort=-10000},
    {20014, capacity=50, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, shape=ADAPTER, scale=2, name="Adapter", blurb="A basic building block",
      sort=-10000},
    {20015, features=PALETTE|TURRET|CANNON|NOICON, fillColor=0x104a99, fillColor1=0x4f8e5c, lineColor=0xaef300,
      cannon={roundsPerSec=1.2, explosive=ENABLED, muzzleVel=500, power=200, damage=360,
        range=1000, explodeRadius=40, color=0xecfe00}, group=20359, shape=OCTAGON, scale=3,
      name="Heavy Turret", points=386, durability=0.5, density=0.15, turretSpeed=2, barrelSize={40,15},
      sort=600386, barrelTaper=0.8, shroud={{size={12, 20}, offset={-6, 0, 0}, taper=-0.75},
        {size={14, 20}, offset={6, 0, 0}, taper=0.75},
        {size={8, 8}, offset={4, 0, 0}, taper=-0.65},
        {size={12, 8}, offset={12, 0, 0}, taper=0.65}}},
    {20017, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, shape=RECT, scale=2, name="Armor", durability=4, density=0.3, blurb="Extra durable, 1×½ units",
      sort=-10000},
    {20018, features=PALETTE|TURRET|CANNON, fillColor=0x104a99, fillColor1=0x4f8e5c, lineColor=0xaef300,
      cannon={roundsPerSec=6, muzzleVel=800, power=5, damage=12, range=500, color=0xecfe00},
       group=20359, name="RK-12 Standard", points=4, durability=0.5, density=0.15, blurb="Basic light cannon. Its consistent rate of fire and low energy use make it a reliable weapon",
      sort=60004, shroud={
        {size={3, 3.5},offset={0, 0, 0}, taper=1.2}
        {size={5, 2.5},offset={-1, 0, 0}, taper=1.3}
        {size={2, 3},offset={7, 0, 0}, taper=-1.1}
        {size={2, 2.5},offset={9, 0, 0}, taper=1.1}
      }
    },
    {20019, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, name="Hull", sort=-10000},
    {20020, features=PALETTE|TURRET|CANNON, fillColor=0x104a99, fillColor1=0x4f8e5c, lineColor=0xaef300,
      cannon={roundsPerSec=1.8, explosive=FINAL, muzzleVel=400, power=60, damage=100,
        range=1200, explodeRadius=30, color=0xecfe00}, group=20359, scale=2, name="MGVD-4 Bolshevik",
      points=165, durability=0.5, density=0.15, blurb="Fires numerous but slow explosive rounds, akin to a grenade launcher",
      sort=60165,shroud={
        {size={3, 5.5},offset={0, 0, 0}, taper=1.2}
        {size={5, 4},offset={-1, 0, 0}, taper=1.3}
        {size={3, 5.5},offset={6, 0, 0}, taper=-1.1}
        {size={2, 5},offset={9, 0, 0}, taper=1.1}
        {size={3, 5.5},offset={11, 0, 0}, taper=-1.1}
      }
    },
    {20021, features=PALETTE|TURRET|CANNON, fillColor=0x104a99, fillColor1=0x4f8e5c, lineColor=0xaef300,
      cannon={roundsPerSec=3.2, roundsPerBurst=3, burstyness=0.7, muzzleVel=600, power=15,
        damage=35, range=1200, color=0xecfe00}, group=20359, scale=2, name="AF-75 Spitter",
      points=12, durability=0.5, density=0.15, blurb="A powerful burst-fire turret that excels at medium range",
      sort=60010,shroud={
        {size={3, 4},offset={0, 0, 0}, taper=1.2}
        {size={5, 3},offset={-1, 0, 0}, taper=1.3}
        {size={3, 2},offset={6, 0, 0}, taper=-1.1}
        {size={2, 1.75},offset={9, 0, 0}, taper=1.1}
        {size={3, 2.5},offset={11, 0, 0}, taper=-1.1}
      }
    },
    {20023, features=PALETTE|TURRET|CANNON, fillColor=0x104a99, fillColor1=0x4f8e5c, lineColor=0xaef300,
      cannon={roundsPerSec=10, muzzleVel=1100, spread=0.1, rangeStdDev=20, power=5,
        damage=16, range=900, color=0xecfe00}, group=20359, name="Minigun", points=13, durability=0.5,
      density=0.15, sort=60014, barrelCount=3, barrelSize=(8,0.8),shroud={
        {size={3, 3.8},offset={0, 0, 0}, taper=1.2}
        {size={5, 2.8},offset={-1, 0, 0}, taper=1.3}
        {size={2, 3.2},offset={7, 0, 0}, taper=-1.1}
        {size={2, 2.5},offset={9, 0, 0}, taper=-1.1}
        {size={1, 2.5},offset={11, 0, 0}, taper=1.1}
      },
    },
    {20024, features=PALETTE|TURRET|CANNON|AUTOFIRE, fillColor=0x104a99, fillColor1=0x69989d,
      lineColor=0xaef300, cannon={roundsPerSec=12, muzzleVel=1000, spread=0.15, rangeStdDev=10,
        power=2, damage=8, range=500, color=0xecfe00}, group=20359, name="Swatter", points=5,
      durability=0.5, density=0.15, turretSpeed=20, sort=80004, barrelCount=2, barrelSize=(8,1), shroud={
        {size={3, 3.8},offset={0, 0, 0}, taper=1.2}
        {size={5, 2.8},offset={-1, 0, 0}, taper=1.3}
        {size={1, 2.8},offset={4, 0, 0}, taper=1}
        {size={1, 2},offset={-2, 0, 0}, taper=1}
        {size={2, 1.2},offset={7, 1.5, 0}, taper=-1.1}
        {size={2, 1},offset={9, 1.5, 0}, taper=-1.1}
        {size={1, 1},offset={11, 1.5, 0}, taper=1.1}
        {size={2, 1.2},offset={7, -1.5, 0}, taper=-1.1}
        {size={2, 1},offset={9, -1.5, 0}, taper=-1.1}
        {size={1, 1},offset={11, -1.5, 0}, taper=1.1}
      }
    },

    {20026, features=PALETTE|CANNON, fillColor=0x99a80d, fillColor1=0x878801, lineColor=0xaef300,
      cannon={roundsPerSec=32, roundsPerBurst=16, burstyness=0.94, muzzleVel=1000, spread=0.16,
        rangeStdDev=10, power=3, damage=20, range=600, color=0xecfe00}, group=20359, shape=CANNON2,
      scale=2, name="SG-9 Scattergun", points=5, durability=0.5, density=0.15, blurb="Anti-ship shotgun",
      sort=60005},
    {20027, features=PALETTE|TURRET|CANNON, fillColor=0x104a99, fillColor1=0x4f8e5c, lineColor=0xaef300,
      cannon={roundsPerSec=0.5, muzzleVel=1100, power=90, damage=100, range=3000, color=0xecfe00},
       group=20359, scale=2, name="HC2", points=33, durability=0.5, density=0.15, sort=60033,
      shroud={{size={3, 4}, taper=-0.7}, {size={5, 4}, offset={3, 0, 0}, taper=0.7}}},
    {20030, features=PALETTE|TURRET|CANNON, fillColor=0x104a99, fillColor1=0x4f8e5c, lineColor=0xaef300,
      cannon={roundsPerSec=1.4, muzzleVel=1200, power=32, damage=27, range=1200, color=0xecfe00},
       group=20359, scale=2, name="MC2", points=28, durability=0.5, density=0.15, sort=60023,
       shroud={{size={3, 3}, taper=-0.7}, {size={5, 3}, offset={3, 0, 0}, taper=0.7}}},
    {20033, features=PALETTE|CANNON, fillColor=0x61a65, fillColor1=0x63a45, lineColor=0x95ac5,
      cannon={roundsPerSec=0.35, explosive=FINAL, muzzleVel=1600, power=254, damage=200,
        range=6000, explodeRadius=10, color=0xecfe00}, group=20359, shape=CANNON, scale=4,
      name="EXR-1 Railgun", points=72, durability=0.5, density=0.15, blurb="Unmatched in range, this sniper rifle will always give you the first shot",
      sort=60030},
    {20029, features=PALETTE|TURRET|LASER, fillColor=0x80e040, fillColor1=0x407000, lineColor=0xaef300,
      laser={power=25, width=10, damage=-200, color=0x4080e040, range=1000}, group=20359,
      shape=OCTAGON, scale=2, name="MED Beam", points=105, durability=0.5, density=0.15,
      explosive=ENABLED, explodeRadius=25, sort=70105, barrelTaper=0, shroud={
        {size={3, 3}, offset={0, 0, 0}, taper=0.8}
        {size={3, 2}, offset={5, 0, 0}, taper=0.7}
        {size={2, 2.5}, offset={-2, 0, 0}, taper=-0.8}
      }
    },
    

    {20031, features=PALETTE|TURRET|CANNON|AUTOFIRE, fillColor=0x79a82d, fillColor1=0x69989d,
      lineColor=0xaef300, cannon={roundsPerSec=10, muzzleVel=1200, spread=0.045, rangeStdDev=20,
        power=3, damage=6, range=1200, color=0xecfe00}, group=20359, name="Phalanx", points=7,
      durability=0.5, density=0.15, turretSpeed=20, sort=80005,barrelCount=3, barrelSize=(12,0.75), shroud={
        {size={3, 3.8},offset={0, 0, 0}, taper=1.2}
        {size={5, 2.8},offset={-1, 0, 0}, taper=1.3}
        {size={2, 3},offset={4, 0, 0}, taper=1.1}
        {size={1, 2},offset={-2, 0, 0}, taper=1}
      }
    },
    {20032, features=PALETTE|TURRET|CANNON, fillColor=0x104a99, fillColor1=0x4f8e5c, lineColor=0xaef300,
      cannon={roundsPerSec=1.5, muzzleVel=1200, power=60, damage=50, range=1400, color=0xecfe00},
       group=20359, scale=3, name="MC3", points=42, durability=0.5, density=0.15, sort=60023,
      shroud={{size={5, 4}, taper=-0.75}, {size={8, 4}, offset={5, 0, 0}, taper=0.75}}},
    {20034, features=PALETTE|TURRET|CANNON|NOICON, fillColor=0x104a99, fillColor1=0x4f8e5c, lineColor=0xaef300,
      cannon={roundsPerSec=0.5, muzzleVel=1200, power=150, damage=175, range=3200, color=0xecfe00},
       group=20359, scale=3, name="HC3", points=61, durability=0.5, density=0.15, sort=600061,
      shroud={{size={6, 6}, taper=-0.75}, {size={10, 6}, offset={6, 0, 0}, taper=0.75}}},
    {20037, features=PALETTE|TURRET|CANNON, fillColor=0x104a99, fillColor1=0x4f8e5c, lineColor=0xaef300,
      cannon={roundsPerSec=14, muzzleVel=1700, spread=0.01, rangeStdDev=15, power=3,
        damage=14, range=800, color=0xecfe00}, group=20359, name="MLS Avenger", points=16,
      durability=0.5, density=0.15, blurb="Very high rate of fire, medium range", sort=60017,
      barrelCount=3,barrelSize=(16,0.7),barrelTaper=-1.2,shroud={
        {size={5, 3.2},offset={-1, 0, 0}, taper=1}
        {size={3, 3.2},offset={-1, 0, 0}, taper=1.2}
        {size={2, 3.3},offset={4, 0, 0}, taper=-1.1}
        {size={2, 0.9},offset={15, 2.2, 0}, taper=-1.05}
        {size={1, 0.6},offset={17, 2.2, 0}, taper=-1.1}
        {size={2, 0.9},offset={15, -2.2, 0}, taper=-1.05}
        {size={1, 0.6},offset={17, -2.2, 0}, taper=-1.1}
        {size={2, 0.9},offset={15, 0, 0}, taper=-1.05}
        {size={1, 0.6},offset={17, 0, 0}, taper=-1.1}
        {size={1.5, 1.5},offset={-3, 0, 0}, taper=1}
        {size={1.5, 2},offset={-2.4, 0, 0}, taper=1}
      },
    },
    {20038, features=PALETTE|TURRET|CANNON|AUTOFIRE, fillColor=0x79a82d, fillColor1=0x8ec61b,
      lineColor=0xaef300, cannon={roundsPerSec=4, explosive=PROXIMITY, muzzleVel=1800,
        spread=0.01, rangeStdDev=10, power=6, damage=9, range=700, explodeRadius=20,
        color=0xecfe00}, group=20359, name="MLS Anti-Missile", points=14, durability=0.5,
      density=0.15, blurb="Close in low damage weapon system", turretSpeed=20, sort=80015, 
      shroud={
        {size={3, 2},offset={-1, 0, 0}, taper=1.3}
        {size={2.5, 2},offset={3, 0, 0}, taper=-1.1}
        {size={2.5, 2},offset={15, 0, 0}, taper=1.1}
      }
    },
    {20042, features=PALETTE|CANNON, fillColor=0x61a65, fillColor1=0x63a45, lineColor=0x95ac5,
      cannon={roundsPerSec=1, explosive=FINAL, muzzleVel=2200, power=160, damage=250,
        range=4500, explodeRadius=25, color=0xecfe00}, group=20359, shape=CANNON, scale=3,
      name="Longbow", points=425, durability=0.5, density=0.15, sort=60438},
    {20045, features=PALETTE|LAUNCHER|LAUNCHER_BARRAGE, fillColor=0x5b5b5b, fillColor1=0x7c9837,
      lineColor=0xaef300, replicateBlock=
      {command={}, lifetime=6, features=PALETTE|COMMAND|THRUSTER|TORQUER|EXPLODE, capacity=100,
        fillColor=0xecfe00, fillColor1=0xa5d618, lineColor=0x3b9b3b, thrusterColor=0x9095aeac,
        thrusterColor1=0x9075ceac, group=20359, shape=MISSILE, points=2, durability=0.1,
        density=0.15, thrusterForce=1500, torquerTorque=2000, explodeDamage=30, explodeRadius=25,
        sort=-99998}, group=20359, shape=RECT_LAUNCHER, name="ZLM Sparrow", points=45, durability=0.5,
      density=0.15, blurb="Who doesn't like showering a target in missiles?", replicateTime=0.7,
      launcherPower=50, launcherOutSpeed=50, sort=520047},
    {20047, features=PALETTE|SHIELD, growRate=0.812, fillColor=0x769a95, fillColor1=0x8cbe59,
      lineColor=0xaef300, shield={strength=300, regen=200, radius=50, color=0x191f2928,
        lineColor=0xc1f2928, damagedColor=0x4c536c68}, group=20359, shape=OCTAGON, name="Shield",
      points=33, durability=0.5, density=0.5, blurb="Low strength and limited area is balanced by a fast recharge time",
      sort=90033},
    {20048, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, shape=RIGHT_TRI, name="Hull", blurb="A basic building block", sort=-10000},
    {20049, features=PALETTE|LAUNCHER, fillColor=0x5b5b5b, fillColor1=0x7c9837, lineColor=0xaef300,
      replicateBlock=
      {command={}, lifetime=8, features=PALETTE|COMMAND|THRUSTER|TORQUER|EXPLODE, capacity=100,
        fillColor=0xecfe00, fillColor1=0xa5d618, lineColor=0x3b9b3b, thrusterColor=0x9095aeac,
        thrusterColor1=0x9075ceac, group=20359, shape=MISSILE, scale=2, points=8, durability=0.5,
        density=0.15, thrusterForce=6000, torquerTorque=6000, explodeDamage=75, explodeRadius=40,
        sort=-99992}, group=20359, shape=RECT_LAUNCHER, scale=2, name="MM1", points=60,
      durability=0.5, density=0.15, replicateTime=2, launcherPower=50, launcherOutSpeed=50,
      sort=110060},
    {20050, features=PALETTE|LAUNCHER, fillColor=0x5b5b5b, fillColor1=0x7c9837, lineColor=0xaef300,
      replicateBlock=
      {command={}, lifetime=12, features=PALETTE|COMMAND|THRUSTER|TORQUER|EXPLODE, capacity=100,
        fillColor=0xecfe00, fillColor1=0xa5d618, lineColor=0x3b9b3b, thrusterColor=0x9095aeac,
        thrusterColor1=0x9075ceac, group=20359, shape=MISSILE, scale=3, points=18, durability=0.5,
        density=0.15, thrusterForce=6000, torquerTorque=6000, explodeDamage=100, explodeRadius=75,
        sort=-99982}, group=20359, shape=RECT_LAUNCHER1, scale=2, name="HM1", points=182,
      durability=0.5, density=0.15, replicateTime=1.5, launcherPower=80, launcherOutSpeed=50,
      sort=110182},
    {20051, features=PALETTE|TURRET|LASER, fillColor=16418, fillColor1=0x407000, lineColor=0xaef300,
      laser={pulsesPerSec=3, pulseAvailability=0.5, power=7, width=3, damage=70, color=0x80ecfe00,
        range=1000}, group=20359, name="Arkas PRP-1", points=14, durability=0.5, density=0.15,
      blurb="This small laser cannon is capable of taking out small targets in seconds",
      sort=70014, barrelTaper=0.1,shroud={
        {size={2, 1},offset={-1, 0, 0}, taper=1.3}
        {size={1.5, 1},offset={3, 0, 0}, taper=-1.1}
        {size={1.5, 0.5},offset={9, 0, 0}, taper=1.1}
      }
    },
      
    {20052, features=PALETTE|TURRET|LASER, fillColor=16418, fillColor1=0x407000, lineColor=0xaef300,
      laser={pulsesPerSec=3, pulseAvailability=0.75, power=10, width=5, damage=120, color=0x80ecfe00,
        range=900}, group=20359, scale=2, name="Arkas PRP-2", points=30, durability=0.5,
      density=0.15, blurb="The instantaneous nature of lasers mean that damage is delivered before all else",
      sort=70030, barrelTaper=0.1,shroud={
        {size={2, 1.5},offset={-1, 0, 0}, taper=1.3}
        {size={1.5, 1.5},offset={3, 0, 0}, taper=-1.1}
        {size={1.5, 1},offset={9, 0, 0}, taper=1.1}
      }
    },
    {20053, features=PALETTE|TURRET|LASER, fillColor=16418, fillColor1=0x407000, lineColor=0xaef300,
      laser={pulsesPerSec=2, pulseAvailability=0.85, power=20, width=7, damage=240,
        color=0x80ecfe00, range=800}, group=20359, scale=3, name="Arkas PRP-3", points=63,
      durability=0.5, density=0.15, blurb="Need to burn through a battleship without breaking a sweat? Try this",
      sort=70063, barrelTaper=0.1,shroud={
        {size={3, 3},offset={-1, 0, 0}, taper=1.3}
        {size={2, 3},offset={4, 0, 0}, taper=-1.1}
        {size={2, 1.8},offset={12, 0, 0}, taper=1.1}
      }},
    {20054, features=PALETTE|SHIELD, growRate=0.812, fillColor=0x769a95, fillColor1=0x8cbe59,
      lineColor=0xaef300, shield={strength=1000, regen=200, radius=100, color=0x191f2928,
        lineColor=0xc1f2928, damagedColor=0x4c536c68}, group=20359, shape=OCTAGON, scale=2,
      name="Shield", points=80, durability=0.5, density=0.15, blurb="This mid-size generator is versatile and effective",
      sort=90080},
    {20055, features=PALETTE|SHIELD, growRate=0.812, fillColor=0x769a95, fillColor1=0x8cbe59,
      lineColor=0xaef300, shield={strength=4000, regen=600, radius=175, color=0x191f2928,
        lineColor=0xc1f2928, damagedColor=0x4c536c68}, group=20359, shape=OCTAGON, scale=3,
      name="Shield", points=455, durability=0.5, density=0.15, blurb="When you've got a lot of hardware to protect, look no further",
      sort=90455},
    {20061, features=PALETTE|GENERATOR, capacity=100, fillColor=0x2e535e, fillColor1=0x619338,
      lineColor=0xaef300, group=20359, shape=OCTAGON, name="Power Distributor", points=30,
      durability=0.5, density=0.15, powerCapacity=300, generatorCapacityPerSec=100,
      sort=20030},
    {20062, features=PALETTE|TURRET|CANNON|AUTOFIRE|NOICON, fillColor=0x79a82d, fillColor1=0x69989d,
      lineColor=0xaef300, cannon={roundsPerSec=1.2, explosive=ENABLED, muzzleVel=1000,
        power=45, damage=65, range=1300, explodeRadius=20, color=0xecfe00}, group=20359,
      scale=3, name="Station Battery", points=42, durability=0.5, density=0.15, sort=600035,
      shroud={{size={6, 8}, taper=-0.75}, {size={10, 8}, offset={6, 0, 0}, taper=0.75},
        {size={15, 4}, offset={8, 0, 0}, taper=-0.65}}},
    {20063, features=PALETTE|TURRET|LASER|AUTOFIRE, fillColor=16418, fillColor1=0x407000, lineColor=0xaef300,
      laser={pulsesPerSec=2.5, pulseAvailability=0.8, power=6, width=3, damage=75, color=0x80ecfe00,
        range=700}, group=20359, name="Station Defense Laser", points=18, durability=0.5,
      density=0.15, turretSpeed=20, sort=80021, barrelTaper=0,shroud={
        {size={2, 1},offset={-1, 0, 0}, taper=1.3}
        {size={1.5, 0.8},offset={3, 0, 0}, taper=-1.1}
        {size={1, 0.7},offset={-2, 0, 0}, taper=1.1}
      },
    }
    {20065, features=PALETTE|PHOTOSYNTH, capacity=400, fillColor=0x2e535e, fillColor1=0x69a95,
      lineColor=0xaef300, group=20359, shape=OCTAGON, scale=4, name="Solar Panel", points=6,
      durability=0.1, density=0.01, photosynthPerSec=0.1, sort=230002},
    {20066, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, scale=2, name="Hull", sort=-10000},
    {20067, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, scale=3, name="Hull", sort=-10000},
    {20068, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, scale=4, name="Hull", sort=-10000},
    {20070, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, shape=RIGHT_TRI, scale=2, name="Hull", sort=-10000},
    {20071, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, shape=RIGHT_TRI, scale=3, name="Hull", sort=-10000},
    {20072, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, shape=RIGHT_TRI, scale=4, name="Hull", sort=-10000},
    {200073, features=PALETTE|THRUSTER|PALETTE, capacity=0.1, fillColor=0xc4e61, fillColor1=0x346f3a, lineColor=0x70a000,
      thrusterColor=0x90ece1c6, thrusterColor1=0x90ececec, group=20359, shape=THRUSTER,
      scale=4, name="Thruster", points=24, durability=10, density=0.15, blurb="Provides a large amount of thrust",
      thrusterForce=500000, sort=10023},
    {20074, features=PALETTE|TRACTOR|FACTORY, capacity=100, fillColor=0x66a95, fillColor1=0x202020,
      lineColor=0xaef300, group=20359, scale=4, name="Factory", points=105, durability=0.5,
      density=0.15, tractorRange=600, sort=260105},
    {20075, features=PALETTE|TRACTOR, capacity=100, fillColor=0x66a95, fillColor1=0x202020, lineColor=0xaef300,
      group=20359, shape=OCTAGON, scale=2, name="Tractor", points=5, durability=0.5, density=0.15,
      tractorRange=600, sort=200005},
    {20076, features=PALETTE, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, shape=RECT, name="Armor", durability=4, density=0.3, blurb="Extra durable, 1×(1 - 1/√(2)) units",
      sort=-10000},
    {20078, features=PALETTE, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, shape=RECT, scale=3, name="Armor", durability=4, density=0.3, blurb="Extra durable, 1×1/√(2) units",
      sort=-10000},
    {20079, features=PALETTE, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, shape=RECT, scale=4, name="Armor", durability=4, density=0.3, blurb="Extra durable, 2×(2 - 2/√(2)) units",
      sort=-10000},
    {20080, features=PALETTE, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, shape=RECT, scale=5, name="Armor", durability=4, density=0.3, blurb="Extra durable, 2×2/√(2) units",
      sort=-10000},
    {200081, features=PALETTE|THRUSTER|PALETTE, capacity=0.1, fillColor=0xc4e61, fillColor1=0x346f3a, lineColor=0x70a000,
      thrusterColor=0x90ece1c6, thrusterColor1=0x90ececec, group=20359, shape=THRUSTER,
      scale=5, name="Thruster", points=32, durability=10, density=0.15, blurb="Provides a large amount of thrust",
      thrusterForce=750000, sort=10023},
    {20082, features=PALETTE|TURRET|CANNON, fillColor=0x104a99, fillColor1=0x4f8e5c, lineColor=0xaef300,
      cannon={roundsPerSec=1.6, muzzleVel=1200, power=60, damage=100, range=1500, color=0xecfe00},
       group=20359, scale=4, name="MC4", points=64, durability=0.5, density=0.15, sort=60023,
      shroud={{size={6, 5}, taper=-0.75}, {size={10, 5}, offset={6, 0, 0}, taper=0.75}}},
    {20083, features=PALETTE|TURRET|CANNON|NOICON, fillColor=0x104a99, fillColor1=0x4f8e5c, lineColor=0xaef300,
      cannon={roundsPerSec=0.6, muzzleVel=1200, power=185, damage=250, range=3400, color=0xecfe00},
       group=20359, scale=4, name="HC4", points=92, durability=0.5, density=0.15, sort=600061,
      shroud={{size={6, 7}, taper=-0.75}, {size={10, 7}, offset={6, 0, 0}, taper=0.75}}},
    {20084, capacity=50, growRate=16.25, fillColor=0x202020, fillColor1=0x404040, lineColor=0xaef300,
      group=20359, shape=ADAPTER, scale=3, name="Adapter", blurb="A basic building block",
      sort=-10000},
    {20085, features=PALETTE|TURRET|CANNON|AUTOFIRE, fillColor=0x79a82d, fillColor1=0x8ec61b,
    lineColor=0xaef300, scale=2, cannon={roundsPerSec=5, explosive=PROXIMITY, muzzleVel=1800,
      spread=0.01, rangeStdDev=10, power=6, damage=16, range=900, explodeRadius=20,
      color=0xecfe00}, group=20359, name="MLS Anti-Torpedo", points=28, durability=0.5,
    density=0.15, blurb="Close in medium damage weapon system", turretSpeed=20, sort=80015, 
      shroud={
        {size={6, 3},offset={-1, 0, 0}, taper=1.3}
        {size={3, 3},offset={7, 0, 0}, taper=-1.1}
        {size={3, 3},offset={25, 0, 0}, taper=1.1}
        {size={2, 2.5},offset={28, 0, 0}, taper=1.1}
      }
    },
    {20086, features=PALETTE|INVISIBLE|NORECOLOR, growRate=16.25, fillColor=0x6b6f78, fillColor1=0x3f444d, lineColor=0x303338,
    group=20359, shape=RECT, scale=4, name="Structure", durability=2, density=0.1, blurb="Lightweight, Less durable, Structural Armor, 2×(2 - 2/√(2)) units",
    sort=-10000, 
    shroud={
      {size={1, 3.2},offset={1, 0, 0}, taper=1}
      {size={20, 0.5},offset={-8.5, 3, 0}, taper=1}
      {size={20, 0.5},offset={-8.5, -3, 0}, taper=1}
      },
    }
    {20087, features=PALETTE|LAUNCHER, fillColor=0x5b5b5b, fillColor1=0x7c9837, lineColor=0xaef300,
    replicateBlock=
    {command={}, lifetime=10, features=COMMAND|THRUSTER|TORQUER|CANNON|GENERATOR, generatorCapacityPerSec=100,powerCapacity=100,capacity=100,
      fillColor=0xecfe00, fillColor1=0xa5d618, lineColor=0x3b9b3b, thrusterColor=0x9095aeac,
      thrusterColor1=0x9075ceac, group=20359, shape=MISSILE, scale=3, points=18, durability=0.5,
      density=0.3, thrusterForce=20000, torquerTorque=30000,sort=-99982,
      cannon={roundsPerSec=5, explosive=ENABLED, muzzleVel=1000,spread=0.27,
      power=0, damage=24, range=1400, explodeRadius=17, roundsPerBurst=10,burstyness=1,color=0xecfe00},
    },
      group=20359, shape=RECT_LAUNCHER1, scale=2, name="SG-12 Scatter Drone", points=142,
    durability=0.5, density=0.15, replicateTime=1.5, launcherPower=80, launcherOutSpeed=50,
    sort=110182},
    
  
