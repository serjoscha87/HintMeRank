local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "HUNTER") then
	return
end

SpellsByLevel = {
	-- Auto Shot, Track Beasts, Raptor Strike (Rank 1)
	[1] = {75,1494,2973},
	-- Serpent Sting (Rank 1), Aspect of the Monkey
	[4] = {1978,13163},
	-- Hunter's Mark (Rank 1), Arcane Shot (Rank 1)
	[6] = {1130,3044},
	-- Concussive Shot, Raptor Strike (Rank 2)
	[8] = {5116,14260},
	-- Call Pet, Revive Pet, Tame Beast, Dismiss Pet, Feed Pet, Aspect of the Hawk (Rank 1), Serpent Sting (Rank 2), Track Humanoids
	[10] = {883,982,1515,2641,6991,13165,13549,19883},
	-- Mend Pet (Rank 1), Wing Clip, Arcane Shot (Rank 2), Distracting Shot (Rank 1)
	[12] = {136,2974,14281,20736},
	-- Eyes of the Beast, Scare Beast (Rank 1), Eagle Eye
	[14] = {1002,1513,6197},
	-- Mongoose Bite (Rank 1), Aspect of the Cheetah, Immolation Trap (Rank 1), Raptor Strike (Rank 3)
	[16] = {1495,5118,13795,14261},
	-- Multi-Shot (Rank 1), Serpent Sting (Rank 3), Aspect of the Hawk (Rank 2), Track Undead
	[18] = {2643,13550,14318,19884},
	-- Disengage, Freezing Trap (Rank 1), Mend Pet (Rank 2), Arcane Shot (Rank 3), Aspect of the Viper
	[20] = {781,1499,3111,14282,34074},
	-- Scorpid Sting, Hunter's Mark (Rank 2)
	[22] = {3043,14323},
	-- Beast Lore, Raptor Strike (Rank 4), Track Hidden
	[24] = {1462,14262,19885},
	-- Rapid Fire, Serpent Sting (Rank 4), Immolation Trap (Rank 2), Track Elementals
	[26] = {3045,13551,14302,19880},
	-- Mend Pet (Rank 3), Frost Trap, Arcane Shot (Rank 4), Aspect of the Hawk (Rank 3), Aimed Shot (Rank 2)
	[28] = {3661,13809,14283,14319,20900},
	-- Feign Death, Aspect of the Beast, Mongoose Bite (Rank 2), Multi-Shot (Rank 2), Scare Beast (Rank 2)
	[30] = {5384,13161,14269,14288,14326},
	-- Flare, Raptor Strike (Rank 5), Track Demons
	[32] = {1543,14263,19878},
	-- Serpent Sting (Rank 5), Explosive Trap (Rank 1)
	[34] = {13552,13813},
	-- Viper Sting, Mend Pet (Rank 4), Arcane Shot (Rank 5), Immolation Trap (Rank 3), Aimed Shot (Rank 3)
	[36] = {3034,3662,14284,14303,20901},
	-- Aspect of the Hawk (Rank 4)
	[38] = {14320},
	-- Volley (Rank 1), Aspect of the Pack, Raptor Strike (Rank 6), Freezing Trap (Rank 2), Hunter's Mark (Rank 3), Track Giants
	[40] = {1510,13159,14264,14310,14324,19882},
	-- Serpent Sting (Rank 6), Multi-Shot (Rank 3), Counterattack (Rank 2)
	[42] = {13553,14289,20909},
	-- Mend Pet (Rank 5), Mongoose Bite (Rank 3), Arcane Shot (Rank 6), Explosive Trap (Rank 2), Aimed Shot (Rank 4)
	[44] = {13542,14270,14285,14316,20902},
	-- Immolation Trap (Rank 4), Scare Beast (Rank 3), Aspect of the Wild (Rank 1)
	[46] = {14304,14327,20043},
	-- Raptor Strike (Rank 7), Aspect of the Hawk (Rank 5)
	[48] = {14265,14321},
	-- Serpent Sting (Rank 7), Volley (Rank 2), Track Dragonkin, Steady Shot (Rank 1), Wyvern Sting (Rank 2)
	[50] = {13554,14294,19879,56641,24132},
	-- Mend Pet (Rank 6), Arcane Shot (Rank 7), Aimed Shot (Rank 5)
	[52] = {13543,14286,20903},
	-- Multi-Shot (Rank 4), Explosive Trap (Rank 3), Counterattack (Rank 3)
	[54] = {14290,14317,20910},
	-- Raptor Strike (Rank 8), Immolation Trap (Rank 5), Aspect of the Wild (Rank 2)
	[56] = {14266,14305,20190},
	-- Black Arrow (Rank 2)
	[57] = {63668},
	-- Serpent Sting (Rank 8), Mongoose Bite (Rank 4), Volley (Rank 3), Aspect of the Hawk (Rank 6), Hunter's Mark (Rank 4)
	[58] = {13555,14271,14295,14322,14325},
	-- Mend Pet (Rank 7), Arcane Shot (Rank 8), Freezing Trap (Rank 3), Deterrence, Tranquilizing Shot, Multi-Shot (Rank 5), Serpent Sting (Rank 9), Aspect of the Hawk (Rank 7), Aimed Shot (Rank 6), Wyvern Sting (Rank 3)
	[60] = {13544,14287,14311,19263,19801,25294,25295,25296,20904,24133},
	-- Explosive Trap (Rank 4)
	[61] = {27025},
	-- Steady Shot (Rank 2)
	[62] = {34120},
	-- Raptor Strike (Rank 9), Black Arrow (Rank 3)
	[63] = {27014,63669},
	-- Immolation Trap (Rank 6)
	[65] = {27023},
	-- Kill Command, Counterattack (Rank 4)
	[66] = {34026,27067},
	-- Serpent Sting (Rank 10), Multi-Shot (Rank 6), Volley (Rank 4)
	[67] = {27016,27021,27022},
	-- Aspect of the Hawk (Rank 8), Aspect of the Wild (Rank 3), Mend Pet (Rank 8), Snake Trap
	[68] = {27044,27045,27046,34600},
	-- Arcane Shot (Rank 9), Black Arrow (Rank 4)
	[69] = {27019,63670},
	-- Misdirection, Mongoose Bite (Rank 5), Aimed Shot (Rank 7), Wyvern Sting (Rank 4), Explosive Shot (Rank 2)
	[70] = {34477,36916,27065,27068,60051},
	-- Raptor Strike (Rank 10), Steady Shot (Rank 3), Explosive Trap (Rank 5), Kill Shot (Rank 1)
	[71] = {48995,49051,49066,53351},
	-- Immolation Trap (Rank 7), Counterattack (Rank 5)
	[72] = {49055,48998},
	-- Serpent Sting (Rank 11), Arcane Shot (Rank 10)
	[73] = {49000,49044},
	-- Mend Pet (Rank 9), Multi-Shot (Rank 7), Volley (Rank 5), Aspect of the Dragonhawk (Rank 1)
	[74] = {48989,49047,58431,61846},
	-- Master's Call, Kill Shot (Rank 2), Wyvern Sting (Rank 5), Aimed Shot (Rank 8), Explosive Shot (Rank 3), Black Arrow (Rank 5)
	[75] = {53271,61005,49011,49049,60052,63671},
	-- Aspect of the Wild (Rank 4), Hunter's Mark (Rank 5)
	[76] = {49071,53338},
	-- Raptor Strike (Rank 11), Steady Shot (Rank 4), Explosive Trap (Rank 6)
	[77] = {48996,49052,49067},
	-- Immolation Trap (Rank 8), Counterattack (Rank 6)
	[78] = {49056,48999},
	-- Serpent Sting (Rank 12), Arcane Shot (Rank 11)
	[79] = {49001,49045},
	-- Mend Pet (Rank 10), Multi-Shot (Rank 8), Mongoose Bite (Rank 6), Volley (Rank 6), Freezing Arrow (Rank 1), Kill Shot (Rank 3), Aspect of the Dragonhawk (Rank 2), Call Stabled Pet, Wyvern Sting (Rank 6), Aimed Shot (Rank 9), Explosive Shot (Rank 4), Black Arrow (Rank 6)
	[80] = {48990,49048,53339,58434,60192,61006,61847,62757,49012,49050,60053,63672}
}