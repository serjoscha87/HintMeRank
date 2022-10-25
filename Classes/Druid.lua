local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "DRUID") then
	return
end

SpellsByLevel = {
	-- Mark of the Wild (Rank 1), Wrath (Rank 1), Healing Touch (Rank 1)
	[1] = {1126,5176,5185},
	-- Rejuvenation (Rank 1), Moonfire (Rank 1)
	[4] = {774,8921},
	-- Thorns (Rank 1), Wrath (Rank 2)
	[6] = {467,5177},
	-- Entangling Roots (Rank 1), Healing Touch (Rank 2)
	[8] = {339,5186},
	-- Demoralizing Roar (Rank 1), Rejuvenation (Rank 2), Mark of the Wild (Rank 2), Bear Form (Shapeshift), Growl, Maul (Rank 1), Moonfire (Rank 2), Nature's Grasp (Rank 1), Teleport: Moonglade
	[10] = {99,1058,5232,5487,6795,6807,8924,16689,18960},
	-- Enrage, Regrowth (Rank 1), Revive (Rank 1)
	[12] = {5229,8936,50769},
	-- Thorns (Rank 2), Wrath (Rank 3), Healing Touch (Rank 3), Bash (Rank 1), Cure Poison
	[14] = {782,5178,5187,5211,8946},
	-- Swipe (Bear) (Rank 1), Travel Form (Shapeshift), Aquatic Form (Shapeshift), Rejuvenation (Rank 3), Moonfire (Rank 3)
	[16] = {779,783,1066,1430,8925},
	-- Faerie Fire, Entangling Roots (Rank 2), Hibernate (Rank 1), Maul (Rank 2), Regrowth (Rank 2), Nature's Grasp (Rank 2), Faerie Fire (Feral)
	[18] = {770,1062,2637,6808,8938,16810,16857},
	-- Cat Form (Shapeshift), Rip (Rank 1), Claw (Rank 1), Demoralizing Roar (Rank 2), Starfire (Rank 1), Healing Touch (Rank 4), Prowl, Mark of the Wild (Rank 3), Feral Charge - Bear, Rebirth (Rank 1), Feral Charge - Cat
	[20] = {768,1079,1082,1735,2912,5188,5215,6756,16979,20484,49376},
	-- Rejuvenation (Rank 4), Soothe Animal (Rank 1), Wrath (Rank 4), Shred (Rank 1), Moonfire (Rank 4)
	[22] = {2090,2908,5179,5221,8926},
	-- Swipe (Bear) (Rank 2), Thorns (Rank 3), Rake (Rank 1), Remove Curse, Tiger's Fury (Rank 1), Regrowth (Rank 3), Revive (Rank 2)
	[24] = {780,1075,1822,2782,5217,8939,50768},
	-- Dash (Rank 1), Abolish Poison, Healing Touch (Rank 5), Maul (Rank 3), Starfire (Rank 2)
	[26] = {1850,2893,5189,6809,8949},
	-- Rejuvenation (Rank 5), Claw (Rank 2), Entangling Roots (Rank 3), Challenging Roar, Moonfire (Rank 5), Cower (Rank 1), Rip (Rank 2), Nature's Grasp (Rank 3)
	[28] = {2091,3029,5195,5209,8927,8998,9492,16811},
	-- Tranquility (Rank 1), Wrath (Rank 5), Mark of the Wild (Rank 4), Bash (Rank 2), Shred (Rank 2), Regrowth (Rank 4), Rebirth (Rank 2), Tranquility (Rank 1), Insect Swarm (Rank 2)
	[30] = {740,5180,5234,6798,6800,8940,20739,44203,24974},
	-- Track Humanoids, Healing Touch (Rank 6), Ravage (Rank 1), Demoralizing Roar (Rank 3), Ferocious Bite (Rank 1)
	[32] = {5225,6778,6785,9490,22568},
	-- Swipe (Bear) (Rank 3), Rake (Rank 2), Rejuvenation (Rank 6), Thorns (Rank 4), Moonfire (Rank 6), Starfire (Rank 3), Maul (Rank 4)
	[34] = {769,1823,3627,8914,8928,8950,8972},
	-- Tiger's Fury (Rank 2), Regrowth (Rank 5), Pounce (Rank 1), Rip (Rank 3), Frenzied Regeneration, Revive (Rank 3)
	[36] = {6793,8941,9005,9493,22842,50767},
	-- Entangling Roots (Rank 4), Claw (Rank 3), Wrath (Rank 6), Healing Touch (Rank 7), Soothe Animal (Rank 2), Shred (Rank 3), Nature's Grasp (Rank 4), Hibernate (Rank 2)
	[38] = {5196,5201,6780,8903,8955,8992,16812,18657},
	-- Mark of the Wild (Rank 5), Rejuvenation (Rank 7), Tranquility (Rank 2), Moonfire (Rank 7), Cower (Rank 2), Dire Bear Form (Shapeshift), Hurricane (Rank 1), Feline Grace (Passive), Rebirth (Rank 3), Ferocious Bite (Rank 2), Innervate, Tranquility (Rank 2), Savage Defense (Passive), Insect Swarm (Rank 3)
	[40] = {8907,8910,8918,8929,9000,9634,16914,20719,20742,22827,29166,44205,62600,24975},
	-- Ravage (Rank 2), Starfire (Rank 4), Maul (Rank 5), Demoralizing Roar (Rank 4), Regrowth (Rank 6)
	[42] = {6787,8951,9745,9747,9750},
	-- Rake (Rank 3), Rip (Rank 4), Swipe (Bear) (Rank 4), Thorns (Rank 5), Healing Touch (Rank 8), Barkskin
	[44] = {1824,9752,9754,9756,9758,22812},
	-- Wrath (Rank 7), Bash (Rank 3), Dash (Rank 2), Pounce (Rank 2), Shred (Rank 4), Moonfire (Rank 8), Rejuvenation (Rank 8)
	[46] = {8905,8983,9821,9823,9829,9833,9839},
	-- Tiger's Fury (Rank 3), Claw (Rank 4), Entangling Roots (Rank 5), Regrowth (Rank 7), Nature's Grasp (Rank 5), Ferocious Bite (Rank 3), Revive (Rank 4)
	[48] = {9845,9849,9852,9856,16813,22828,50766},
	-- Tranquility (Rank 3), Ravage (Rank 3), Starfire (Rank 5), Maul (Rank 6), Mark of the Wild (Rank 6), Healing Touch (Rank 9), Hurricane (Rank 2), Rebirth (Rank 4), Gift of the Wild (Rank 1), Mangle (Cat) (Rank 1), Mangle (Bear) (Rank 1), Tree of Life (Shapeshift), Tranquility (Rank 3), Insect Swarm (Rank 4)
	[50] = {9862,9866,9875,9880,9884,9888,17401,20747,21849,33876,33878,33891,44206,24976},
	-- Moonfire (Rank 9), Rejuvenation (Rank 9), Cower (Rank 3), Rip (Rank 5), Demoralizing Roar (Rank 5)
	[52] = {9834,9840,9892,9894,9898},
	-- Shred (Rank 5), Regrowth (Rank 8), Soothe Animal (Rank 3), Rake (Rank 4), Swipe (Bear) (Rank 5), Thorns (Rank 6), Wrath (Rank 8)
	[54] = {9830,9857,9901,9904,9908,9910,9912},
	-- Pounce (Rank 3), Healing Touch (Rank 10), Ferocious Bite (Rank 4)
	[56] = {9827,9889,22829},
	-- Moonfire (Rank 10), Rejuvenation (Rank 10), Claw (Rank 5), Entangling Roots (Rank 6), Ravage (Rank 4), Starfire (Rank 6), Maul (Rank 7), Nature's Grasp (Rank 6), Hibernate (Rank 3), Mangle (Cat) (Rank 2), Mangle (Bear) (Rank 2)
	[58] = {9835,9841,9850,9853,9867,9876,9881,17329,18658,33982,33986},
	-- Tiger's Fury (Rank 4), Regrowth (Rank 9), Tranquility (Rank 4), Mark of the Wild (Rank 7), Rip (Rank 6), Hurricane (Rank 3), Rebirth (Rank 5), Gift of the Wild (Rank 2), Healing Touch (Rank 11), Starfire (Rank 7), Rejuvenation (Rank 11), Ferocious Bite (Rank 5), Cower (Rank 4), Flight Form (Shapeshift), Tranquility (Rank 4), Revive (Rank 5), Insect Swarm (Rank 5), Typhoon (Rank 2)
	[60] = {9846,9858,9863,9885,9896,17402,20748,21850,25297,25298,25299,31018,31709,33943,44207,50765,24977,53223},
	-- Wrath (Rank 9), Shred (Rank 6)
	[61] = {26984,27001},
	-- Maim (Rank 1), Healing Touch (Rank 12), Demoralizing Roar (Rank 6)
	[62] = {22570,26978,26998},
	-- Ferocious Bite (Rank 6), Rejuvenation (Rank 12), Moonfire (Rank 11)
	[63] = {24248,26981,26987},
	-- Thorns (Rank 7), Swipe (Bear) (Rank 6), Rake (Rank 5), Lifebloom (Rank 1)
	[64] = {26992,26997,27003,33763},
	-- Regrowth (Rank 10), Dash (Rank 3)
	[65] = {26980,33357},
	-- Ravage (Rank 5), Pounce (Rank 4), Lacerate (Rank 1)
	[66] = {27005,27006,33745},
	-- Starfire (Rank 8), Maul (Rank 8), Claw (Rank 6), Rip (Rank 7)
	[67] = {26986,26996,27000,27008},
	-- Entangling Roots (Rank 7), Nature's Grasp (Rank 7), Mangle (Cat) (Rank 3), Mangle (Bear) (Rank 3)
	[68] = {26989,27009,33983,33987},
	-- Healing Touch (Rank 13), Rejuvenation (Rank 13), Wrath (Rank 10), Rebirth (Rank 6), Cower (Rank 5), Revive (Rank 6)
	[69] = {26979,26982,26985,26994,27004,50764},
	-- Tranquility (Rank 5), Moonfire (Rank 12), Mark of the Wild (Rank 8), Gift of the Wild (Rank 3), Soothe Animal (Rank 4), Shred (Rank 7), Hurricane (Rank 4), Cyclone, Swift Flight Form (Shapeshift), Tranquility (Rank 5), Insect Swarm (Rank 6), Starfall (Rank 2), Typhoon (Rank 3), Wild Growth (Rank 2)
	[70] = {26983,26988,26990,26991,26995,27002,27012,33786,40120,44208,27013,53199,53225,53248},
	-- Regrowth (Rank 11), Demoralizing Roar (Rank 7), Rip (Rank 8), Tiger's Fury (Rank 5), Swipe (Cat) (Rank 1)
	[71] = {48442,48559,49799,50212,62078},
	-- Lifebloom (Rank 2), Starfire (Rank 9), Swipe (Bear) (Rank 7), Rake (Rank 6), Ferocious Bite (Rank 7)
	[72] = {48450,48464,48561,48573,48576},
	-- Maul (Rank 9), Lacerate (Rank 2), Claw (Rank 7), Ravage (Rank 6)
	[73] = {48479,48567,48569,48578},
	-- Healing Touch (Rank 14), Wrath (Rank 11), Maim (Rank 2), Thorns (Rank 8)
	[74] = {48377,48459,49802,53307},
	-- Rejuvenation (Rank 14), Tranquility (Rank 6), Moonfire (Rank 13), Mangle (Bear) (Rank 4), Mangle (Cat) (Rank 4), Shred (Rank 8), Savage Roar (Rank 1), Starfall (Rank 3), Typhoon (Rank 4), Wild Growth (Rank 3)
	[75] = {48440,48446,48462,48563,48565,48571,52610,53200,53226,53249},
	-- Cower (Rank 6)
	[76] = {48575},
	-- Regrowth (Rank 12), Demoralizing Roar (Rank 8), Swipe (Bear) (Rank 8), Pounce (Rank 5)
	[77] = {48443,48560,48562,49803},
	-- Starfire (Rank 10), Rake (Rank 7), Ferocious Bite (Rank 8), Entangling Roots (Rank 8), Nature's Grasp (Rank 8)
	[78] = {48465,48574,48577,53308,53312},
	-- Healing Touch (Rank 15), Wrath (Rank 12), Rebirth (Rank 7), Maul (Rank 10), Claw (Rank 8), Ravage (Rank 7), Tiger's Fury (Rank 6)
	[79] = {48378,48461,48477,48480,48570,48579,50213},
	-- Rejuvenation (Rank 15), Tranquility (Rank 7), Lifebloom (Rank 3), Moonfire (Rank 14), Hurricane (Rank 5), Mark of the Wild (Rank 9), Gift of the Wild (Rank 4), Mangle (Bear) (Rank 5), Mangle (Cat) (Rank 5), Lacerate (Rank 3), Shred (Rank 9), Rip (Rank 9), Nourish (Rank 1), Revive (Rank 7), Insect Swarm (Rank 7), Starfall (Rank 4), Wild Growth (Rank 4), Typhoon (Rank 5)
	[80] = {48441,48447,48451,48463,48467,48469,48470,48564,48566,48568,48572,49800,50464,50763,48468,53201,53251,61384}
}