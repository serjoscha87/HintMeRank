local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "MAGE") then
	return
end

SpellsByLevel = {
	-- Fireball (Rank 1), Frost Armor (Rank 1), Arcane Intellect (Rank 1)
	[1] = {133,168,1459},
	-- Frostbolt (Rank 1), Conjure Water (Rank 1)
	[4] = {116,5504},
	-- Fireball (Rank 2), Conjure Food (Rank 1), Fire Blast (Rank 1)
	[6] = {143,587,2136},
	-- Polymorph (Rank 1), Frostbolt (Rank 2), Arcane Missiles (Rank 1)
	[8] = {118,205,5143},
	-- Frost Nova (Rank 1), Conjure Water (Rank 2), Frost Armor (Rank 2)
	[10] = {122,5505,7300},
	-- Slow Fall, Fireball (Rank 3), Conjure Food (Rank 2), Dampen Magic (Rank 1)
	[12] = {130,145,597,604},
	-- Frostbolt (Rank 3), Arcane Explosion (Rank 1), Arcane Intellect (Rank 2), Fire Blast (Rank 2)
	[14] = {837,1449,1460,2137},
	-- Flamestrike (Rank 1), Arcane Missiles (Rank 2)
	[16] = {2120,5144},
	-- Remove Curse, Amplify Magic (Rank 1), Fireball (Rank 4)
	[18] = {475,1008,3140},
	-- Blizzard (Rank 1), Fire Ward (Rank 1), Mana Shield (Rank 1), Blink, Teleport: Stormwind, Teleport: Ironforge, Teleport: Undercity, Teleport: Orgrimmar, Conjure Water (Rank 3), Frost Armor (Rank 3), Frostbolt (Rank 4), Evocation, Polymorph (Rank 2), Teleport: Exodar, Teleport: Silvermoon
	[20] = {10,543,1463,1953,3561,3562,3563,3567,5506,7301,7322,12051,12824,32271,32272},
	-- Conjure Food (Rank 3), Fire Blast (Rank 3), Scorch (Rank 1), Frost Ward (Rank 1), Arcane Explosion (Rank 2)
	[22] = {990,2138,2948,6143,8437},
	-- Flamestrike (Rank 2), Counterspell, Arcane Missiles (Rank 3), Fireball (Rank 5), Dampen Magic (Rank 2)
	[24] = {2121,2139,5145,8400,8450},
	-- Cone of Cold (Rank 1), Frost Nova (Rank 2), Frostbolt (Rank 5)
	[26] = {120,865,8406},
	-- Conjure Mana Gem (Rank 1), Arcane Intellect (Rank 3), Blizzard (Rank 2), Scorch (Rank 2), Mana Shield (Rank 2)
	[28] = {759,1461,6141,8444,8494},
	-- Teleport: Darnassus, Teleport: Thunder Bluff, Conjure Water (Rank 4), Ice Armor (Rank 1), Fireball (Rank 6), Fire Blast (Rank 4), Arcane Explosion (Rank 3), Amplify Magic (Rank 2), Fire Ward (Rank 2), Ice Block
	[30] = {3565,3566,6127,7302,8401,8412,8438,8455,8457,45438},
	-- Conjure Food (Rank 4), Frostbolt (Rank 6), Arcane Missiles (Rank 4), Flamestrike (Rank 3), Frost Ward (Rank 2)
	[32] = {6129,8407,8416,8422,8461},
	-- Mage Armor (Rank 1), Scorch (Rank 3), Cone of Cold (Rank 2)
	[34] = {6117,8445,8492},
	-- Teleport: Stonard, Teleport: Theramore, Portal: Theramore, Portal: Stonard
	[35] = {49358,49359,49360,49361},
	-- Fireball (Rank 7), Blizzard (Rank 3), Dampen Magic (Rank 3), Mana Shield (Rank 3)
	[36] = {8402,8427,8451,8495},
	-- Conjure Mana Gem (Rank 2), Frostbolt (Rank 7), Fire Blast (Rank 5), Arcane Explosion (Rank 4)
	[38] = {3552,8408,8413,8439},
	-- Frost Nova (Rank 3), Ice Armor (Rank 2), Arcane Missiles (Rank 5), Flamestrike (Rank 4), Scorch (Rank 4), Fire Ward (Rank 3), Portal: Stormwind, Conjure Water (Rank 5), Portal: Ironforge, Portal: Orgrimmar, Portal: Undercity, Polymorph (Rank 3), Portal: Exodar, Portal: Silvermoon
	[40] = {6131,7320,8417,8423,8446,8458,10059,10138,11416,11417,11418,12825,32266,32267},
	-- Frost Ward (Rank 3), Conjure Food (Rank 5), Fireball (Rank 8), Arcane Intellect (Rank 4), Cone of Cold (Rank 3), Amplify Magic (Rank 3)
	[42] = {8462,10144,10148,10156,10159,10169},
	-- Frostbolt (Rank 8), Blizzard (Rank 4), Mana Shield (Rank 4)
	[44] = {10179,10185,10191},
	-- Fire Blast (Rank 6), Arcane Explosion (Rank 5), Scorch (Rank 5), Mage Armor (Rank 2)
	[46] = {10197,10201,10205,22782},
	-- Conjure Mana Gem (Rank 3), Fireball (Rank 9), Dampen Magic (Rank 4), Arcane Missiles (Rank 6), Flamestrike (Rank 5)
	[48] = {10053,10149,10173,10211,10215},
	-- Conjure Water (Rank 6), Cone of Cold (Rank 4), Frostbolt (Rank 9), Ice Armor (Rank 3), Fire Ward (Rank 4), Portal: Darnassus, Portal: Thunder Bluff, Summon Water Elemental (Prototype)
	[50] = {10139,10160,10180,10219,10223,11419,11420,70909},
	-- Conjure Food (Rank 6), Frost Ward (Rank 4), Blizzard (Rank 5), Mana Shield (Rank 5), Scorch (Rank 6)
	[52] = {10145,10177,10186,10192,10206},
	-- Fireball (Rank 10), Amplify Magic (Rank 4), Fire Blast (Rank 7), Arcane Explosion (Rank 6), Frost Nova (Rank 4)
	[54] = {10150,10170,10199,10202,10230},
	-- Arcane Intellect (Rank 5), Frostbolt (Rank 10), Arcane Missiles (Rank 7), Flamestrike (Rank 6), Arcane Brilliance (Rank 1)
	[56] = {10157,10181,10212,10216,23028},
	-- Conjure Mana Gem (Rank 4), Cone of Cold (Rank 5), Scorch (Rank 7), Mage Armor (Rank 3)
	[58] = {10054,10161,10207,22783},
	-- Conjure Water (Rank 7), Fireball (Rank 11), Dampen Magic (Rank 5), Blizzard (Rank 6), Mana Shield (Rank 6), Ice Armor (Rank 4), Fire Ward (Rank 5), Polymorph (Rank 4), Frostbolt (Rank 11), Fireball (Rank 12), Arcane Missiles (Rank 8), Polymorph (Turtle), Polymorph (Pig), Frost Ward (Rank 5), Conjure Food (Rank 7), Teleport: Shattrath, Teleport: Shattrath, Polymorph (Black Cat), Polymorph (Rabbit), Polymorph (Turkey)
	[60] = {10140,10151,10174,10187,10193,10220,10225,12826,25304,25306,25345,28271,28272,28609,28612,33690,35715,61305,61721,61780},
	-- Fire Blast (Rank 8)
	[61] = {27078},
	-- Arcane Explosion (Rank 7), Molten Armor (Rank 1)
	[62] = {27080,30482},
	-- Frostbolt (Rank 12), Arcane Missiles (Rank 9), Amplify Magic (Rank 5)
	[63] = {27071,27075,27130},
	-- Flamestrike (Rank 7), Arcane Blast (Rank 1)
	[64] = {27086,30451},
	-- Scorch (Rank 8), Cone of Cold (Rank 6), Portal: Shattrath, Portal: Shattrath, Conjure Water (Rank 8)
	[65] = {27073,27087,33691,35717,37420},
	-- Fireball (Rank 13), Ice Lance (Rank 1)
	[66] = {27070,30455},
	-- Frost Nova (Rank 5), Dampen Magic (Rank 6)
	[67] = {27088,33944},
	-- Invisibility, Blizzard (Rank 7), Conjure Mana Gem (Rank 5), Mana Shield (Rank 7)
	[68] = {66,27085,27101,27131},
	-- Frostbolt (Rank 13), Ice Armor (Rank 5), Mage Armor (Rank 4), Fire Ward (Rank 6), Amplify Magic (Rank 6), Arcane Missiles (Rank 10)
	[69] = {27072,27124,27125,27128,33946,38699},
	-- Scorch (Rank 9), Fire Blast (Rank 9), Arcane Explosion (Rank 8), Conjure Water (Rank 9), Arcane Intellect (Rank 6), Arcane Brilliance (Rank 2), Spellsteal, Frost Ward (Rank 6), Conjure Food (Rank 8), Fireball (Rank 14), Frostbolt (Rank 14), Arcane Missiles (Rank 11), Ritual of Refreshment (Rank 1)
	[70] = {27074,27079,27082,27090,27126,27127,30449,32796,33717,38692,38697,38704,43987},
	-- Arcane Blast (Rank 2), Mage Armor (Rank 5), Molten Armor (Rank 2), Teleport: Dalaran
	[71] = {42894,43023,43045,53140},
	-- Ice Lance (Rank 2), Flamestrike (Rank 8), Cone of Cold (Rank 7)
	[72] = {42913,42925,42930},
	-- Scorch (Rank 10), Mana Shield (Rank 8)
	[73] = {42858,43019},
	-- Fireball (Rank 15), Fire Blast (Rank 10), Blizzard (Rank 8), Portal: Dalaran
	[74] = {42832,42872,42939,53142},
	-- Frostbolt (Rank 15), Arcane Missiles (Rank 12), Frost Nova (Rank 6), Conjure Refreshment (Rank 1), Frostfire Bolt (Rank 1)
	[75] = {42841,42843,42917,42955,44614},
	-- Arcane Blast (Rank 3), Arcane Explosion (Rank 9), Dampen Magic (Rank 7)
	[76] = {42896,42920,43015},
	-- Conjure Mana Gem (Rank 6), Amplify Magic (Rank 7)
	[77] = {42985,43017},
	-- Fireball (Rank 16), Scorch (Rank 11), Ice Lance (Rank 3), Fire Ward (Rank 7)
	[78] = {42833,42859,42914,43010},
	-- Frostbolt (Rank 16), Arcane Missiles (Rank 13), Flamestrike (Rank 9), Cone of Cold (Rank 8), Ice Armor (Rank 6), Frost Ward (Rank 7), Mana Shield (Rank 9), Mage Armor (Rank 6), Molten Armor (Rank 3)
	[79] = {42842,42846,42926,42931,43008,43012,43020,43024,43046},
	-- Fire Blast (Rank 11), Arcane Blast (Rank 4), Arcane Explosion (Rank 10), Blizzard (Rank 9), Conjure Refreshment (Rank 2), Arcane Intellect (Rank 7), Arcane Brilliance (Rank 3), Frostfire Bolt (Rank 2), Mirror Image, Ritual of Refreshment (Rank 2), Dalaran Intellect (Rank 7), Dalaran Brilliance (Rank 3)
	[80] = {42873,42897,42921,42940,42956,42995,43002,47610,55342,58659,61024,61316}
}