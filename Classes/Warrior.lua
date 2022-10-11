local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "WARRIOR") then
	return
end

SpellsByLevel = {
	-- Heroic Strike (Rank 1), Battle Stance, Battle Shout (Rank 1)
	[1] = {78,2457,6673},
	-- Charge (Rank 1), Rend (Rank 1)
	[4] = {100,772},
	-- Thunder Clap (Rank 1), Victory Rush
	[6] = {6343,34428},
	-- Heroic Strike (Rank 2), Hamstring
	[8] = {284,1715},
	-- Defensive Stance, Taunt, Bloodrage, Rend (Rank 2), Sunder Armor
	[10] = {71,355,2687,6546,7386},
	-- Shield Bash, Battle Shout (Rank 2), Overpower
	[12] = {72,5242,7384},
	-- Demoralizing Shout (Rank 1), Revenge (Rank 1)
	[14] = {1160,6572},
	-- Heroic Strike (Rank 3), Mocking Blow, Shield Block
	[16] = {285,694,2565},
	-- Disarm, Thunder Clap (Rank 2)
	[18] = {676,8198},
	-- Cleave (Rank 1), Rend (Rank 3), Stance Mastery (Passive), Retaliation
	[20] = {845,6547,12678,20230},
	-- Intimidating Shout, Battle Shout (Rank 3)
	[22] = {5246,6192},
	-- Heroic Strike (Rank 4), Execute (Rank 1), Demoralizing Shout (Rank 2), Revenge (Rank 2)
	[24] = {1608,5308,6190,6574},
	-- Challenging Shout, Charge (Rank 2)
	[26] = {1161,6178},
	-- Shield Wall, Thunder Clap (Rank 3)
	[28] = {871,8204},
	-- Slam (Rank 1), Berserker Stance, Rend (Rank 4), Cleave (Rank 2), Intercept
	[30] = {1464,2458,6548,7369,20252},
	-- Battle Shout (Rank 4), Heroic Strike (Rank 5), Berserker Rage, Execute (Rank 2)
	[32] = {11549,11564,18499,20658},
	-- Revenge (Rank 3), Demoralizing Shout (Rank 3)
	[34] = {7379,11554},
	-- Whirlwind
	[36] = {1680},
	-- Pummel, Thunder Clap (Rank 4), Slam (Rank 2)
	[38] = {6552,8205,8820},
	-- Heroic Strike (Rank 6), Rend (Rank 5), Cleave (Rank 3), Execute (Rank 3), Shield Slam (Rank 1)
	[40] = {11565,11572,11608,20660,23922},
	-- Battle Shout (Rank 5)
	[42] = {11550},
	-- Demoralizing Shout (Rank 4), Revenge (Rank 4)
	[44] = {11555,11600},
	-- Charge (Rank 3), Slam (Rank 3)
	[46] = {11578,11604},
	-- Heroic Strike (Rank 7), Thunder Clap (Rank 5), Execute (Rank 4), Shield Slam (Rank 2)
	[48] = {11566,11580,20661,23923},
	-- Recklessness, Rend (Rank 6), Cleave (Rank 4)
	[50] = {1719,11573,11609},
	-- Battle Shout (Rank 6)
	[52] = {11551},
	-- Demoralizing Shout (Rank 5), Revenge (Rank 5), Slam (Rank 4), Shield Slam (Rank 3)
	[54] = {11556,11601,11605,23924},
	-- Heroic Strike (Rank 8), Execute (Rank 5)
	[56] = {11567,20662},
	-- Thunder Clap (Rank 6)
	[58] = {11581},
	-- Rend (Rank 7), Cleave (Rank 5), Shield Slam (Rank 4), Heroic Strike (Rank 9), Revenge (Rank 6), Battle Shout (Rank 7)
	[60] = {11574,20569,23925,25286,25288,25289},
	-- Slam (Rank 5)
	[61] = {25241},
	-- Demoralizing Shout (Rank 6)
	[62] = {25202},
	-- Revenge (Rank 7)
	[63] = {25269},
	-- Spell Reflection
	[64] = {23920},
	-- Execute (Rank 6)
	[65] = {25234},
	-- Shield Slam (Rank 5), Heroic Strike (Rank 10)
	[66] = {25258,29707},
	-- Thunder Clap (Rank 7)
	[67] = {25264},
	-- Commanding Shout (Rank 1), Rend (Rank 8), Cleave (Rank 6)
	[68] = {469,25208,25231},
	-- Battle Shout (Rank 8), Slam (Rank 6)
	[69] = {2048,25242},
	-- Intervene, Demoralizing Shout (Rank 7), Execute (Rank 7), Heroic Strike (Rank 11), Shield Slam (Rank 6), Revenge (Rank 8)
	[70] = {3411,25203,25236,30324,30356,30357},
	-- Rend (Rank 9), Shattering Throw
	[71] = {46845,64382},
	-- Heroic Strike (Rank 12), Cleave (Rank 7)
	[72] = {47449,47519},
	-- Execute (Rank 8), Thunder Clap (Rank 8)
	[73] = {47470,47501},
	-- Commanding Shout (Rank 2), Slam (Rank 7)
	[74] = {47439,47474},
	-- Shield Slam (Rank 7), Enraged Regeneration
	[75] = {47487,55694},
	-- Heroic Strike (Rank 13), Rend (Rank 10)
	[76] = {47450,47465},
	-- Cleave (Rank 8)
	[77] = {47520},
	-- Battle Shout (Rank 9), Thunder Clap (Rank 9)
	[78] = {47436,47502},
	-- Demoralizing Shout (Rank 8), Slam (Rank 8)
	[79] = {47437,47475},
	-- Commanding Shout (Rank 3), Execute (Rank 9), Shield Slam (Rank 8), Heroic Throw, Revenge (Rank 9)
	[80] = {47440,47471,47488,57755,57823}
}