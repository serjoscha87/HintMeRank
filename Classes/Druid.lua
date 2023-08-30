local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "DRUID") then
	return
end 

SpellsById = {
    ["DRUID"] = {}
}

SpellsById["DRUID"] = {
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
    [774] = {
        ["learnAtLvl"] = 4,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 10,
            ["id"] = 1058
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
        ["learnAtLvl"] = 16,
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
        ["nextRank"] = {
            ["learnAtLvl"] = 65,
            ["id"] = 33357
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 66,
            ["id"] = 27006
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 61,
            ["id"] = 27001
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 63,
            ["id"] = 26987
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 50212
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 27000
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 26989
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 65,
            ["id"] = 26980
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 26983
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 66,
            ["id"] = 27005
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 26996
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 26990
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 31709
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 27008
        }
    },
    [9898] = {
        ["learnAtLvl"] = 52,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 62,
            ["id"] = 26998
        }
    },
    [9901] = {
        ["learnAtLvl"] = 54,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 26995
        }
    },
    [9904] = {
        ["learnAtLvl"] = 54,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 64,
            ["id"] = 27003
        }
    },
    [9908] = {
        ["learnAtLvl"] = 54,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 64,
            ["id"] = 26997
        }
    },
    [9910] = {
        ["learnAtLvl"] = 54,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 64,
            ["id"] = 26992
        }
    },
    [9912] = {
        ["learnAtLvl"] = 54,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 61,
            ["id"] = 26984
        }
    },
    [16689] = {
        ["learnAtLvl"] = 10,
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
    [16914] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 50,
            ["id"] = 17401
        }
    },
    [17329] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 27009
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 27012
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 26994
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 26991
        }
    },
    [22568] = {
        ["learnAtLvl"] = 32,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 22827
        }
    },
    [22570] = {
        ["learnAtLvl"] = 62,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 49802
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
    [24248] = {
        ["learnAtLvl"] = 63,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 72,
            ["id"] = 48576
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 27013
        }
    },
    [25297] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 11,
        ["nextRank"] = {
            ["learnAtLvl"] = 62,
            ["id"] = 26978
        }
    },
    [25298] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 26986
        }
    },
    [25299] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 11,
        ["nextRank"] = {
            ["learnAtLvl"] = 63,
            ["id"] = 26981
        }
    },
    [26978] = {
        ["learnAtLvl"] = 62,
        ["rank"] = 12,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 26979
        }
    },
    [26979] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 13,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 48377
        }
    },
    [26980] = {
        ["learnAtLvl"] = 65,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 48442
        }
    },
    [26981] = {
        ["learnAtLvl"] = 63,
        ["rank"] = 12,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 26982
        }
    },
    [26982] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 13,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 48440
        }
    },
    [26983] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 48446
        }
    },
    [26984] = {
        ["learnAtLvl"] = 61,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 26985
        }
    },
    [26985] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 48459
        }
    },
    [26986] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 72,
            ["id"] = 48464
        }
    },
    [26987] = {
        ["learnAtLvl"] = 63,
        ["rank"] = 11,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 26988
        }
    },
    [26988] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 12,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 48462
        }
    },
    [26989] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 53308
        }
    },
    [26990] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48469
        }
    },
    [26991] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48470
        }
    },
    [26992] = {
        ["learnAtLvl"] = 64,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 53307
        }
    },
    [26994] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 48477
        }
    },
    [26995] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [26996] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 48479
        }
    },
    [26997] = {
        ["learnAtLvl"] = 64,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 72,
            ["id"] = 48561
        }
    },
    [26998] = {
        ["learnAtLvl"] = 62,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 48559
        }
    },
    [27000] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 48569
        }
    },
    [27001] = {
        ["learnAtLvl"] = 61,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 27002
        }
    },
    [27002] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 48571
        }
    },
    [27003] = {
        ["learnAtLvl"] = 64,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 72,
            ["id"] = 48573
        }
    },
    [27004] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 48575
        }
    },
    [27005] = {
        ["learnAtLvl"] = 66,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 48578
        }
    },
    [27006] = {
        ["learnAtLvl"] = 66,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 77,
            ["id"] = 49803
        }
    },
    [27008] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 49799
        }
    },
    [27009] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 53312
        }
    },
    [27012] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48467
        }
    },
    [27013] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48468
        }
    },
    [31018] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 63,
            ["id"] = 24248
        }
    },
    [31709] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 27004
        }
    },
    [33357] = {
        ["learnAtLvl"] = 65,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [33745] = {
        ["learnAtLvl"] = 66,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 48567
        }
    },
    [33763] = {
        ["learnAtLvl"] = 64,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 72,
            ["id"] = 48450
        }
    },
    [33876] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 33982
        }
    },
    [33878] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 33986
        }
    },
    [33891] = {
        ["learnAtLvl"] = 50,
        ["rank"] = nil,
        ["nextRank"] = nil
    },
    [33943] = {
        ["learnAtLvl"] = 60,
        ["rank"] = nil,
        ["nextRank"] = nil
    },
    [33982] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 33983
        }
    },
    [33983] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 48565
        }
    },
    [33986] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 33987
        }
    },
    [33987] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 48563
        }
    },
    [40120] = {
        ["learnAtLvl"] = 70,
        ["rank"] = nil,
        ["nextRank"] = nil
    },
    [44203] = {
        ["learnAtLvl"] = 30,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 8918
        }
    },
    [44205] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 50,
            ["id"] = 9862
        }
    },
    [44206] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 9863
        }
    },
    [44207] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 26983
        }
    },
    [44208] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 48446
        }
    },
    [48377] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 14,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 48378
        }
    },
    [48378] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 15,
        ["nextRank"] = nil
    },
    [48440] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 14,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48441
        }
    },
    [48441] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 15,
        ["nextRank"] = nil
    },
    [48442] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 11,
        ["nextRank"] = {
            ["learnAtLvl"] = 77,
            ["id"] = 48443
        }
    },
    [48443] = {
        ["learnAtLvl"] = 77,
        ["rank"] = 12,
        ["nextRank"] = nil
    },
    [48446] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48447
        }
    },
    [48447] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [48450] = {
        ["learnAtLvl"] = 72,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48451
        }
    },
    [48451] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [48459] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 11,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 48461
        }
    },
    [48461] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 12,
        ["nextRank"] = nil
    },
    [48462] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 13,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48463
        }
    },
    [48463] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 14,
        ["nextRank"] = nil
    },
    [48464] = {
        ["learnAtLvl"] = 72,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 48465
        }
    },
    [48465] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 10,
        ["nextRank"] = nil
    },
    [48467] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 5,
        ["nextRank"] = nil
    },
    [48468] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [48469] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [48470] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [48477] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [48479] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 48480
        }
    },
    [48480] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 10,
        ["nextRank"] = nil
    },
    [48559] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 77,
            ["id"] = 48560
        }
    },
    [48560] = {
        ["learnAtLvl"] = 77,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [48561] = {
        ["learnAtLvl"] = 72,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 77,
            ["id"] = 48562
        }
    },
    [48562] = {
        ["learnAtLvl"] = 77,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [48563] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48564
        }
    },
    [48564] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 5,
        ["nextRank"] = nil
    },
    [48565] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48566
        }
    },
    [48566] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 5,
        ["nextRank"] = nil
    },
    [48567] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48568
        }
    },
    [48568] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [48569] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 48570
        }
    },
    [48570] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [48571] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48572
        }
    },
    [48572] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [48573] = {
        ["learnAtLvl"] = 72,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 48574
        }
    },
    [48574] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [48575] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [48576] = {
        ["learnAtLvl"] = 72,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 48577
        }
    },
    [48577] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [48578] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 48579
        }
    },
    [48579] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [49799] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49800
        }
    },
    [49800] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [49802] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 2,
        ["nextRank"] = nil
    },
    [49803] = {
        ["learnAtLvl"] = 77,
        ["rank"] = 5,
        ["nextRank"] = nil
    },
    [50212] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 50213
        }
    },
    [50213] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [50464] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 1,
        ["nextRank"] = nil
    },
    [50763] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [50764] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 50763
        }
    },
    [50765] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 50764
        }
    },
    [50766] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 50765
        }
    },
    [50767] = {
        ["learnAtLvl"] = 36,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 50766
        }
    },
    [50768] = {
        ["learnAtLvl"] = 24,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 36,
            ["id"] = 50767
        }
    },
    [50769] = {
        ["learnAtLvl"] = 12,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 24,
            ["id"] = 50768
        }
    },
    [52610] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 1,
        ["nextRank"] = nil
    },
    [53199] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 53200
        }
    },
    [53200] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 53201
        }
    },
    [53201] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [53223] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 53225
        }
    },
    [53225] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 53226
        }
    },
    [53226] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 61384
        }
    },
    [53248] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 53249
        }
    },
    [53249] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 53251
        }
    },
    [53251] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [53307] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [53308] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [53312] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [61384] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 5,
        ["nextRank"] = nil
    },
    [62078] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 1,
        ["nextRank"] = nil
    },
    [62600] = {
        ["learnAtLvl"] = 40,
        ["rank"] = nil,
        ["nextRank"] = nil
    }
}
