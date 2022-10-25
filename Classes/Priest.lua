local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "PRIEST") then
	return
end

SpellsByLevel = {
	-- Smite (Rank 1), Power Word: Fortitude (Rank 1), Lesser Heal (Rank 1), Empowered Renew
	[1] = {585,1243,2050,63544},
	-- Shadow Word: Pain (Rank 1), Lesser Heal (Rank 2)
	[4] = {589,2052},
	-- Power Word: Shield (Rank 1), Smite (Rank 2)
	[6] = {17,591},
	-- Renew (Rank 1), Fade
	[8] = {139,586},
	-- Shadow Word: Pain (Rank 2), Resurrection (Rank 1), Lesser Heal (Rank 3), Mind Blast (Rank 1)
	[10] = {594,2006,2053,8092},
	-- Inner Fire (Rank 1), Power Word: Shield (Rank 2), Power Word: Fortitude (Rank 2)
	[12] = {588,592,1244},
	-- Cure Disease, Smite (Rank 3), Renew (Rank 2), Psychic Scream (Rank 1)
	[14] = {528,598,6074,8122},
	-- Heal (Rank 1), Mind Blast (Rank 2)
	[16] = {2054,8102},
	-- Dispel Magic (Rank 1), Power Word: Shield (Rank 3), Shadow Word: Pain (Rank 3)
	[18] = {527,600,970},
	-- Mind Soothe, Flash Heal (Rank 1), Devouring Plague (Rank 1), Renew (Rank 3), Fear Ward, Inner Fire (Rank 2), Shackle Undead (Rank 1), Holy Fire (Rank 1), Holy Nova (Rank 1), Blessed Healing
	[20] = {453,2061,2944,6075,6346,7128,9484,14914,15237,70772},
	-- Smite (Rank 4), Resurrection (Rank 2), Heal (Rank 2), Mind Vision (Rank 1), Mind Blast (Rank 3)
	[22] = {984,2010,2055,2096,8103},
	-- Power Word: Fortitude (Rank 3), Power Word: Shield (Rank 4), Mana Burn, Holy Fire (Rank 2)
	[24] = {1245,3747,8129,15262},
	-- Shadow Word: Pain (Rank 4), Renew (Rank 4), Flash Heal (Rank 2), Desperate Prayer (Rank 2)
	[26] = {992,6076,9472,19238},
	-- Heal (Rank 3), Mind Blast (Rank 4), Psychic Scream (Rank 2), Holy Nova (Rank 2), Devouring Plague (Rank 2), Mind Flay (Rank 2)
	[28] = {6063,8104,8124,15430,19276,17311},
	-- Prayer of Healing (Rank 1), Inner Fire (Rank 3), Mind Control, Shadow Protection (Rank 1), Smite (Rank 5), Power Word: Shield (Rank 5), Divine Spirit (Rank 1), Holy Fire (Rank 3)
	[30] = {596,602,605,976,1004,6065,14752,15263},
	-- Abolish Disease, Renew (Rank 5), Flash Heal (Rank 3)
	[32] = {552,6077,9473},
	-- Levitate, Shadow Word: Pain (Rank 5), Heal (Rank 4), Mind Blast (Rank 5), Resurrection (Rank 3), Desperate Prayer (Rank 3)
	[34] = {1706,2767,6064,8105,10880,19240},
	-- Dispel Magic (Rank 2), Power Word: Fortitude (Rank 4), Power Word: Shield (Rank 6), Holy Fire (Rank 4), Holy Nova (Rank 3), Devouring Plague (Rank 3), Mind Flay (Rank 3)
	[36] = {988,2791,6066,15264,15431,19277,17312},
	-- Smite (Rank 6), Renew (Rank 6), Flash Heal (Rank 4)
	[38] = {6060,6078,9474},
	-- Prayer of Healing (Rank 2), Inner Fire (Rank 4), Greater Heal (Rank 1), Mind Blast (Rank 6), Shackle Undead (Rank 2), Divine Spirit (Rank 2)
	[40] = {996,1006,2060,8106,9485,14818},
	-- Psychic Scream (Rank 3), Shadow Word: Pain (Rank 6), Power Word: Shield (Rank 7), Shadow Protection (Rank 2), Holy Fire (Rank 5), Desperate Prayer (Rank 4)
	[42] = {10888,10892,10898,10957,15265,19241},
	-- Mind Vision (Rank 2), Flash Heal (Rank 5), Renew (Rank 7), Devouring Plague (Rank 4), Holy Nova (Rank 4), Mind Flay (Rank 4)
	[44] = {10909,10915,10927,19278,27799,17313},
	-- Resurrection (Rank 4), Smite (Rank 7), Mind Blast (Rank 7), Greater Heal (Rank 2)
	[46] = {10881,10933,10945,10963},
	-- Power Word: Shield (Rank 8), Power Word: Fortitude (Rank 5), Holy Fire (Rank 6), Prayer of Fortitude (Rank 1)
	[48] = {10899,10937,15266,21562},
	-- Shadow Word: Pain (Rank 7), Flash Heal (Rank 6), Renew (Rank 8), Inner Fire (Rank 5), Prayer of Healing (Rank 3), Divine Spirit (Rank 3), Desperate Prayer (Rank 5), Lightwell (Rank 2)
	[50] = {10893,10916,10928,10951,10960,14819,19242,27870},
	-- Mind Blast (Rank 8), Greater Heal (Rank 3), Devouring Plague (Rank 5), Holy Nova (Rank 5), Mind Flay (Rank 5)
	[52] = {10946,10964,19279,27800,17314},
	-- Power Word: Shield (Rank 9), Smite (Rank 8), Holy Fire (Rank 7)
	[54] = {10900,10934,15267},
	-- Psychic Scream (Rank 4), Flash Heal (Rank 7), Renew (Rank 9), Shadow Protection (Rank 3), Prayer of Shadow Protection (Rank 1), Circle of Healing (Rank 2)
	[56] = {10890,10917,10929,10958,27683,34863},
	-- Shadow Word: Pain (Rank 8), Mind Blast (Rank 9), Greater Heal (Rank 4), Resurrection (Rank 5), Desperate Prayer (Rank 6)
	[58] = {10894,10947,10965,20770,19243},
	-- Power Word: Shield (Rank 10), Power Word: Fortitude (Rank 6), Inner Fire (Rank 6), Shackle Undead (Rank 3), Prayer of Healing (Rank 4), Holy Fire (Rank 8), Devouring Plague (Rank 6), Prayer of Fortitude (Rank 2), Greater Heal (Rank 5), Renew (Rank 10), Prayer of Healing (Rank 5), Prayer of Spirit (Rank 1), Holy Nova (Rank 6), Divine Spirit (Rank 4), Mind Flay (Rank 6), Lightwell (Rank 3), Circle of Healing (Rank 3), Vampiric Touch (Rank 2)
	[60] = {10901,10938,10952,10955,10961,15261,19280,21564,25314,25315,25316,27681,27801,27841,18807,27871,34864,34916},
	-- Flash Heal (Rank 8), Smite (Rank 9)
	[61] = {25233,25363},
	-- Shadow Word: Death (Rank 1)
	[62] = {32379},
	-- Greater Heal (Rank 6), Mind Blast (Rank 10)
	[63] = {25210,25372},
	-- Binding Heal (Rank 1)
	[64] = {32546},
	-- Power Word: Shield (Rank 11), Renew (Rank 11), Shadow Word: Pain (Rank 9), Circle of Healing (Rank 4)
	[65] = {25217,25221,25367,34865},
	-- Holy Fire (Rank 9), Shadowfiend, Desperate Prayer (Rank 7)
	[66] = {25384,34433,25437},
	-- Flash Heal (Rank 9)
	[67] = {25235},
	-- Greater Heal (Rank 7), Prayer of Healing (Rank 6), Holy Nova (Rank 7), Shadow Protection (Rank 4), Resurrection (Rank 6), Devouring Plague (Rank 7), Prayer of Mending (Rank 1), Mind Flay (Rank 7)
	[68] = {25213,25308,25331,25433,25435,25467,33076,25387},
	-- Smite (Rank 10), Mind Blast (Rank 11), Inner Fire (Rank 7)
	[69] = {25364,25375,25431},
	-- Power Word: Shield (Rank 12), Renew (Rank 12), Divine Spirit (Rank 5), Shadow Word: Pain (Rank 10), Power Word: Fortitude (Rank 7), Prayer of Fortitude (Rank 3), Mass Dispel, Shadow Word: Death (Rank 2), Prayer of Spirit (Rank 2), Prayer of Shadow Protection (Rank 2), Lightwell (Rank 4), Circle of Healing (Rank 5), Vampiric Touch (Rank 3), Penance (Rank 2)
	[70] = {25218,25222,25312,25368,25389,25392,32375,32996,32999,39374,28275,34866,34917,53005},
	-- Inner Fire (Rank 8)
	[71] = {48040},
	-- Binding Heal (Rank 2), Holy Fire (Rank 10)
	[72] = {48119,48134},
	-- Greater Heal (Rank 8), Flash Heal (Rank 10), Devouring Plague (Rank 8), Desperate Prayer (Rank 8)
	[73] = {48062,48070,48299,48172},
	-- Prayer of Mending (Rank 2), Smite (Rank 11), Mind Blast (Rank 12), Mind Flay (Rank 8)
	[74] = {48112,48122,48126,48155},
	-- Mind Sear (Rank 1), Power Word: Shield (Rank 13), Renew (Rank 13), Holy Nova (Rank 8), Shadow Word: Pain (Rank 11), Shadow Word: Death (Rank 3), Lightwell (Rank 5), Circle of Healing (Rank 6), Vampiric Touch (Rank 4), Penance (Rank 3)
	[75] = {48045,48065,48067,48077,48124,48157,48086,48088,48159,53006},
	-- Prayer of Healing (Rank 7), Shadow Protection (Rank 5)
	[76] = {48072,48169},
	-- Inner Fire (Rank 9), Prayer of Shadow Protection (Rank 3)
	[77] = {48168,48170},
	-- Greater Heal (Rank 9), Binding Heal (Rank 3), Holy Fire (Rank 11), Resurrection (Rank 7)
	[78] = {48063,48120,48135,48171},
	-- Flash Heal (Rank 11), Prayer of Mending (Rank 3), Smite (Rank 12), Mind Blast (Rank 13), Devouring Plague (Rank 9)
	[79] = {48071,48113,48123,48127,48300},
	-- Power Word: Shield (Rank 14), Renew (Rank 14), Divine Spirit (Rank 6), Prayer of Spirit (Rank 3), Holy Nova (Rank 9), Shadow Word: Pain (Rank 12), Shadow Word: Death (Rank 4), Power Word: Fortitude (Rank 8), Prayer of Fortitude (Rank 4), Mind Sear (Rank 2), Divine Hymn (Rank 1), Hymn of Hope, Hymn of Hope, Lightwell (Rank 6), Circle of Healing (Rank 7), Mind Flay (Rank 9), Vampiric Touch (Rank 5), Desperate Prayer (Rank 9), Penance (Rank 4)
	[80] = {48066,48068,48073,48074,48078,48125,48158,48161,48162,53023,64843,64901,64904,48087,48089,48156,48160,48173,53007}
}