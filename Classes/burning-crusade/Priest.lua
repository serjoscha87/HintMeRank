local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "PRIEST") then
    return
end

SpellsByLevel = {
	[1] = {2050,1243,585},
	[4] = {2052,589},
	[6] = {17,591},
	[8] = {586,139},
	[10] = {13908,9035,2053,8092,2006,594,10797,32548,2652,2943},
	[12] = {588,1244,592},
	[14] = {528,8122,6074,598},
	[16] = {2054,8102},
	[18] = {527,600,970,19296},
	[20] = {44041,32676,2944,2651,9578,6346,13896,2061,19281,14914,15237,7128,453,6075,9484,18137,28377,19249,19261},
	[22] = {2055,8103,2096,2010,984},
	[24] = {15262,8129,1245,3747},
	[26] = {19238,9472,6076,992,19299},
	[28] = {19276,6063,15430,8104,17311,8124,19308,28378},
	[30] = {44043,14752,9579,19271,19282,15263,602,605,6065,596,976,1004,19251,19262},
	[32] = {552,9473,8131,6077},
	[34] = {19240,6064,1706,8105,10880,2767,19302},
	[36] = {19277,988,15264,15431,17312,8192,2791,6066,19309,28379},
	[38] = {9474,6078,6060},
	[40] = {44044,14818,9592,19273,2060,19283,1006,7001,10874,8106,996,9485,19252,19264},
	[42] = {19241,15265,10898,10888,10957,10892,19303},
	[44] = {19278,10915,27799,10911,17313,10909,10927,19310,28380},
	[46] = {10963,10945,10881,10933},
	[48] = {15266,10875,10937,10899,21562},
	[50] = {44045,19242,14819,10941,19274,10916,19284,10951,27870,27873,10960,10928,10893,19304,19253,19265},
	[52] = {19279,10964,27800,10946,17314,10953,19311,28381},
	[54] = {15267,10900,10934},
	[56] = {34863,10917,10876,27683,10890,10929,10958},
	[58] = {19243,10965,10947,10912,20770,10894,19305},
	[60] = {44046,34864,19280,27841,10942,19275,25314,19285,15261,27801,10952,27871,27874,18807,10938,10901,21564,10961,25316,27681,25315,10955,19312,28382,19254,19266,34916},
	[61] = {25233,25363},
	[62] = {32379},
	[63] = {25210,25379,25372},
	[64] = {32546},
	[65] = {34865,25217,25221,25367},
	[66] = {25437,25429,25384,34433,25446},
	[67] = {25235,25596},
	[68] = {25467,25213,25331,25387,25308,33076,25435,25433,25477,28385},
	[69] = {25431,25375,25364},
	[70] = {44047,34866,25312,25441,25470,28275,28276,25380,32375,25389,25218,25392,39374,32999,25222,32996,25368,25460,25461,34917}
}

--[[
SpellsByLevel = {
	[1] = {1243}, 
	[4] = {2052,589}, 
	[6] = {17,591}, 
	[8] = {139,586}, 
	[10] = {2053,2006,8092,594,2652,32548,10797,9035,13908}, 
	[12] = {588,1244,592}, 
	[14] = {528,6074,598,8122}, 
	[16] = {2054,8102}, 
	[18] = {527,600,970,19296,19236}, 
	[20] = {6346,7128,9484,2061,14914,6075,2944,9578,453,19261,44041,2651,19281,18137,13896,32676}, 
	[22] = {2055,2010,984,8103,2096}, 
	[24] = {8129,1245,3747,15262}, 
	[26] = {9472,6076,992,19299,19238}, 
	[28] = {6063,15430,19276,8104,17311,8124,19308}, 
	[30] = {602,6065,15263,596,1004,9579,605,976,19262,44043,19282,19271}, 
	[32] = {8131,552,9473,6077}, 
	[34] = {1706,6064,10880,8105,2767,19302,19240}, 
	[36] = {988,2791,6066,15264,15431,19277,17312,8192,19309}, 
	[38] = {9474,6078,6060}, 
	[40] = {14818,1006,10874,9485,2060,996,9592,8106,19264,44044,19283,19273}, 
	[42] = {10898,15265,10888,10957,10892,19303,19241}, 
	[44] = {10915,27799,10927,19278,10911,17313,10909,19310}, 
	[46] = {10963,10881,10933,10945}, 
	[48] = {10875,10937,10899,21562,15266}, 
	[50] = {14819,10951,10916,27870,10960,10928,10941,10893,19265,44045,19304,19284,19242,19274}, 
	[52] = {10964,27800,19279,10946,17314,10953,19311}, 
	[54] = {10900,15267,10934}, 
	[56] = {10876,34863,10917,10929,27683,10890,10958}, 
	[58] = {10965,20770,10947,10912,10894,19305,19243}, 
	[60] = {27841,10952,10938,10901,21564,27681,10955,34864,25314,15261,27801,27871,10961,25316,25315,19280,10942,18807,19266,34916,44046,19285,19312,19275}, 
	[61] = {25233,25363}, 
	[62] = {32379}, 
	[63] = {25379,25210,25372}, 
	[64] = {32546}, 
	[65] = {25217,34865,25221,25367}, 
	[66] = {25384,25429,34433,25446,25437}, 
	[67] = {25235,25596}, 
	[68] = {25213,25331,25308,33076,25435,25467,25387,25433,25477}, 
	[69] = {25431,25364,25375}, 
	[70] = {25312,25380,32375,25389,25218,32999,34866,28275,25222,32996,25368,25461,34917,44047,25470,25441}
}
]]--