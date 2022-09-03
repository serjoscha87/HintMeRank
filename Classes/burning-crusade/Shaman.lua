local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "SHAMAN") then
    return
end

SpellsByLevel = {
	[1] = {331,403,8017,36591,29087,29088},
	[4] = {8042,8071},
	[6] = {2484,332},
	[8] = {8044,529,324,26364,8018,5730},
	[10] = {8050,8024,3599,8075},
	[12] = {2008,1535,547,370},
	[14] = {8045,548,8154},
	[16] = {526,325,26365,8019},
	[18] = {8052,8027,913,6390,8143},
	[20] = {8056,8033,2645,5394,8004,915,6363},
	[22] = {2870,8498,8166,131},
	[24] = {20609,8046,8181,939,905,26366,10399,8155,8160},
	[26] = {6196,8030,943,8190,5675},
	[28] = {8184,8053,8227,8038,8008,6391,546},
	[30] = {556,8177,6375,10595,20608,6364,36936,8232},
	[32] = {421,8499,959,6041,945,26367,8012,8512},
	[34] = {8058,16314,6495,10406},
	[36] = {20610,10412,16339,8010,10585,10495,15107},
	[38] = {8170,8249,10478,10456,10391,6392,8161},
	[40] = {1064,930,10447,6377,8005,8134,26369,6365,8235},
	[42] = {11314,10537,8835,10613},
	[44] = {10466,10392,10600,16315,10407},
	[46] = {10622,16341,10472,10586,10496,15111},
	[48] = {20776,2860,10413,10526,16355,10395,10431,26370,10427},
	[50] = {10462,15207,10437,25908,10486},
	[52] = {11315,10448,10467,10442,10614},
	[54] = {10623,10479,16316,10408},
	[56] = {10605,16342,10627,25359,10396,15208,10432,26363,10587,10497,15112},
	[58] = {10538,16387,10473,16356,10428},
	[60] = {20777,32593,10414,29228,10463,25357,10468,10601,10438,25361,16362},
	[61] = {25422,25546,25585},
	[62] = {25448,25479,24398},
	[63] = {25439,25391,25469,26371,25508},
	[64] = {25489,3738},
	[65] = {25552,25570,25528,25577},
	[66] = {2062,25500,25420},
	[67] = {25557,25560,25449,25525},
	[68] = {25423,2894,25563,25464,25505},
	[69] = {25454,25567,25574,25533,33736},
	[70] = {2825,25442,32594,25547,25457,25396,32182,25472,26372,25485,25509,25587}
}

--[[
SpellsByLevel_WT = {
	[1] = {8017}, 
	[4] = {8042}, 
	[6] = {2484,332}, 
	[8] = {8044,529,5730,324,8018}, 
	[10] = {8050,8024,8075}, 
	[12] = {1535,370,2008,547}, 
	[14] = {8045,548,8154}, 
	[16] = {325,8019,526}, 
	[18] = {8052,6390,8027,913,8143}, 
	[20] = {8056,915,6363,8033,2645,8004}, 
	[22] = {8498,131,2870,8166}, 
	[24] = {8046,8181,905,10399,8155,8160,20609,939}, 
	[26] = {943,8190,6196,8030,5675}, 
	[28] = {8053,6391,8184,8227,8038,546,8008}, 
	[30] = {6364,556,8177,10595,8232,6375,20608,36936}, 
	[32] = {421,8499,6041,8012,945,8512,959}, 
	[34] = {8058,16314,6495,10406}, 
	[36] = {10412,10585,16339,15107,20610,8010,10495}, 
	[38] = {10391,6392,8249,10478,10456,8161,8170}, 
	[40] = {930,10447,6365,8134,8235,8737,1064,6377,8005}, 
	[42] = {11314,10537,8835,10613}, 
	[44] = {10392,10600,16315,10407,10466}, 
	[46] = {10472,10586,16341,15111,10622,10496}, 
	[48] = {2860,10413,10427,10526,16355,10431,20776,10395}, 
	[50] = {15207,10437,10486,10462,25908}, 
	[52] = {11315,10448,10442,10614,10467}, 
	[54] = {10479,16316,10408,10623}, 
	[56] = {10605,15208,10587,16342,10627,10432,15112,10396,10497}, 
	[58] = {10473,10428,10538,16387,16356}, 
	[60] = {10414,29228,10438,25359,10601,25361,16362,20777,32593,10463,25357,10468}, 
	[61] = {25546,25585,25422}, 
	[62] = {25448,25479,24398}, 
	[63] = {25439,25469,25508,25391}, 
	[64] = {25489,3738}, 
	[65] = {25552,25528,25577,25570}, 
	[66] = {2062,25500,25420}, 
	[67] = {25449,25525,25557,25560}, 
	[68] = {2894,25464,25563,25505,25423}, 
	[69] = {25454,25533,25574,25567,33736}, 
	[70] = {25442,25547,25457,2825,32182,25472,25485,25509,25587,32594,25396}
}
]]--