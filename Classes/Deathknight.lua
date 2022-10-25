local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "DEATHKNIGHT") then
	return
end

SpellsByLevel = {
	-- Blood Plague (Passive)
	[1] = {59879},
	-- Rune of the Nerubian Carapace
	[40] = {70164},
	-- Plague Strike (Rank 1), Icy Touch (Rank 1), Blood Strike (Rank 1), Death Coil (Rank 1), Blood Presence, Acherus Deathcharger (Summon), Frozen Rune Weapon, Forceful Deflection (Passive), Death Grip, Death Gate, Rune of Cinderglacier, Rune of Razorice, Runeforging, Death Coil (Rank 1)
	[55] = {45462,45477,45902,47541,48266,48778,49142,49410,49576,50977,53341,53343,53428,62900},
	-- Raise Dead, Death Strike (Rank 1), Pestilence
	[56] = {46584,49998,50842},
	-- Mind Freeze, Frost Presence, Rune of Spellshattering, Rune of Spellbreaking
	[57] = {47528,48263,53342,54447},
	-- Chains of Ice, Blood Boil (Rank 1)
	[58] = {45524,48721},
	-- Strangulate, Blood Strike (Rank 2), Heart Strike (Rank 2)
	[59] = {47476,49926,55258},
	-- Death and Decay (Rank 1), Plague Strike (Rank 2), Rune of Lichbane, Corpse Explosion (Rank 2), Frost Strike (Rank 2)
	[60] = {43265,49917,53331,51325,51416},
	-- Path of Frost, Obliterate (Rank 1), Icy Touch (Rank 2)
	[61] = {3714,49020,49896},
	-- Icebound Fortitude, Death Coil (Rank 2), Death Coil (Rank 2)
	[62] = {48792,49892,62901},
	-- Death Strike (Rank 2), Rune of Swordshattering, Rune of Swordbreaking
	[63] = {49999,53323,54446},
	-- Blood Tap, Blood Strike (Rank 3), Heart Strike (Rank 3)
	[64] = {45529,49927,55259},
	-- Plague Strike (Rank 3), Dark Command, Horn of Winter (Rank 1), Frost Strike (Rank 3)
	[65] = {49918,56222,57330,51417},
	-- Death Pact, Blood Boil (Rank 2)
	[66] = {48743,49939},
	-- Icy Touch (Rank 3), Death and Decay (Rank 2), Obliterate (Rank 2), Rune Strike, Scourge Strike (Rank 2)
	[67] = {49903,49936,51423,56815,55265},
	-- Anti-Magic Shell, Death Coil (Rank 3), Death Coil (Rank 3)
	[68] = {48707,49893,62902},
	-- Blood Strike (Rank 4), Heart Strike (Rank 4)
	[69] = {49928,55260},
	-- Death Strike (Rank 3), Unholy Presence, Plague Strike (Rank 4), Rune of the Fallen Crusader, Rune of the Stoneskin Gargoyle, Corpse Explosion (Rank 3), Howling Blast (Rank 2), Frost Strike (Rank 4)
	[70] = {45463,48265,49919,53344,62158,51326,51409,51418},
	-- Blood Boil (Rank 3), Raise Ally
	[72] = {49940,61999},
	-- Icy Touch (Rank 4), Death and Decay (Rank 3), Obliterate (Rank 3), Scourge Strike (Rank 3)
	[73] = {49904,49937,51424,55270},
	-- Blood Strike (Rank 5), Heart Strike (Rank 5)
	[74] = {49929,55261},
	-- Empower Rune Weapon, Plague Strike (Rank 5), Death Strike (Rank 4), Horn of Winter (Rank 2), Corpse Explosion (Rank 4), Howling Blast (Rank 3), Frost Strike (Rank 5)
	[75] = {47568,49920,49923,57623,51327,51410,51419},
	-- Death Coil (Rank 4), Death Coil (Rank 4)
	[76] = {49894,62903},
	-- Icy Touch (Rank 5), Blood Boil (Rank 4)
	[78] = {49909,49941},
	-- Obliterate (Rank 4), Scourge Strike (Rank 4)
	[79] = {51425,55271},
	-- Army of the Dead, Death Coil (Rank 5), Plague Strike (Rank 6), Death Strike (Rank 5), Blood Strike (Rank 6), Death and Decay (Rank 4), Death Coil (Rank 5), Corpse Explosion (Rank 5), Howling Blast (Rank 4), Heart Strike (Rank 6), Frost Strike (Rank 6)
	[80] = {42650,49895,49921,49924,49930,49938,62904,51328,51411,55262,55268}
}