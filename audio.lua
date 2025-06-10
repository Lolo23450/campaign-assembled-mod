{
    volume         = 1,
    pitch          = 1,
    pitchRandomize = 0.0,
 
    rolloff        = 0.8,
    minDist        = 100,
    maxDist        = 9999999999,
    
    priority       = 0,
    
    flags          = 0
}

{ 
    MainMenuMusic = {
       samples = {"music/Track3/Track3_Build.ogg","music/menu/Menu0.ogg"},
       flags   = stream|music|loop,
       volume  = 0.5,
    },
    
    GameMusic = {
       samples = {
             "music/mastered/agents.ogg",
             "music/mastered/coffee.ogg",
             "music/mastered/coffeeredux.ogg",
             "music/mastered/damagedstation.ogg",
             "music/mastered/explore.ogg",
             "music/mastered/gammavoid.ogg",
             "music/mastered/imminentwormhole.ogg",
             "music/mastered/matrixmassacre.ogg",
             "music/mastered/newsectors.ogg",
             "music/mastered/parallaxuniverse.ogg",
             "music/mastered/safejourney.ogg",
             "music/mastered/searchingforresources.ogg",
             "music/mastered/spaceplants.ogg",
             "music/mastered/spectralwarfare.ogg",
             "music/mastered/thecommandline.ogg",
             "music/mastered/vectorcarnage.ogg",
             "music/Command-Mode.ogg",
             "music/Constructor.ogg",
             "music/Fleet.ogg",
             "music/Palette.ogg",
             "music/Regions.ogg",
             "music/Reasearch.ogg"
             "music/factions/Bee1.ogg"
             "music/factions/Borg1.ogg"
             "music/factions/Crystalline1.ogg"
             "music/factions/Farmer2.ogg"
             "music/factions/Red1.ogg"
             "music/factions/Sentinel2.ogg"
             "music/factions/Tinkrell1.ogg"
             "music/factions/Farmer1.ogg"
             "music/factions/Terran1.ogg"
             "music/factions/Sentinel1.ogg"
             "music/factions/Terran2.ogg"
       },
       delay   = {5, 10},
       flags   = stream|music,
       volume  = 0.5,
    },
}