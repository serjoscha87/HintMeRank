local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "WARLOCK") then
	return
end

SpellsByLevel = {
	-- Immolate (Rank 1), Shadow Bolt (Rank 1), Demon Skin (Rank 1), Summon Imp (Summon), Challenging Howl (Demon)
	[1] = {348,686,687,688,59671},
	-- Corruption (Rank 1), Curse of Weakness (Rank 1)
	[4] = {172,702},
	-- Shadow Bolt (Rank 2), Life Tap (Rank 1)
	[6] = {695,1454},
	-- Curse of Agony (Rank 1), Fear (Rank 1)
	[8] = {980,5782},
	-- Demon Skin (Rank 2), Summon Voidwalker (Summon), Immolate (Rank 2), Drain Soul (Rank 1), Create Healthstone (Rank 1)
	[10] = {696,697,707,1120,6201},
	-- Shadow Bolt (Rank 3), Health Funnel (Rank 1), Curse of Weakness (Rank 2)
	[12] = {705,755,1108},
	-- Drain Life (Rank 1), Corruption (Rank 2)
	[14] = {689,6222},
	-- Life Tap (Rank 2), Unending Breath
	[16] = {1455,5697},
	-- Create Soulstone (Rank 1), Curse of Agony (Rank 2), Searing Pain (Rank 1)
	[18] = {693,1014,5676},
	-- Ritual of Summoning, Demon Armor (Rank 1), Summon Succubus (Summon), Summon Incubus (Summon), Shadow Bolt (Rank 4), Immolate (Rank 3), Health Funnel (Rank 2), Rain of Fire (Rank 1), Felsteed (Summon)
	[20] = {698,706,712,713,1088,1094,3698,5740,5784},
	-- Eye of Kilrogg (Summon), Drain Life (Rank 2), Create Healthstone (Rank 2), Curse of Weakness (Rank 3)
	[22] = {126,699,6202,6205},
	-- Drain Mana, Sense Demons, Corruption (Rank 3), Drain Soul (Rank 2), Shadowburn (Rank 2)
	[24] = {5138,5500,6223,8288,18867},
	-- Detect Invisibility, Life Tap (Rank 3), Curse of Tongues (Rank 1), Searing Pain (Rank 2)
	[26] = {132,1456,1714,17919},
	-- Banish (Rank 1), Shadow Bolt (Rank 5), Health Funnel (Rank 3), Curse of Agony (Rank 3), Create Firestone (Rank 1)
	[28] = {710,1106,3699,6217,6366},
	-- Summon Felhunter (Summon), Drain Life (Rank 3), Demon Armor (Rank 2), Subjugate Demon (Rank 1), Hellfire (Rank 1), Immolate (Rank 4), Create Soulstone (Rank 2)
	[30] = {691,709,1086,1098,1949,2941,20752},
	-- Curse of the Elements (Rank 1), Fear (Rank 2), Shadow Ward (Rank 1), Curse of Weakness (Rank 4), Shadowburn (Rank 3)
	[32] = {1490,6213,6229,7646,18868},
	-- Create Healthstone (Rank 3), Rain of Fire (Rank 2), Corruption (Rank 4), Searing Pain (Rank 3)
	[34] = {5699,6219,7648,17920},
	-- Create Spellstone (Rank 1), Health Funnel (Rank 4), Shadow Bolt (Rank 6), Life Tap (Rank 4), Create Firestone (Rank 2)
	[36] = {2362,3700,7641,11687,17951},
	-- Drain Life (Rank 4), Drain Soul (Rank 3), Curse of Agony (Rank 4)
	[38] = {7651,8289,11711},
	-- Howl of Terror (Rank 1), Immolate (Rank 5), Demon Armor (Rank 3), Create Soulstone (Rank 3), Dreadsteed (Summon), Shadowburn (Rank 4)
	[40] = {5484,11665,11733,20755,23161,18869},
	-- Death Coil (Rank 1), Hellfire (Rank 2), Curse of Weakness (Rank 5), Shadow Ward (Rank 2), Searing Pain (Rank 4)
	[42] = {6789,11683,11707,11739,17921},
	-- Shadow Bolt (Rank 7), Corruption (Rank 5), Health Funnel (Rank 5), Subjugate Demon (Rank 2)
	[44] = {11659,11671,11693,11725},
	-- Rain of Fire (Rank 3), Life Tap (Rank 5), Drain Life (Rank 5), Curse of the Elements (Rank 2), Create Healthstone (Rank 4), Create Firestone (Rank 3)
	[46] = {11677,11688,11699,11721,11729,17952},
	-- Soul Fire (Rank 1), Curse of Agony (Rank 5), Create Spellstone (Rank 2), Banish (Rank 2), Shadowburn (Rank 5)
	[48] = {6353,11712,17727,18647,18870},
	-- Inferno (Summon), Immolate (Rank 6), Curse of Tongues (Rank 2), Demon Armor (Rank 4), Searing Pain (Rank 5), Death Coil (Rank 2), Create Soulstone (Rank 4), Dark Pact (Rank 2)
	[50] = {1122,11667,11719,11734,17922,17925,20756,18937},
	-- Shadow Bolt (Rank 8), Drain Soul (Rank 4), Health Funnel (Rank 6), Curse of Weakness (Rank 6), Shadow Ward (Rank 3)
	[52] = {11660,11675,11694,11708,11740},
	-- Corruption (Rank 6), Hellfire (Rank 3), Drain Life (Rank 6), Howl of Terror (Rank 2)
	[54] = {11672,11684,11700,17928},
	-- Fear (Rank 3), Life Tap (Rank 6), Soul Fire (Rank 2), Create Firestone (Rank 4), Shadowburn (Rank 6)
	[56] = {6215,11689,17924,17953,18871},
	-- Rain of Fire (Rank 4), Curse of Agony (Rank 6), Subjugate Demon (Rank 3), Create Healthstone (Rank 5), Searing Pain (Rank 6), Death Coil (Rank 3)
	[58] = {11678,11713,11726,11730,17923,17926},
	-- Curse of Doom (Rank 1), Shadow Bolt (Rank 9), Immolate (Rank 7), Health Funnel (Rank 7), Curse of the Elements (Rank 3), Demon Armor (Rank 5), Create Spellstone (Rank 3), Ritual of Doom, Create Soulstone (Rank 5), Shadow Bolt (Rank 10), Immolate (Rank 8), Corruption (Rank 7), Shadow Ward (Rank 4), Shadow Cleave (Demon), Immolation Aura (Demon), Demon Charge (Demon), Dark Pact (Rank 3), Unstable Affliction (Rank 2), Shadowfury (Rank 2)
	[60] = {603,11661,11668,11695,11722,11735,17728,18540,20757,25307,25309,25311,28610,50581,50589,54785,18938,30404,30413},
	-- Curse of Weakness (Rank 7)
	[61] = {27224},
	-- Drain Life (Rank 7), Fel Armor (Rank 1)
	[62] = {27219,28176},
	-- Shadowburn (Rank 7)
	[63] = {27263},
	-- Soul Fire (Rank 3), Incinerate (Rank 1)
	[64] = {27211,29722},
	-- Searing Pain (Rank 7), Corruption (Rank 8)
	[65] = {27210,27216},
	-- Create Firestone (Rank 5), Create Spellstone (Rank 4), Soulshatter
	[66] = {27250,28172,29858},
	-- Drain Soul (Rank 5), Curse of Agony (Rank 7), Health Funnel (Rank 8)
	[67] = {27217,27218,27259},
	-- Hellfire (Rank 4), Life Tap (Rank 7), Death Coil (Rank 4), Create Healthstone (Rank 6), Ritual of Souls (Rank 1)
	[68] = {27213,27222,27223,27230,29893},
	-- Shadow Bolt (Rank 11), Rain of Fire (Rank 5), Immolate (Rank 9), Drain Life (Rank 8), Curse of the Elements (Rank 4), Fel Armor (Rank 2), Curse of Weakness (Rank 8)
	[69] = {27209,27212,27215,27220,27228,28189,30909},
	-- Create Soulstone (Rank 6), Seed of Corruption (Rank 1), Demon Armor (Rank 6), Searing Pain (Rank 8), Soul Fire (Rank 4), Curse of Doom (Rank 2), Incinerate (Rank 2), Dark Pact (Rank 4), Unstable Affliction (Rank 3), Shadowfury (Rank 3), Shadowburn (Rank 8), Haunt (Rank 2), Chaos Bolt (Rank 2)
	[70] = {27238,27243,27260,30459,30545,30910,32231,27265,30405,30414,30546,59161,59170},
	-- Corruption (Rank 9), Curse of Weakness (Rank 9)
	[71] = {47812,50511},
	-- Rain of Fire (Rank 6), Create Spellstone (Rank 5), Shadow Ward (Rank 5), Subjugate Demon (Rank 4)
	[72] = {47819,47886,47890,61191},
	-- Death Coil (Rank 5), Curse of Agony (Rank 8), Create Healthstone (Rank 7)
	[73] = {47859,47863,47871},
	-- Shadow Bolt (Rank 12), Searing Pain (Rank 9), Incinerate (Rank 3), Fel Armor (Rank 3), Create Firestone (Rank 6)
	[74] = {47808,47814,47837,47892,60219},
	-- Immolate (Rank 10), Soul Fire (Rank 5), Seed of Corruption (Rank 2), Shadowflame (Rank 1), Shadowburn (Rank 9), Unstable Affliction (Rank 4), Shadowfury (Rank 4), Haunt (Rank 3), Chaos Bolt (Rank 3)
	[75] = {47810,47824,47835,47897,47826,47841,47846,59163,59171},
	-- Demon Armor (Rank 7), Health Funnel (Rank 9), Create Soulstone (Rank 7)
	[76] = {47793,47856,47884},
	-- Corruption (Rank 10), Drain Soul (Rank 6)
	[77] = {47813,47855},
	-- Hellfire (Rank 5), Drain Life (Rank 9), Death Coil (Rank 6), Curse of the Elements (Rank 5), Create Spellstone (Rank 6), Shadow Ward (Rank 6)
	[78] = {47823,47857,47860,47865,47888,47891},
	-- Shadow Bolt (Rank 13), Searing Pain (Rank 10), Rain of Fire (Rank 7), Curse of Agony (Rank 9), Create Healthstone (Rank 8), Fel Armor (Rank 4)
	[79] = {47809,47815,47820,47864,47878,47893},
	-- Immolate (Rank 11), Soul Fire (Rank 6), Seed of Corruption (Rank 3), Incinerate (Rank 4), Curse of Doom (Rank 3), Demon Armor (Rank 8), Demonic Circle: Summon, Demonic Circle: Teleport, Life Tap (Rank 8), Ritual of Souls (Rank 2), Create Firestone (Rank 7), Shadowflame (Rank 2), Shadowburn (Rank 10), Unstable Affliction (Rank 5), Shadowfury (Rank 5), Dark Pact (Rank 5), Haunt (Rank 4), Chaos Bolt (Rank 4)
	[80] = {47811,47825,47836,47838,47867,47889,48018,48020,57946,58887,60220,61290,47827,47843,47847,59092,59164,59172}
}