local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "PRIEST") then
    return
end

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