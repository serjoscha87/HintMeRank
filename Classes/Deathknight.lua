local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "DEATHKNIGHT") then
	return
end

SpellsByLevel = {
	-- On a Pale Horse (Rank 2), Will of the Necropolis (Rank 1), Frost Fever (Passive), Obliterate (Rank 1)
	[0] = {51986,52284,59921,66198},
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
	-- Strangulate, Blood Strike (Rank 2)
	[59] = {47476,49926},
	-- Death and Decay (Rank 1), Plague Strike (Rank 2), Rune of Lichbane
	[60] = {43265,49917,53331},
	-- Path of Frost, Obliterate (Rank 1), Icy Touch (Rank 2)
	[61] = {3714,49020,49896},
	-- Icebound Fortitude, Death Coil (Rank 2), Death Coil (Rank 2)
	[62] = {48792,49892,62901},
	-- Death Strike (Rank 2), Rune of Swordshattering, Rune of Swordbreaking
	[63] = {49999,53323,54446},
	-- Blood Tap, Blood Strike (Rank 3)
	[64] = {45529,49927},
	-- Plague Strike (Rank 3), Dark Command, Horn of Winter (Rank 1)
	[65] = {49918,56222,57330},
	-- Death Pact, Blood Boil (Rank 2)
	[66] = {48743,49939},
	-- Icy Touch (Rank 3), Death and Decay (Rank 2), Obliterate (Rank 2), Rune Strike
	[67] = {49903,49936,51423,56815},
	-- Anti-Magic Shell, Death Coil (Rank 3), Death Coil (Rank 3)
	[68] = {48707,49893,62902},
	-- Blood Strike (Rank 4)
	[69] = {49928},
	-- Death Strike (Rank 3), Unholy Presence, Plague Strike (Rank 4), Rune of the Fallen Crusader, Rune of the Stoneskin Gargoyle
	[70] = {45463,48265,49919,53344,62158},
	-- Blood Boil (Rank 3), Raise Ally
	[72] = {49940,61999},
	-- Icy Touch (Rank 4), Death and Decay (Rank 3), Obliterate (Rank 3)
	[73] = {49904,49937,51424},
	-- Blood Strike (Rank 5)
	[74] = {49929},
	-- Empower Rune Weapon, Plague Strike (Rank 5), Death Strike (Rank 4), Horn of Winter (Rank 2)
	[75] = {47568,49920,49923,57623},
	-- Death Coil (Rank 4), Death Coil (Rank 4)
	[76] = {49894,62903},
	-- Icy Touch (Rank 5), Blood Boil (Rank 4)
	[78] = {49909,49941},
	-- Obliterate (Rank 4)
	[79] = {51425},
	-- Army of the Dead, Death Coil (Rank 5), Plague Strike (Rank 6), Death Strike (Rank 5), Blood Strike (Rank 6), Death and Decay (Rank 4), Death Coil (Rank 5)
	[80] = {42650,49895,49921,49924,49930,49938,62904}
}