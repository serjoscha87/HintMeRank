local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "DRUID") then
	return
end 

SpellsById = {
    ["DRUID"] = {
        [99] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 1735
            }
        },
        [339] = {
            ["learnAtLvl"] = 8,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 18,
                ["id"] = 1062
            }
        },
        [467] = {
            ["learnAtLvl"] = 6,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 14,
                ["id"] = 782
            }
        },
        [740] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 8918
            }
        },
        [768] = {
            ["learnAtLvl"] = 20,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [769] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 9754
            }
        },
        [770] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 778
            }
        },
        [774] = {
            ["learnAtLvl"] = 4,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 10,
                ["id"] = 1058
            }
        },
        [778] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 9749
            }
        },
        [779] = {
            ["learnAtLvl"] = 16,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 780
            }
        },
        [780] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 769
            }
        },
        [782] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 1075
            }
        },
        [783] = {
            ["learnAtLvl"] = 30,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [1058] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 16,
                ["id"] = 1430
            }
        },
        [1062] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 5195
            }
        },
        [1066] = {
            ["learnAtLvl"] = 16,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [1075] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 8914
            }
        },
        [1079] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 9492
            }
        },
        [1082] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 3029
            }
        },
        [1126] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 10,
                ["id"] = 5232
            }
        },
        [1430] = {
            ["learnAtLvl"] = 16,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 2090
            }
        },
        [1735] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 9490
            }
        },
        [1822] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 1823
            }
        },
        [1823] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 1824
            }
        },
        [1824] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 9904
            }
        },
        [1850] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 9821
            }
        },
        [2090] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 2091
            }
        },
        [2091] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 3627
            }
        },
        [2637] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 18657
            }
        },
        [2908] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 8955
            }
        },
        [2912] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 8949
            }
        },
        [3029] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 5201
            }
        },
        [3627] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 8910
            }
        },
        [5176] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 6,
                ["id"] = 5177
            }
        },
        [5177] = {
            ["learnAtLvl"] = 6,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 14,
                ["id"] = 5178
            }
        },
        [5178] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 5179
            }
        },
        [5179] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 5180
            }
        },
        [5180] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 6780
            }
        },
        [5185] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 8,
                ["id"] = 5186
            }
        },
        [5186] = {
            ["learnAtLvl"] = 8,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 14,
                ["id"] = 5187
            }
        },
        [5187] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 5188
            }
        },
        [5188] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 5189
            }
        },
        [5189] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 6778
            }
        },
        [5195] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 5196
            }
        },
        [5196] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 9852
            }
        },
        [5201] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 9849
            }
        },
        [5211] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 6798
            }
        },
        [5215] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 6783
            }
        },
        [5217] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 6793
            }
        },
        [5221] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 6800
            }
        },
        [5232] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 6756
            }
        },
        [5234] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 8907
            }
        },
        [5487] = {
            ["learnAtLvl"] = 10,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [5570] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 24974
            }
        },
        [6756] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 5234
            }
        },
        [6778] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 8903
            }
        },
        [6780] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 8905
            }
        },
        [6783] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 9913
            }
        },
        [6785] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 6787
            }
        },
        [6787] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 9866
            }
        },
        [6793] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 9845
            }
        },
        [6798] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 8983
            }
        },
        [6800] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 8992
            }
        },
        [6807] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 18,
                ["id"] = 6808
            }
        },
        [6808] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 6809
            }
        },
        [6809] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 8972
            }
        },
        [8903] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 9758
            }
        },
        [8905] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 9912
            }
        },
        [8907] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 9884
            }
        },
        [8910] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 9839
            }
        },
        [8914] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 9756
            }
        },
        [8918] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 9862
            }
        },
        [8921] = {
            ["learnAtLvl"] = 4,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 10,
                ["id"] = 8924
            }
        },
        [8924] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 16,
                ["id"] = 8925
            }
        },
        [8925] = {
            ["learnAtLvl"] = 16,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 8926
            }
        },
        [8926] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 8927
            }
        },
        [8927] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 8928
            }
        },
        [8928] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 8929
            }
        },
        [8929] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 9833
            }
        },
        [8936] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 18,
                ["id"] = 8938
            }
        },
        [8938] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 8939
            }
        },
        [8939] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 8940
            }
        },
        [8940] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 8941
            }
        },
        [8941] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 9750
            }
        },
        [8949] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 8950
            }
        },
        [8950] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 8951
            }
        },
        [8951] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 9875
            }
        },
        [8955] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 9901
            }
        },
        [8972] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 9745
            }
        },
        [8983] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [8992] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 9829
            }
        },
        [8998] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 9000
            }
        },
        [9000] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 9892
            }
        },
        [9005] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 9823
            }
        },
        [9490] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 9747
            }
        },
        [9492] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 9493
            }
        },
        [9493] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 9752
            }
        },
        [9634] = {
            ["learnAtLvl"] = 40,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [9745] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 9880
            }
        },
        [9747] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 9898
            }
        },
        [9749] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 9907
            }
        },
        [9750] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 9856
            }
        },
        [9752] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 9894
            }
        },
        [9754] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 9908
            }
        },
        [9756] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 9910
            }
        },
        [9758] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 9888
            }
        },
        [9821] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [9823] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 9827
            }
        },
        [9827] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [9829] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 9830
            }
        },
        [9830] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [9833] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 9834
            }
        },
        [9834] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 9835
            }
        },
        [9835] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 10,
            ["nextRank"] = nil
        },
        [9839] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 9840
            }
        },
        [9840] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 9841
            }
        },
        [9841] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25299
            }
        },
        [9845] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 9846
            }
        },
        [9846] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [9849] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 9850
            }
        },
        [9850] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [9852] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 9853
            }
        },
        [9853] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [9856] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 9857
            }
        },
        [9857] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 9858
            }
        },
        [9858] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [9862] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 9863
            }
        },
        [9863] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [9866] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 9867
            }
        },
        [9867] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [9875] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 9876
            }
        },
        [9876] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25298
            }
        },
        [9880] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 9881
            }
        },
        [9881] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [9884] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 9885
            }
        },
        [9885] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [9888] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 9889
            }
        },
        [9889] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25297
            }
        },
        [9892] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [9894] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 9896
            }
        },
        [9896] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [9898] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [9901] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [9904] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [9907] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [9908] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [9910] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [9912] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [9913] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [16689] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 18,
                ["id"] = 16810
            }
        },
        [16810] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 16811
            }
        },
        [16811] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 16812
            }
        },
        [16812] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 16813
            }
        },
        [16813] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 17329
            }
        },
        [16814] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16815
            }
        },
        [16815] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16816
            }
        },
        [16816] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16817
            }
        },
        [16817] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16818
            }
        },
        [16818] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [16819] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16820
            }
        },
        [16820] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [16821] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16822
            }
        },
        [16822] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16823
            }
        },
        [16823] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16824
            }
        },
        [16824] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16825
            }
        },
        [16825] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [16833] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16834
            }
        },
        [16834] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16835
            }
        },
        [16835] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [16836] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16839
            }
        },
        [16839] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16840
            }
        },
        [16840] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [16845] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16846
            }
        },
        [16846] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16847
            }
        },
        [16847] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [16850] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16923
            }
        },
        [16857] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 17390
            }
        },
        [16858] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16859
            }
        },
        [16859] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16860
            }
        },
        [16860] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16861
            }
        },
        [16861] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16862
            }
        },
        [16862] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [16896] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16897
            }
        },
        [16897] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16899
            }
        },
        [16899] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16900
            }
        },
        [16900] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16901
            }
        },
        [16901] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [16902] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16903
            }
        },
        [16903] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16904
            }
        },
        [16904] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16905
            }
        },
        [16905] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16906
            }
        },
        [16906] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [16909] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16910
            }
        },
        [16910] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16911
            }
        },
        [16911] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16912
            }
        },
        [16912] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16913
            }
        },
        [16913] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [16914] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 17401
            }
        },
        [16918] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16919
            }
        },
        [16919] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16920
            }
        },
        [16920] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [16923] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16924
            }
        },
        [16924] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16925
            }
        },
        [16925] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16926
            }
        },
        [16926] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [16929] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16930
            }
        },
        [16930] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16931
            }
        },
        [16931] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16932
            }
        },
        [16932] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16933
            }
        },
        [16933] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [16934] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16935
            }
        },
        [16935] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16936
            }
        },
        [16936] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16937
            }
        },
        [16937] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16938
            }
        },
        [16938] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [16940] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16941
            }
        },
        [16941] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [16942] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16943
            }
        },
        [16943] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16944
            }
        },
        [16944] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [16947] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16948
            }
        },
        [16948] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16949
            }
        },
        [16949] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16950
            }
        },
        [16950] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16951
            }
        },
        [16951] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [16961] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [16966] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16968
            }
        },
        [16968] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [16972] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16974
            }
        },
        [16974] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16975
            }
        },
        [16975] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [16998] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16999
            }
        },
        [16999] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [17003] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17004
            }
        },
        [17004] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17005
            }
        },
        [17005] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17006
            }
        },
        [17006] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 24894
            }
        },
        [17050] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17051
            }
        },
        [17051] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17053
            }
        },
        [17053] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17054
            }
        },
        [17054] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17055
            }
        },
        [17055] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [17056] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17058
            }
        },
        [17058] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17059
            }
        },
        [17059] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17060
            }
        },
        [17060] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17061
            }
        },
        [17061] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [17063] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17065
            }
        },
        [17065] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17066
            }
        },
        [17066] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17067
            }
        },
        [17067] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17068
            }
        },
        [17068] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [17069] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17070
            }
        },
        [17070] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17071
            }
        },
        [17071] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17072
            }
        },
        [17072] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17073
            }
        },
        [17073] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [17074] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17075
            }
        },
        [17075] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17076
            }
        },
        [17076] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17077
            }
        },
        [17077] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17078
            }
        },
        [17078] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [17079] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17082
            }
        },
        [17082] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [17104] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 24943
            }
        },
        [17106] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17107
            }
        },
        [17107] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17108
            }
        },
        [17108] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [17111] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17112
            }
        },
        [17112] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17113
            }
        },
        [17113] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [17118] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17119
            }
        },
        [17119] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17120
            }
        },
        [17120] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17121
            }
        },
        [17121] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17122
            }
        },
        [17122] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [17123] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17124
            }
        },
        [17124] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [17245] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17247
            }
        },
        [17247] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17248
            }
        },
        [17248] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17249
            }
        },
        [17249] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [17329] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [17390] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 17391
            }
        },
        [17391] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 17392
            }
        },
        [17392] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [17401] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 17402
            }
        },
        [17402] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [18657] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 18658
            }
        },
        [18658] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [20484] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 20739
            }
        },
        [20719] = {
            ["learnAtLvl"] = 40,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [20739] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 20742
            }
        },
        [20742] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 20747
            }
        },
        [20747] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 20748
            }
        },
        [20748] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [21849] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 21850
            }
        },
        [21850] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [22568] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 22827
            }
        },
        [22827] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 22828
            }
        },
        [22828] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 22829
            }
        },
        [22829] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 31018
            }
        },
        [22842] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 22895
            }
        },
        [22895] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 22896
            }
        },
        [22896] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [24858] = {
            ["learnAtLvl"] = 0,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [24894] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [24943] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 24944
            }
        },
        [24944] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 24945
            }
        },
        [24945] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 24946
            }
        },
        [24946] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [24968] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 24969
            }
        },
        [24969] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 24970
            }
        },
        [24970] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 24971
            }
        },
        [24971] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 24972
            }
        },
        [24972] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [24974] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 24975
            }
        },
        [24975] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 24976
            }
        },
        [24976] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 24977
            }
        },
        [24977] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [25297] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 11,
            ["nextRank"] = nil
        },
        [25298] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [25299] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 11,
            ["nextRank"] = nil
        },
        [31018] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = nil
        }
    }
}
