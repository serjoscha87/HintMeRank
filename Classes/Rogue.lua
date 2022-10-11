local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "ROGUE") then
	return
end

SpellsByLevel = {
	-- Sinister Strike (Rank 1), Stealth, Pick Lock, Eviscerate (Rank 1)
	[1] = {1752,1784,1804,2098},
	-- Backstab (Rank 1), Pick Pocket
	[4] = {53,921},
	-- Sinister Strike (Rank 2), Gouge
	[6] = {1757,1776},
	-- Evasion (Rank 1), Eviscerate (Rank 2)
	[8] = {5277,6760},
	-- Sprint (Rank 1), Slice and Dice (Rank 1), Sap (Rank 1)
	[10] = {2983,5171,6770},
	-- Kick, Backstab (Rank 2)
	[12] = {1766,2589},
	-- Garrote (Rank 1), Sinister Strike (Rank 3), Expose Armor
	[14] = {703,1758,8647},
	-- Feint (Rank 1), Eviscerate (Rank 3)
	[16] = {1966,6761},
	-- Ambush (Rank 1)
	[18] = {8676},
	-- Rupture (Rank 1), Backstab (Rank 3), Dismantle
	[20] = {1943,2590,51722},
	-- Distract, Sinister Strike (Rank 4), Vanish (Rank 1), Garrote (Rank 2)
	[22] = {1725,1759,1856,8631},
	-- Detect Traps (Passive), Eviscerate (Rank 4)
	[24] = {2836,6762},
	-- Cheap Shot, Ambush (Rank 2)
	[26] = {1833,8724},
	-- Sap (Rank 2), Backstab (Rank 4), Feint (Rank 2), Rupture (Rank 2)
	[28] = {2070,2591,6768,8639},
	-- Kidney Shot (Rank 1), Sinister Strike (Rank 5), Disarm Trap, Garrote (Rank 3)
	[30] = {408,1760,1842,8632},
	-- Eviscerate (Rank 5)
	[32] = {8623},
	-- Blind, Sprint (Rank 2), Ambush (Rank 3)
	[34] = {2094,8696,8725},
	-- Rupture (Rank 3), Backstab (Rank 5)
	[36] = {8640,8721},
	-- Sinister Strike (Rank 6), Garrote (Rank 4)
	[38] = {8621,8633},
	-- Safe Fall (Passive), Eviscerate (Rank 6), Feint (Rank 3)
	[40] = {1860,8624,8637},
	-- Vanish (Rank 2), Slice and Dice (Rank 2), Ambush (Rank 4)
	[42] = {1857,6774,11267},
	-- Rupture (Rank 4), Backstab (Rank 6)
	[44] = {11273,11279},
	-- Garrote (Rank 5), Sinister Strike (Rank 7)
	[46] = {11289,11293},
	-- Sap (Rank 3), Eviscerate (Rank 7)
	[48] = {11297,11299},
	-- Kidney Shot (Rank 2), Ambush (Rank 5), Evasion (Rank 2)
	[50] = {8643,11268,26669},
	-- Rupture (Rank 5), Backstab (Rank 7), Feint (Rank 4)
	[52] = {11274,11280,11303},
	-- Garrote (Rank 6), Sinister Strike (Rank 8)
	[54] = {11290,11294},
	-- Eviscerate (Rank 8)
	[56] = {11300},
	-- Ambush (Rank 6), Sprint (Rank 3)
	[58] = {11269,11305},
	-- Rupture (Rank 6), Backstab (Rank 8), Backstab (Rank 9), Feint (Rank 5), Eviscerate (Rank 9)
	[60] = {11275,11281,25300,25302,31016},
	-- Garrote (Rank 7)
	[61] = {26839},
	-- Sinister Strike (Rank 9), Vanish (Rank 3), Envenom (Rank 1)
	[62] = {26861,26889,32645},
	-- Deadly Throw (Rank 1), Eviscerate (Rank 10), Feint (Rank 6)
	[64] = {26679,26865,27448},
	-- Ambush (Rank 7), Cloak of Shadows
	[66] = {27441,31224},
	-- Backstab (Rank 10), Rupture (Rank 7)
	[68] = {26863,26867},
	-- Envenom (Rank 2)
	[69] = {32684},
	-- Shiv, Sinister Strike (Rank 10), Garrote (Rank 8), Deadly Throw (Rank 2), Ambush (Rank 8)
	[70] = {5938,26862,26884,48673,48689},
	-- Sap (Rank 4)
	[71] = {51724},
	-- Feint (Rank 7)
	[72] = {48658},
	-- Eviscerate (Rank 11)
	[73] = {48667},
	-- Backstab (Rank 11), Rupture (Rank 8), Envenom (Rank 3)
	[74] = {48656,48671,57992},
	-- Garrote (Rank 9), Ambush (Rank 9), Tricks of the Trade
	[75] = {48675,48690,57934},
	-- Sinister Strike (Rank 11), Deadly Throw (Rank 3)
	[76] = {48637,48674},
	-- Feint (Rank 8)
	[78] = {48659},
	-- Eviscerate (Rank 12), Rupture (Rank 9)
	[79] = {48668,48672},
	-- Sinister Strike (Rank 12), Backstab (Rank 12), Garrote (Rank 10), Ambush (Rank 10), Fan of Knives, Envenom (Rank 4)
	[80] = {48638,48657,48676,48691,51723,57993}
}