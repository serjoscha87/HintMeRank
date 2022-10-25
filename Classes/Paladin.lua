local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "PALADIN") then
	return
end

SpellsByLevel = {
	-- Devotion Aura (Rank 1), Holy Light (Rank 1), Seal of Righteousness, Seal of Righteousness, Glyph of Holy Light
	[1] = {465,635,20154,21084,54968},
	-- Blessing of Might (Rank 1), Judgement of Light
	[4] = {19740,20271},
	-- Divine Protection, Holy Light (Rank 2)
	[6] = {498,639},
	-- Hammer of Justice (Rank 1), Purify
	[8] = {853,1152},
	-- Lay on Hands (Rank 1), Hand of Protection (Rank 1), Devotion Aura (Rank 2)
	[10] = {633,1022,10290},
	-- Redemption (Rank 1), Blessing of Might (Rank 2), Judgement of Wisdom
	[12] = {7328,19834,53408},
	-- Holy Light (Rank 3), Blessing of Wisdom (Rank 1), Righteous Defense
	[14] = {647,19742,31789},
	-- Retribution Aura (Rank 1), Righteous Fury, Hand of Reckoning
	[16] = {7294,25780,62124},
	-- Hand of Freedom
	[18] = {1044},
	-- Devotion Aura (Rank 3), Exorcism (Rank 1), Sense Undead, Warhorse (Summon), Flash of Light (Rank 1), Blessing of Kings, Consecration (Rank 1), Summon Warhorse (Summon)
	[20] = {643,879,5502,13819,19750,20217,26573,34769},
	-- Holy Light (Rank 4), Concentration Aura, Blessing of Might (Rank 3), Seal of Justice
	[22] = {1026,19746,19835,20164},
	-- Hammer of Justice (Rank 2), Hand of Protection (Rank 2), Redemption (Rank 2), Turn Evil, Blessing of Wisdom (Rank 2)
	[24] = {5588,5599,10322,10326,19850},
	-- Hand of Salvation, Retribution Aura (Rank 2), Flash of Light (Rank 2)
	[26] = {1038,10298,19939},
	-- Exorcism (Rank 2), Shadow Resistance Aura (Rank 1), Judgement of Justice
	[28] = {5614,19876,53407},
	-- Holy Light (Rank 5), Lay on Hands (Rank 2), Devotion Aura (Rank 4), Divine Intervention, Consecration (Rank 2), Seal of Light
	[30] = {1042,2800,10291,19752,20116,20165},
	-- Blessing of Might (Rank 4), Frost Resistance Aura (Rank 1)
	[32] = {19836,19888},
	-- Divine Shield, Blessing of Wisdom (Rank 3), Flash of Light (Rank 3)
	[34] = {642,19852,19940},
	-- Exorcism (Rank 3), Retribution Aura (Rank 3), Redemption (Rank 3), Fire Resistance Aura (Rank 1)
	[36] = {5615,10299,10324,19891},
	-- Holy Light (Rank 6), Hand of Protection (Rank 3), Seal of Wisdom
	[38] = {3472,10278,20166},
	-- Devotion Aura (Rank 5), Hammer of Justice (Rank 3), Shadow Resistance Aura (Rank 2), Consecration (Rank 3), Charger (Summon), Summon Charger (Summon)
	[40] = {1032,5589,19895,20922,23214,34767},
	-- Cleanse, Blessing of Might (Rank 5), Flash of Light (Rank 4)
	[42] = {4987,19837,19941},
	-- Exorcism (Rank 4), Blessing of Wisdom (Rank 4), Frost Resistance Aura (Rank 2), Hammer of Wrath (Rank 1)
	[44] = {10312,19853,19897,24275},
	-- Hand of Sacrifice, Retribution Aura (Rank 4), Holy Light (Rank 7)
	[46] = {6940,10300,10328},
	-- Fire Resistance Aura (Rank 2), Redemption (Rank 4), Holy Shock (Rank 2)
	[48] = {19899,20772,20929},
	-- Holy Wrath (Rank 1), Devotion Aura (Rank 6), Lay on Hands (Rank 3), Flash of Light (Rank 5), Consecration (Rank 4), Holy Shield (Rank 2)
	[50] = {2812,10292,10310,19942,20923,20927},
	-- Exorcism (Rank 5), Blessing of Might (Rank 6), Shadow Resistance Aura (Rank 3), Hammer of Wrath (Rank 2), Greater Blessing of Might (Rank 1)
	[52] = {10313,19838,19896,24274,25782},
	-- Hammer of Justice (Rank 4), Holy Light (Rank 8), Blessing of Wisdom (Rank 5), Greater Blessing of Wisdom (Rank 1)
	[54] = {10308,10329,19854,25894},
	-- Retribution Aura (Rank 5), Frost Resistance Aura (Rank 3), Holy Shock (Rank 3)
	[56] = {10301,19898,20930},
	-- Flash of Light (Rank 6)
	[58] = {19943},
	-- Devotion Aura (Rank 7), Exorcism (Rank 6), Holy Wrath (Rank 2), Fire Resistance Aura (Rank 3), Redemption (Rank 5), Consecration (Rank 5), Hammer of Wrath (Rank 3), Blessing of Wisdom (Rank 6), Blessing of Might (Rank 7), Holy Light (Rank 9), Greater Blessing of Kings, Greater Blessing of Sanctuary, Greater Blessing of Might (Rank 2), Greater Blessing of Wisdom (Rank 2), Holy Shield (Rank 3), Avenger's Shield (Rank 2)
	[60] = {10293,10314,10318,19900,20773,20924,24239,25290,25291,25292,25898,25899,25916,25918,20928,32699},
	-- Holy Light (Rank 10), Crusader Aura
	[62] = {27135,32223},
	-- Shadow Resistance Aura (Rank 4)
	[63] = {27151},
	-- Seal of Vengeance, Seal of Corruption, Seal of Corruption, Blood Corruption, Judgement of Corruption (Rank 1), Holy Shock (Rank 4)
	[64] = {31801,53736,348704,356110,356112,27174},
	-- Blessing of Wisdom (Rank 7), Greater Blessing of Wisdom (Rank 3)
	[65] = {27142,27143},
	-- Flash of Light (Rank 7), Retribution Aura (Rank 6)
	[66] = {27137,27150},
	-- Exorcism (Rank 7), Frost Resistance Aura (Rank 4), Hammer of Wrath (Rank 4)
	[68] = {27138,27152,27180},
	-- Holy Wrath (Rank 3), Lay on Hands (Rank 4)
	[69] = {27139,27154},
	-- Holy Light (Rank 11), Blessing of Might (Rank 8), Greater Blessing of Might (Rank 3), Devotion Aura (Rank 8), Fire Resistance Aura (Rank 4), Consecration (Rank 6), Avenging Wrath, Holy Shield (Rank 4), Avenger's Shield (Rank 3), Holy Shock (Rank 5)
	[70] = {27136,27140,27141,27149,27153,27173,31884,27179,32700,33072},
	-- Blessing of Wisdom (Rank 8), Greater Blessing of Wisdom (Rank 4), Divine Plea
	[71] = {48935,48937,54428},
	-- Holy Wrath (Rank 4), Redemption (Rank 6)
	[72] = {48816,48949},
	-- Exorcism (Rank 8), Blessing of Might (Rank 9), Greater Blessing of Might (Rank 4)
	[73] = {48800,48931,48933},
	-- Flash of Light (Rank 8), Hammer of Wrath (Rank 5), Devotion Aura (Rank 9)
	[74] = {48784,48805,48941},
	-- Holy Light (Rank 12), Consecration (Rank 7), Shield of Righteousness (Rank 1), Holy Shock (Rank 6), Avenger's Shield (Rank 4), Holy Shield (Rank 5)
	[75] = {48781,48818,53600,48824,48826,48951},
	-- Shadow Resistance Aura (Rank 5), Retribution Aura (Rank 7)
	[76] = {48943,54043},
	-- Blessing of Wisdom (Rank 9), Greater Blessing of Wisdom (Rank 5), Frost Resistance Aura (Rank 5)
	[77] = {48936,48938,48945},
	-- Lay on Hands (Rank 5), Holy Wrath (Rank 5), Fire Resistance Aura (Rank 5)
	[78] = {48788,48817,48947},
	-- Flash of Light (Rank 9), Exorcism (Rank 9), Blessing of Might (Rank 10), Greater Blessing of Might (Rank 5), Devotion Aura (Rank 10), Redemption (Rank 7)
	[79] = {48785,48801,48932,48934,48942,48950},
	-- Holy Light (Rank 13), Hammer of Wrath (Rank 6), Consecration (Rank 8), Sacred Shield (Rank 1), Shield of Righteousness (Rank 2), Holy Shock (Rank 7), Avenger's Shield (Rank 5), Holy Shield (Rank 6)
	[80] = {48782,48806,48819,53601,61411,48825,48827,48952}
}