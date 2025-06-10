{
	73590001,
	group=7,
	features=PALETTE|AUTOFIRE|CANNON|TURRET,
	name="Mosquito Turret",
	blurb="Its shots are supposed to simulate mosquitos",
	shape=GEM_3,
	fillColor=0x22222c,
	fillColor1=0x3a3d4c,
	lineColor=0x4c4c65,
	points=12,
	bindingId=5,
	cannon={
		damage=4,
		power=1,
		roundsPerSec=6.5,
		muzzleVel=2000,
		range=1200,
		spread=0,
		roundsPerBurst=4,
		burstyness=0.7,
		color=0x6d9236,
	},
	turretSpeed=6.9,
	barrelCount=3,
	barrelSize=(18.5,0.5)
	shroud={
		--Center Barrel
		{size={3, 3}, offset={0, 0, 0}, taper=-0.75},
        {size={4, 3}, offset={3, 0, 0}, taper=0.75},
		{size={3, 2}, offset={3, 0, 0}, taper=0.75},
		--Middle Lines
		{size={1, 2.5}, offset={10, 0, 0}}
		{size={1, 2.5}, offset={12, 0, 0}}
		{size={1, 2.5}, offset={14, 0, 0}}
		{size={1, 2.5}, offset={16, 0, 0}}
		{size={1, 2.5}, offset={18, 0, 0}}
		--Small Rectangles
		{size={2, 0.4}, offset={0, 0.75, 0}}
		{size={2, 0.4}, offset={0, -0.75, 0}}
	}
},

{
	73590002,
	group=7,
	features=PALETTE|CANNON|TURRET,
	name="Wasp Turret",
	blurb="Its shots are supposed to simulate wasps",
	shape=GEM_2,
	fillColor=0x22222c,
	fillColor1=0x3a3a4b,
	lineColor=0x4c4c65,
	points=24,
	cannon={
		damage=13,
		power=7,
		roundsPerSec=2,
		muzzleVel=2000,
		range=1300,
		spread=0.01,
		explosive=ENABLED,
		explodeRadius=1.5,
		color=0x6d9236,
	},
	turretSpeed=5.4,
	shroud={
		--Center barrel
		{size={3, 3}, offset={0, 0, 0}, taper=-0.75},
        {size={4, 3}, offset={3, 0, 0}, taper=0.75},
		--Middle barrel
        {size={6, 2}, offset={4, 0, 0}, taper=-0.65},
        {size={4, 2}, offset={8, 0, 0}, taper=-0.65}
		--Middle Lines
		{size={1, 2}, offset={10, 0, 0}}
		{size={1, 2}, offset={12, 0, 0}}
		--Small Rectangles
		{size={2, 0.4}, offset={0, 0.75, 0}}
		{size={2, 0.4}, offset={0, -0.75, 0}}
	},
	
},

{
	73590004,
	group=7,
	features=PALETTE,
	name="Chitin",
	blurb="Basic Armor",
	shape=ISOTRI_36,
	scale=1,
	fillColor=0xe8aa3c,
	fillColor1=0xa17321,
	lineColor=0x8c6114,
},

{
	73590005,
	group=7,
	features=PALETTE,
	name="Chitin",
	blurb="Basic Armor",
	shape=ISOTRI_72,
	fillColor=0xe8aa3c,
	fillColor1=0xa17321,
	lineColor=0x8c6114,
},

{
	73590006,
	group=7,
	features=PALETTE,
	name="Chitin",
	blurb="Basic Armor",
	shape=GEM_4,
	scale=1,
	fillColor=0xe8aa3c,
	fillColor1=0xa17321,
	lineColor=0x8c6114,
},

{
	73590007,
	group=7,
	features=PALETTE,
	name="Chitin",
	blurb="Basic Armor",
	shape=GEM_2,
	scale=1,
	fillColor=0xe8aa3c,
	fillColor1=0xa17321,
	lineColor=0x8c6114,
},

{
	73590008,
	group=7,
	features=PALETTE,
	name="Chitin",
	blurb="Basic Armor",
	shape=ADAPTER,
	fillColor=0xe8aa3c,
	fillColor1=0xa17321,
	lineColor=0x8c6114,
},

{
	73590009,
	group=7,
	features=PALETTE|LASER|TURRET,
	name="Laser Spitter",
	blurb="Its shots are supposed to simulate a spit of a spider",
	shape=GEM_1,
	fillColor=0x22222c,
	fillColor1=0x3a3a4b,
	lineColor=0x4c4c65,
	points=17,
	laser={
		power=7,
		width=2, 
		damage=50, 
		color=0x6d923600,
		range=900
	},
	turretSpeed=5.4,
	shroud={
		--Center barrel
		{size={3, 2}, offset={0, 0, 0}, taper=0.75},
        {size={4, 2}, offset={3, 0, 0}, taper=0.75},
		--Middle barrel
        {size={6, 1}, offset={4, 0, 0}, taper=0.65},
        {size={4, 1}, offset={8, 0, 0}, taper=0.65}
		--Middle Lines
		{size={1, 1.2}, offset={10, 0, 0}}
		{size={1, 1}, offset={12, 0, 0}}
		--Small Rectangles
		{size={2, 0.4}, offset={0, 0.75, 0}}
		{size={2, 0.4}, offset={0, -0.75, 0}}
	},
}

{
	73590010,
	group=7,
	features=PALETTE|CANNON|TURRET,
	name="Spikeshot",
	blurb="Its shots are supposed to simulate a bee spike",
	shape=GEM_3,
	fillColor=0x22222c,
	fillColor1=0x3a3a4b,
	lineColor=0x4c4c65,
	points=23,
	cannon={
		damage=25,
		power=12,
		roundsPerSec=1,
		muzzleVel=1800,
		range=1500,
		spread=0.01,
		color=0x6d9236,
	},
	
	turretSpeed=5.4,
	shroud={
		--Center barrel
		{size={3, 2.8}, offset={0, 0, 0}, taper=-0.9},
		{size={2, 2.5}, offset={3, 0, 0}, taper=0.8},
		--Middle barrel
		{size={4, 2.65}, offset={4, 0, 0}, taper=0.65},
		{size={4, 2.2}, offset={5, 0, 0}, taper=-0.5},
		--Middle Lines
		{size={1, 2.4}, offset={10, 0, 0}}
		{size={1, 2.2}, offset={12, 0, 0}}
		--Small Rectangles
		{size={2, 0.4}, offset={0, 0, 0}}
		{size={2, 0.4}, offset={0, 1.3, 0}}
		{size={2, 0.4}, offset={0, -1.3, 0}}
	},
}



