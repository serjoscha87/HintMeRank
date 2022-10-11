local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "SHAMAN") then
	return
end

SpellsByLevel = {
	-- Healing Wave (Rank 1), Lightning Bolt (Rank 1), Rockbiter Weapon (Rank 1)
	[1] = {331,403,8017},
	-- Earth Shock (Rank 1), Stoneskin Totem (Rank 1)
	[4] = {8042,8071},
	-- Healing Wave (Rank 2), Earthbind Totem
	[6] = {332,2484},
	-- Lightning Shield (Rank 1), Lightning Bolt (Rank 2), Stoneclaw Totem (Rank 1), Rockbiter Weapon (Rank 2), Earth Shock (Rank 2)
	[8] = {324,529,5730,8018,8044},
	-- Searing Totem (Rank 1), Flametongue Weapon (Rank 1), Flame Shock (Rank 1), Strength of Earth Totem (Rank 1)
	[10] = {3599,8024,8050,8075},
	-- Purge (Rank 1), Healing Wave (Rank 3), Fire Nova (Rank 1), Ancestral Spirit (Rank 1), Fire Nova (Rank 1)
	[12] = {370,547,1535,2008,8349},
	-- Lightning Bolt (Rank 3), Earth Shock (Rank 3), Stoneskin Totem (Rank 2)
	[14] = {548,8045,8154},
	-- Lightning Shield (Rank 2), Cure Toxins, Ghost Wolf, Rockbiter Weapon (Rank 3), Wind Shear
	[16] = {325,526,2645,8019,57994},
	-- Healing Wave (Rank 4), Stoneclaw Totem (Rank 2), Flametongue Weapon (Rank 2), Flame Shock (Rank 2), Tremor Totem
	[18] = {913,6390,8027,8052,8143},
	-- Lightning Bolt (Rank 4), Healing Stream Totem (Rank 1), Searing Totem (Rank 2), Lesser Healing Wave (Rank 1), Frostbrand Weapon (Rank 1), Frost Shock (Rank 1), Water Shield (Rank 1)
	[20] = {915,5394,6363,8004,8033,8056,52127},
	-- Water Breathing, Fire Nova (Rank 2), Fire Nova (Rank 2)
	[22] = {131,8498,8502},
	-- Lightning Shield (Rank 3), Healing Wave (Rank 5), Earth Shock (Rank 4), Stoneskin Totem (Rank 3), Strength of Earth Totem (Rank 2), Frost Resistance Totem (Rank 1), Rockbiter Weapon (Rank 4), Ancestral Spirit (Rank 2)
	[24] = {905,939,8046,8155,8160,8181,10399,20609},
	-- Lightning Bolt (Rank 5), Mana Spring Totem (Rank 1), Far Sight, Flametongue Weapon (Rank 3), Magma Totem (Rank 1)
	[26] = {943,5675,6196,8030,8190},
	-- Water Walking, Stoneclaw Totem (Rank 3), Lesser Healing Wave (Rank 2), Frostbrand Weapon (Rank 2), Flame Shock (Rank 3), Fire Resistance Totem (Rank 1), Flametongue Totem (Rank 1), Water Shield (Rank 2)
	[28] = {546,6391,8008,8038,8053,8184,8227,52129},
	-- Astral Recall, Searing Totem (Rank 3), Healing Stream Totem (Rank 2), Grounding Totem, Windfury Weapon (Rank 1), Nature Resistance Totem (Rank 1), Reincarnation (Passive), Totemic Recall, Earthliving Weapon (Rank 1), Call of the Elements
	[30] = {556,6364,6375,8177,8232,10595,20608,36936,51730,66842},
	-- Chain Lightning (Rank 1), Lightning Shield (Rank 4), Healing Wave (Rank 6), Lightning Bolt (Rank 6), Purge (Rank 2), Fire Nova (Rank 3), Fire Nova (Rank 3), Windfury Totem
	[32] = {421,945,959,6041,8012,8499,8503,8512},
	-- Sentry Totem, Frost Shock (Rank 2), Stoneskin Totem (Rank 4), Water Shield (Rank 3)
	[34] = {6495,8058,10406,52131},
	-- Lesser Healing Wave (Rank 3), Earth Shock (Rank 5), Mana Spring Totem (Rank 2), Magma Totem (Rank 2), Flametongue Weapon (Rank 4), Ancestral Spirit (Rank 3)
	[36] = {8010,10412,10495,10585,16339,20610},
	-- Stoneclaw Totem (Rank 4), Strength of Earth Totem (Rank 3), Cleansing Totem, Flametongue Totem (Rank 2), Lightning Bolt (Rank 7), Frostbrand Weapon (Rank 3), Frost Resistance Totem (Rank 2)
	[38] = {6392,8161,8170,8249,10391,10456,10478},
	-- Chain Lightning (Rank 2), Chain Heal (Rank 1), Searing Totem (Rank 4), Healing Stream Totem (Rank 3), Healing Wave (Rank 7), Lightning Shield (Rank 5), Windfury Weapon (Rank 2), Flame Shock (Rank 4), Earthliving Weapon (Rank 2), Call of the Ancestors
	[40] = {930,1064,6365,6377,8005,8134,8235,10447,51988,66843},
	-- Water Shield (Rank 4)
	[41] = {52134},
	-- Fire Resistance Totem (Rank 2), Fire Nova (Rank 4), Fire Nova (Rank 4)
	[42] = {10537,11306,11314},
	-- Lightning Bolt (Rank 8), Stoneskin Totem (Rank 5), Lesser Healing Wave (Rank 4), Nature Resistance Totem (Rank 2)
	[44] = {10392,10407,10466,10600},
	-- Frost Shock (Rank 3), Mana Spring Totem (Rank 3), Magma Totem (Rank 3), Chain Heal (Rank 2), Flametongue Weapon (Rank 5)
	[46] = {10472,10496,10586,10622,16341},
	-- Chain Lightning (Rank 3), Healing Wave (Rank 8), Earth Shock (Rank 6), Stoneclaw Totem (Rank 5), Lightning Shield (Rank 6), Flametongue Totem (Rank 3), Frostbrand Weapon (Rank 4), Ancestral Spirit (Rank 4), Water Shield (Rank 5)
	[48] = {2860,10395,10413,10427,10431,10526,16355,20776,52136},
	-- Searing Totem (Rank 5), Healing Stream Totem (Rank 4), Windfury Weapon (Rank 3), Lightning Bolt (Rank 9), Earthliving Weapon (Rank 3), Call of the Spirits
	[50] = {10437,10462,10486,15207,51991,66844},
	-- Strength of Earth Totem (Rank 4), Flame Shock (Rank 5), Lesser Healing Wave (Rank 5), Fire Nova (Rank 5), Fire Nova (Rank 5)
	[52] = {10442,10448,10467,11307,11315},
	-- Stoneskin Totem (Rank 6), Frost Resistance Totem (Rank 3), Chain Heal (Rank 3)
	[54] = {10408,10479,10623},
	-- Water Shield (Rank 6)
	[55] = {52138},
	-- Healing Wave (Rank 9), Lightning Shield (Rank 7), Mana Spring Totem (Rank 4), Magma Totem (Rank 4), Chain Lightning (Rank 4), Lightning Bolt (Rank 10), Flametongue Weapon (Rank 6)
	[56] = {10396,10432,10497,10587,10605,15208,16342},
	-- Stoneclaw Totem (Rank 6), Frost Shock (Rank 4), Fire Resistance Totem (Rank 3), Frostbrand Weapon (Rank 5), Flametongue Totem (Rank 4)
	[58] = {10428,10473,10538,16356,16387},
	-- Earth Shock (Rank 7), Searing Totem (Rank 6), Healing Stream Totem (Rank 5), Lesser Healing Wave (Rank 6), Nature Resistance Totem (Rank 3), Windfury Weapon (Rank 4), Ancestral Spirit (Rank 5), Healing Wave (Rank 10), Strength of Earth Totem (Rank 5), Flame Shock (Rank 6), Earthliving Weapon (Rank 4)
	[60] = {10414,10438,10463,10468,10601,16362,20777,25357,25361,29228,51992},
	-- Chain Heal (Rank 4), Fire Nova (Rank 6), Fire Nova (Rank 6)
	[61] = {25422,25535,25546},
	-- Water Shield (Rank 7), Lightning Bolt (Rank 11)
	[62] = {24398,25448},
	-- Healing Wave (Rank 11), Chain Lightning (Rank 5), Lightning Shield (Rank 8), Stoneskin Totem (Rank 7)
	[63] = {25391,25439,25469,25508},
	-- Wrath of Air Totem, Flametongue Weapon (Rank 7)
	[64] = {3738,25489},
	-- Strength of Earth Totem (Rank 6), Magma Totem (Rank 5), Mana Spring Totem (Rank 5)
	[65] = {25528,25552,25570},
	-- Earth Elemental Totem, Lesser Healing Wave (Rank 7), Frostbrand Weapon (Rank 6)
	[66] = {2062,25420,25500},
	-- Lightning Bolt (Rank 12), Stoneclaw Totem (Rank 7), Flametongue Totem (Rank 5), Frost Resistance Totem (Rank 4)
	[67] = {25449,25525,25557,25560},
	-- Fire Elemental Totem, Chain Heal (Rank 5), Frost Shock (Rank 5), Windfury Weapon (Rank 5), Fire Resistance Totem (Rank 4)
	[68] = {2894,25423,25464,25505,25563},
	-- Earth Shock (Rank 8), Searing Totem (Rank 7), Healing Stream Totem (Rank 6), Nature Resistance Totem (Rank 4), Ancestral Spirit (Rank 6), Water Shield (Rank 8)
	[69] = {25454,25533,25567,25574,25590,33736},
	-- Bloodlust, Healing Wave (Rank 12), Chain Lightning (Rank 6), Flame Shock (Rank 7), Lightning Shield (Rank 9), Stoneskin Totem (Rank 8), Fire Nova (Rank 7), Fire Nova (Rank 7), Heroism, Earthliving Weapon (Rank 5)
	[70] = {2825,25396,25442,25457,25472,25509,25537,25547,32182,51993},
	-- Stoneclaw Totem (Rank 8), Flametongue Totem (Rank 6), Searing Totem (Rank 8), Healing Stream Totem (Rank 7), Mana Spring Totem (Rank 6), Flametongue Weapon (Rank 8), Frostbrand Weapon (Rank 7), Windfury Weapon (Rank 6)
	[71] = {58580,58649,58699,58755,58771,58785,58794,58801},
	-- Lesser Healing Wave (Rank 8)
	[72] = {49275},
	-- Frost Shock (Rank 6), Lightning Bolt (Rank 13), Magma Totem (Rank 6), Stoneskin Totem (Rank 9)
	[73] = {49235,49237,58731,58751},
	-- Earth Shock (Rank 9), Chain Lightning (Rank 7), Chain Heal (Rank 6)
	[74] = {49230,49270,55458},
	-- Flame Shock (Rank 8), Healing Wave (Rank 13), Lightning Shield (Rank 10), Lava Burst (Rank 1), Strength of Earth Totem (Rank 7), Stoneclaw Totem (Rank 9), Flametongue Totem (Rank 7), Searing Totem (Rank 9), Fire Resistance Totem (Rank 5), Frost Resistance Totem (Rank 5), Nature Resistance Totem (Rank 5), Fire Nova (Rank 8), Fire Nova (Rank 8)
	[75] = {49232,49272,49280,51505,57622,58581,58652,58703,58737,58741,58746,61649,61650},
	-- Water Shield (Rank 9), Healing Stream Totem (Rank 8), Mana Spring Totem (Rank 7), Flametongue Weapon (Rank 9), Frostbrand Weapon (Rank 8), Windfury Weapon (Rank 7)
	[76] = {57960,58756,58773,58789,58795,58803},
	-- Lesser Healing Wave (Rank 9)
	[77] = {49276},
	-- Frost Shock (Rank 7), Stoneclaw Totem (Rank 10), Magma Totem (Rank 7), Stoneskin Totem (Rank 10)
	[78] = {49236,58582,58734,58753},
	-- Earth Shock (Rank 10), Lightning Bolt (Rank 14)
	[79] = {49231,49238},
	-- Flame Shock (Rank 9), Chain Lightning (Rank 8), Healing Wave (Rank 14), Ancestral Spirit (Rank 7), Lightning Shield (Rank 11), Hex, Earthliving Weapon (Rank 6), Chain Heal (Rank 7), Strength of Earth Totem (Rank 8), Flametongue Totem (Rank 8), Searing Totem (Rank 10), Fire Resistance Totem (Rank 6), Frost Resistance Totem (Rank 6), Nature Resistance Totem (Rank 6), Healing Stream Totem (Rank 9), Mana Spring Totem (Rank 8), Flametongue Weapon (Rank 10), Frostbrand Weapon (Rank 9), Windfury Weapon (Rank 8), Lava Burst (Rank 2), Fire Nova (Rank 9), Fire Nova (Rank 9)
	[80] = {49233,49271,49273,49277,49281,51514,51994,55459,58643,58656,58704,58739,58745,58749,58757,58774,58790,58796,58804,60043,61654,61657}
}