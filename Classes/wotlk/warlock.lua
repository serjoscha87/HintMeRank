local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "WARLOCK") then
	return
end 

SpellsById = {
    ["WARLOCK"] = {
        [126] = {
            ["learnAtLvl"] = 22,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [172] = {
            ["learnAtLvl"] = 4,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 14,
                ["id"] = 6222
            }
        },
        [348] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 10,
                ["id"] = 707
            }
        },
        [603] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30910
            }
        },
        [686] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 6,
                ["id"] = 695
            }
        },
        [687] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 10,
                ["id"] = 696
            }
        },
        [688] = {
            ["learnAtLvl"] = 1,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [689] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 699
            }
        },
        [691] = {
            ["learnAtLvl"] = 30,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [693] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 20752
            }
        },
        [695] = {
            ["learnAtLvl"] = 6,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 12,
                ["id"] = 705
            }
        },
        [696] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [697] = {
            ["learnAtLvl"] = 10,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [699] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 709
            }
        },
        [702] = {
            ["learnAtLvl"] = 4,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 12,
                ["id"] = 1108
            }
        },
        [705] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 1088
            }
        },
        [706] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 1086
            }
        },
        [707] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 1094
            }
        },
        [709] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 7651
            }
        },
        [710] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 18647
            }
        },
        [712] = {
            ["learnAtLvl"] = 20,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [713] = {
            ["learnAtLvl"] = 20,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [755] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 3698
            }
        },
        [980] = {
            ["learnAtLvl"] = 8,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 18,
                ["id"] = 1014
            }
        },
        [1014] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 6217
            }
        },
        [1086] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 11733
            }
        },
        [1088] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 1106
            }
        },
        [1094] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 2941
            }
        },
        [1098] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 11725
            }
        },
        [1106] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 7641
            }
        },
        [1108] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 6205
            }
        },
        [1120] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 8288
            }
        },
        [1122] = {
            ["learnAtLvl"] = 50,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [1454] = {
            ["learnAtLvl"] = 6,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 16,
                ["id"] = 1455
            }
        },
        [1455] = {
            ["learnAtLvl"] = 16,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 1456
            }
        },
        [1456] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 11687
            }
        },
        [1490] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 11721
            }
        },
        [1714] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 11719
            }
        },
        [1949] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 11683
            }
        },
        [2362] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 17727
            }
        },
        [2941] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 11665
            }
        },
        [3698] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 3699
            }
        },
        [3699] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 3700
            }
        },
        [3700] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 11693
            }
        },
        [5484] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 17928
            }
        },
        [5676] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 17919
            }
        },
        [5699] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 11729
            }
        },
        [5740] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 6219
            }
        },
        [5782] = {
            ["learnAtLvl"] = 8,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 6213
            }
        },
        [5784] = {
            ["learnAtLvl"] = 20,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [6201] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 6202
            }
        },
        [6202] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 5699
            }
        },
        [6205] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 7646
            }
        },
        [6213] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 6215
            }
        },
        [6215] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [6217] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 11711
            }
        },
        [6219] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 11677
            }
        },
        [6222] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 6223
            }
        },
        [6223] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 7648
            }
        },
        [6229] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 11739
            }
        },
        [6353] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 17924
            }
        },
        [6366] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 17951
            }
        },
        [6789] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 17925
            }
        },
        [7641] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 11659
            }
        },
        [7646] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 11707
            }
        },
        [7648] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 11671
            }
        },
        [7651] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 11699
            }
        },
        [8288] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 8289
            }
        },
        [8289] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 11675
            }
        },
        [11659] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 11660
            }
        },
        [11660] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 11661
            }
        },
        [11661] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25307
            }
        },
        [11665] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 11667
            }
        },
        [11667] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 11668
            }
        },
        [11668] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25309
            }
        },
        [11671] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 11672
            }
        },
        [11672] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25311
            }
        },
        [11675] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 67,
                ["id"] = 27217
            }
        },
        [11677] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 11678
            }
        },
        [11678] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 27212
            }
        },
        [11683] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 11684
            }
        },
        [11684] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 27213
            }
        },
        [11687] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 11688
            }
        },
        [11688] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 11689
            }
        },
        [11689] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 27222
            }
        },
        [11693] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 11694
            }
        },
        [11694] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 11695
            }
        },
        [11695] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 67,
                ["id"] = 27259
            }
        },
        [11699] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 11700
            }
        },
        [11700] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 62,
                ["id"] = 27219
            }
        },
        [11707] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 11708
            }
        },
        [11708] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 61,
                ["id"] = 27224
            }
        },
        [11711] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 11712
            }
        },
        [11712] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 11713
            }
        },
        [11713] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 67,
                ["id"] = 27218
            }
        },
        [11719] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [11721] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 11722
            }
        },
        [11722] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 27228
            }
        },
        [11725] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 11726
            }
        },
        [11726] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 72,
                ["id"] = 61191
            }
        },
        [11729] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 11730
            }
        },
        [11730] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 27230
            }
        },
        [11733] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 11734
            }
        },
        [11734] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 11735
            }
        },
        [11735] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 27260
            }
        },
        [11739] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 11740
            }
        },
        [11740] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 28610
            }
        },
        [17727] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 17728
            }
        },
        [17728] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 66,
                ["id"] = 28172
            }
        },
        [17877] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 18867
            }
        },
        [17919] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 17920
            }
        },
        [17920] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 17921
            }
        },
        [17921] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 17922
            }
        },
        [17922] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 17923
            }
        },
        [17923] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 65,
                ["id"] = 27210
            }
        },
        [17924] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 64,
                ["id"] = 27211
            }
        },
        [17925] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 17926
            }
        },
        [17926] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 27223
            }
        },
        [17928] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [17951] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 17952
            }
        },
        [17952] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 17953
            }
        },
        [17953] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 66,
                ["id"] = 27250
            }
        },
        [18220] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 18937
            }
        },
        [18647] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18867] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 18868
            }
        },
        [18868] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 18869
            }
        },
        [18869] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 18870
            }
        },
        [18870] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 18871
            }
        },
        [18871] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 63,
                ["id"] = 27263
            }
        },
        [18937] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 18938
            }
        },
        [18938] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 27265
            }
        },
        [20752] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 20755
            }
        },
        [20755] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 20756
            }
        },
        [20756] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 20757
            }
        },
        [20757] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 27238
            }
        },
        [23161] = {
            ["learnAtLvl"] = 40,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [25307] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 27209
            }
        },
        [25309] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 27215
            }
        },
        [25311] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 65,
                ["id"] = 27216
            }
        },
        [27209] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 11,
            ["nextRank"] = {
                ["learnAtLvl"] = 74,
                ["id"] = 47808
            }
        },
        [27210] = {
            ["learnAtLvl"] = 65,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30459
            }
        },
        [27211] = {
            ["learnAtLvl"] = 64,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30545
            }
        },
        [27212] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 72,
                ["id"] = 47819
            }
        },
        [27213] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 47823
            }
        },
        [27215] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 47810
            }
        },
        [27216] = {
            ["learnAtLvl"] = 65,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 71,
                ["id"] = 47812
            }
        },
        [27217] = {
            ["learnAtLvl"] = 67,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 77,
                ["id"] = 47855
            }
        },
        [27218] = {
            ["learnAtLvl"] = 67,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 73,
                ["id"] = 47863
            }
        },
        [27219] = {
            ["learnAtLvl"] = 62,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 27220
            }
        },
        [27220] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 47857
            }
        },
        [27222] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 57946
            }
        },
        [27223] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 73,
                ["id"] = 47859
            }
        },
        [27224] = {
            ["learnAtLvl"] = 61,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 30909
            }
        },
        [27228] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 47865
            }
        },
        [27230] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 73,
                ["id"] = 47871
            }
        },
        [27238] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 76,
                ["id"] = 47884
            }
        },
        [27243] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 47835
            }
        },
        [27250] = {
            ["learnAtLvl"] = 66,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 74,
                ["id"] = 60219
            }
        },
        [27259] = {
            ["learnAtLvl"] = 67,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 76,
                ["id"] = 47856
            }
        },
        [27260] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 76,
                ["id"] = 47793
            }
        },
        [27263] = {
            ["learnAtLvl"] = 63,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30546
            }
        },
        [27265] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 59092
            }
        },
        [28172] = {
            ["learnAtLvl"] = 66,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 72,
                ["id"] = 47886
            }
        },
        [28176] = {
            ["learnAtLvl"] = 62,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 28189
            }
        },
        [28189] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 74,
                ["id"] = 47892
            }
        },
        [28610] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 72,
                ["id"] = 47890
            }
        },
        [29722] = {
            ["learnAtLvl"] = 64,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 32231
            }
        },
        [29893] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 58887
            }
        },
        [30108] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 30404
            }
        },
        [30146] = {
            ["learnAtLvl"] = 0,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [30283] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 30413
            }
        },
        [30404] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30405
            }
        },
        [30405] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 47841
            }
        },
        [30413] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30414
            }
        },
        [30414] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 47846
            }
        },
        [30459] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 74,
                ["id"] = 47814
            }
        },
        [30545] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 47824
            }
        },
        [30546] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 47826
            }
        },
        [30909] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 71,
                ["id"] = 50511
            }
        },
        [30910] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 47867
            }
        },
        [32231] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 74,
                ["id"] = 47837
            }
        },
        [47793] = {
            ["learnAtLvl"] = 76,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 47889
            }
        },
        [47808] = {
            ["learnAtLvl"] = 74,
            ["rank"] = 12,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 47809
            }
        },
        [47809] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 13,
            ["nextRank"] = nil
        },
        [47810] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 47811
            }
        },
        [47811] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 11,
            ["nextRank"] = nil
        },
        [47812] = {
            ["learnAtLvl"] = 71,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 77,
                ["id"] = 47813
            }
        },
        [47813] = {
            ["learnAtLvl"] = 77,
            ["rank"] = 10,
            ["nextRank"] = nil
        },
        [47814] = {
            ["learnAtLvl"] = 74,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 47815
            }
        },
        [47815] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 10,
            ["nextRank"] = nil
        },
        [47819] = {
            ["learnAtLvl"] = 72,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 47820
            }
        },
        [47820] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [47823] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [47824] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 47825
            }
        },
        [47825] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [47826] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 47827
            }
        },
        [47827] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 10,
            ["nextRank"] = nil
        },
        [47835] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 47836
            }
        },
        [47836] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [47837] = {
            ["learnAtLvl"] = 74,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 47838
            }
        },
        [47838] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [47841] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 47843
            }
        },
        [47843] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [47846] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 47847
            }
        },
        [47847] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [47855] = {
            ["learnAtLvl"] = 77,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [47856] = {
            ["learnAtLvl"] = 76,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [47857] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [47859] = {
            ["learnAtLvl"] = 73,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 47860
            }
        },
        [47860] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [47863] = {
            ["learnAtLvl"] = 73,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 47864
            }
        },
        [47864] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [47865] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [47867] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [47871] = {
            ["learnAtLvl"] = 73,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 47878
            }
        },
        [47878] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [47884] = {
            ["learnAtLvl"] = 76,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [47886] = {
            ["learnAtLvl"] = 72,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 47888
            }
        },
        [47888] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [47889] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [47890] = {
            ["learnAtLvl"] = 72,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 47891
            }
        },
        [47891] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [47892] = {
            ["learnAtLvl"] = 74,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 47893
            }
        },
        [47893] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [47897] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 61290
            }
        },
        [48181] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 59161
            }
        },
        [50511] = {
            ["learnAtLvl"] = 71,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [50581] = {
            ["learnAtLvl"] = 60,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [50589] = {
            ["learnAtLvl"] = 60,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [50796] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 59170
            }
        },
        [54785] = {
            ["learnAtLvl"] = 60,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [57946] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [58887] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [59092] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [59161] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 59163
            }
        },
        [59163] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 59164
            }
        },
        [59164] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [59170] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 59171
            }
        },
        [59171] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 59172
            }
        },
        [59172] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [59671] = {
            ["learnAtLvl"] = 1,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [60219] = {
            ["learnAtLvl"] = 74,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 60220
            }
        },
        [60220] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [61191] = {
            ["learnAtLvl"] = 72,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [61290] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [75445] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        }
    }
}
