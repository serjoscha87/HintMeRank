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
        [704] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 7658
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
        [5138] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 6226
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
            ["learnAtLvl"] = 30,
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
        [6226] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 11703
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
        [7658] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 7659
            }
        },
        [7659] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 11717
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
        [11703] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 11704
            }
        },
        [11704] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 63,
                ["id"] = 27221
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
        [11717] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 27226
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
            ["nextRank"] = nil
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
        [17778] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17779
            }
        },
        [17779] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17780
            }
        },
        [17780] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17781
            }
        },
        [17781] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17782
            }
        },
        [17782] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [17783] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17784
            }
        },
        [17784] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17785
            }
        },
        [17785] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17786
            }
        },
        [17786] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17787
            }
        },
        [17787] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [17788] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17789
            }
        },
        [17789] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17790
            }
        },
        [17790] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17791
            }
        },
        [17791] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17792
            }
        },
        [17792] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [17793] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17796
            }
        },
        [17796] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17801
            }
        },
        [17801] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17802
            }
        },
        [17802] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17803
            }
        },
        [17803] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [17804] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17805
            }
        },
        [17805] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [17810] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17811
            }
        },
        [17811] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17812
            }
        },
        [17812] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17813
            }
        },
        [17813] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17814
            }
        },
        [17814] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [17815] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17833
            }
        },
        [17833] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17834
            }
        },
        [17834] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17835
            }
        },
        [17835] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17836
            }
        },
        [17836] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [17877] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 18867
            }
        },
        [17917] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17918
            }
        },
        [17918] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
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
        [17927] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17929
            }
        },
        [17928] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [17929] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17930
            }
        },
        [17930] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
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
        [17954] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17955
            }
        },
        [17955] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17956
            }
        },
        [17956] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17957
            }
        },
        [17957] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17958
            }
        },
        [17958] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [17959] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = nil
        },
        [17962] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 18930
            }
        },
        [18073] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18094] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18095
            }
        },
        [18095] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18096] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18073
            }
        },
        [18119] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18120
            }
        },
        [18120] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18121
            }
        },
        [18121] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18122
            }
        },
        [18122] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18123
            }
        },
        [18123] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [18126] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18127
            }
        },
        [18127] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18130] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18131
            }
        },
        [18131] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18132
            }
        },
        [18132] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18133
            }
        },
        [18133] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18134
            }
        },
        [18134] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [18135] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18136
            }
        },
        [18136] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18174] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18175
            }
        },
        [18175] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18176
            }
        },
        [18176] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18177
            }
        },
        [18177] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18178
            }
        },
        [18178] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [18179] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18180
            }
        },
        [18180] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18182] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18183
            }
        },
        [18183] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18213] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18372
            }
        },
        [18218] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18219
            }
        },
        [18219] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18220] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 18937
            }
        },
        [18265] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 18879
            }
        },
        [18271] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18272
            }
        },
        [18272] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18273
            }
        },
        [18273] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18274
            }
        },
        [18274] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18275
            }
        },
        [18275] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [18372] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18647] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18692] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18693
            }
        },
        [18693] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18694] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18695
            }
        },
        [18695] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18696
            }
        },
        [18696] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [18697] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18698
            }
        },
        [18698] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18699
            }
        },
        [18699] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18700
            }
        },
        [18700] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18701
            }
        },
        [18701] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [18703] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18704
            }
        },
        [18704] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18705] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18706
            }
        },
        [18706] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18707
            }
        },
        [18707] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [18709] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18710
            }
        },
        [18710] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18731] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18743
            }
        },
        [18743] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18744
            }
        },
        [18744] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [18754] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18755
            }
        },
        [18755] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18756
            }
        },
        [18756] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [18767] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18768
            }
        },
        [18768] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18769] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18770
            }
        },
        [18770] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18771
            }
        },
        [18771] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18772
            }
        },
        [18772] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18773
            }
        },
        [18773] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [18821] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = nil
        },
        [18827] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18829
            }
        },
        [18829] = {
            ["learnAtLvl"] = 0,
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
        [18879] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 18880
            }
        },
        [18880] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 18881
            }
        },
        [18881] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 63,
                ["id"] = 27264
            }
        },
        [18930] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 18931
            }
        },
        [18931] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 18932
            }
        },
        [18932] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 65,
                ["id"] = 27266
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
            ["learnAtLvl"] = 60,
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
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [27213] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [27215] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [27216] = {
            ["learnAtLvl"] = 65,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [27217] = {
            ["learnAtLvl"] = 67,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [27218] = {
            ["learnAtLvl"] = 67,
            ["rank"] = 7,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [27221] = {
            ["learnAtLvl"] = 63,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30908
            }
        },
        [27222] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [27223] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [27224] = {
            ["learnAtLvl"] = 61,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 30909
            }
        },
        [27226] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [27228] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [27230] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [27238] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [27243] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 1,
            ["nextRank"] = nil
        },
        [27250] = {
            ["learnAtLvl"] = 66,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [27259] = {
            ["learnAtLvl"] = 67,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [27260] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [27263] = {
            ["learnAtLvl"] = 63,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30546
            }
        },
        [27264] = {
            ["learnAtLvl"] = 63,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30911
            }
        },
        [27265] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [27266] = {
            ["learnAtLvl"] = 65,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30912
            }
        },
        [28172] = {
            ["learnAtLvl"] = 66,
            ["rank"] = 4,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [28610] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [30054] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30057
            }
        },
        [30057] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [30060] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30061
            }
        },
        [30061] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30062
            }
        },
        [30062] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30063
            }
        },
        [30063] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30064
            }
        },
        [30064] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [30086] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [30108] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 30404
            }
        },
        [30143] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30144
            }
        },
        [30144] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30145
            }
        },
        [30145] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [30146] = {
            ["learnAtLvl"] = 0,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [30242] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30245
            }
        },
        [30245] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30246
            }
        },
        [30246] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30247
            }
        },
        [30247] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30248
            }
        },
        [30248] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
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
        [30288] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30289
            }
        },
        [30289] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30290
            }
        },
        [30290] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30291
            }
        },
        [30291] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30292
            }
        },
        [30292] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [30293] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30295
            }
        },
        [30295] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30296
            }
        },
        [30296] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [30299] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30301
            }
        },
        [30301] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30302
            }
        },
        [30302] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [30319] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30320
            }
        },
        [30320] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30321
            }
        },
        [30321] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [30326] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30327
            }
        },
        [30327] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30328
            }
        },
        [30328] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [30459] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [30545] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [30546] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [30908] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [30909] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [30910] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [30911] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [30912] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [32231] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [32381] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 32382
            }
        },
        [32382] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 32383
            }
        },
        [32383] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [32385] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 32387
            }
        },
        [32387] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 32392
            }
        },
        [32392] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 32393
            }
        },
        [32393] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 32394
            }
        },
        [32394] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [32477] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 32483
            }
        },
        [32483] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 32484
            }
        },
        [32484] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [34935] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 34938
            }
        },
        [34938] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 34939
            }
        },
        [34939] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [35691] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 35692
            }
        },
        [35692] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 35693
            }
        },
        [35693] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        }
    }
}
