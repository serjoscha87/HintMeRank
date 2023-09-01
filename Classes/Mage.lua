local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "MAGE") then
	return
end 

SpellsById = {
    ["MAGE"] = {
        [10] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 6141
            }
        },
        [116] = {
            ["learnAtLvl"] = 4,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 8,
                ["id"] = 205
            }
        },
        [118] = {
            ["learnAtLvl"] = 8,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 12824
            }
        },
        [120] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 8492
            }
        },
        [122] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 865
            }
        },
        [133] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 6,
                ["id"] = 143
            }
        },
        [143] = {
            ["learnAtLvl"] = 6,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 12,
                ["id"] = 145
            }
        },
        [145] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 18,
                ["id"] = 3140
            }
        },
        [168] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 10,
                ["id"] = 7300
            }
        },
        [205] = {
            ["learnAtLvl"] = 8,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 14,
                ["id"] = 837
            }
        },
        [543] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 8457
            }
        },
        [587] = {
            ["learnAtLvl"] = 6,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 12,
                ["id"] = 597
            }
        },
        [597] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 990
            }
        },
        [604] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 8450
            }
        },
        [837] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 7322
            }
        },
        [865] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 6131
            }
        },
        [990] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 6129
            }
        },
        [1008] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 8455
            }
        },
        [1449] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 8437
            }
        },
        [1459] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 14,
                ["id"] = 1460
            }
        },
        [1460] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 1461
            }
        },
        [1461] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 10156
            }
        },
        [1463] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 8494
            }
        },
        [2120] = {
            ["learnAtLvl"] = 16,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 2121
            }
        },
        [2121] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 8422
            }
        },
        [2136] = {
            ["learnAtLvl"] = 6,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 14,
                ["id"] = 2137
            }
        },
        [2137] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 2138
            }
        },
        [2138] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 8412
            }
        },
        [2948] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 8444
            }
        },
        [3140] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 8400
            }
        },
        [5143] = {
            ["learnAtLvl"] = 8,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 16,
                ["id"] = 5144
            }
        },
        [5144] = {
            ["learnAtLvl"] = 16,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 5145
            }
        },
        [5145] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 8416
            }
        },
        [5504] = {
            ["learnAtLvl"] = 4,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 10,
                ["id"] = 5505
            }
        },
        [5505] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 5506
            }
        },
        [5506] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 6127
            }
        },
        [6057] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 6085
            }
        },
        [6085] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [6117] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 22782
            }
        },
        [6127] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 10138
            }
        },
        [6129] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 10144
            }
        },
        [6131] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 10230
            }
        },
        [6141] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 8427
            }
        },
        [6143] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 8461
            }
        },
        [7300] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 7301
            }
        },
        [7301] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [7302] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 7320
            }
        },
        [7320] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 10219
            }
        },
        [7322] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 8406
            }
        },
        [8400] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 8401
            }
        },
        [8401] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 8402
            }
        },
        [8402] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 10148
            }
        },
        [8406] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 8407
            }
        },
        [8407] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 8408
            }
        },
        [8408] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 10179
            }
        },
        [8412] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 8413
            }
        },
        [8413] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 10197
            }
        },
        [8416] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 8417
            }
        },
        [8417] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 10211
            }
        },
        [8422] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 8423
            }
        },
        [8423] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 10215
            }
        },
        [8427] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 10185
            }
        },
        [8437] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 8438
            }
        },
        [8438] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 8439
            }
        },
        [8439] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 10201
            }
        },
        [8444] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 8445
            }
        },
        [8445] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 8446
            }
        },
        [8446] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 10205
            }
        },
        [8450] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 8451
            }
        },
        [8451] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 10173
            }
        },
        [8455] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 10169
            }
        },
        [8457] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 8458
            }
        },
        [8458] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 10223
            }
        },
        [8461] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 8462
            }
        },
        [8462] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 10177
            }
        },
        [8492] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 10159
            }
        },
        [8494] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 8495
            }
        },
        [8495] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 10191
            }
        },
        [10138] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 10139
            }
        },
        [10139] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10140
            }
        },
        [10140] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [10144] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 10145
            }
        },
        [10145] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 28612
            }
        },
        [10148] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 10149
            }
        },
        [10149] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 10150
            }
        },
        [10150] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10151
            }
        },
        [10151] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 11,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25306
            }
        },
        [10156] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 10157
            }
        },
        [10157] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [10159] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 10160
            }
        },
        [10160] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 10161
            }
        },
        [10161] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [10169] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 10170
            }
        },
        [10170] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [10173] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10174
            }
        },
        [10174] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [10177] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 28609
            }
        },
        [10179] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 10180
            }
        },
        [10180] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 10181
            }
        },
        [10181] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25304
            }
        },
        [10185] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 10186
            }
        },
        [10186] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10187
            }
        },
        [10187] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [10191] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 10192
            }
        },
        [10192] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10193
            }
        },
        [10193] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [10197] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 10199
            }
        },
        [10199] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [10201] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 10202
            }
        },
        [10202] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [10205] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 10206
            }
        },
        [10206] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 10207
            }
        },
        [10207] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [10211] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 10212
            }
        },
        [10212] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 25345
            }
        },
        [10215] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 10216
            }
        },
        [10216] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [10219] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10220
            }
        },
        [10220] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [10223] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10225
            }
        },
        [10225] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [10230] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [11069] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12338
            }
        },
        [11070] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12473
            }
        },
        [11071] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12496
            }
        },
        [11078] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 11080
            }
        },
        [11080] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12342
            }
        },
        [11083] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12351
            }
        },
        [11094] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13043
            }
        },
        [11095] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12872
            }
        },
        [11100] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12353
            }
        },
        [11103] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12357
            }
        },
        [11108] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12349
            }
        },
        [11113] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 13018
            }
        },
        [11115] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 11367
            }
        },
        [11119] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 11120
            }
        },
        [11120] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12846
            }
        },
        [11124] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12378
            }
        },
        [11151] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12952
            }
        },
        [11160] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12518
            }
        },
        [11165] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12475
            }
        },
        [11170] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12982
            }
        },
        [11175] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12569
            }
        },
        [11180] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 28592
            }
        },
        [11185] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12487
            }
        },
        [11189] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 28332
            }
        },
        [11190] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12489
            }
        },
        [11207] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12672
            }
        },
        [11210] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12592
            }
        },
        [11213] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12574
            }
        },
        [11222] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12839
            }
        },
        [11232] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12500
            }
        },
        [11237] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12463
            }
        },
        [11242] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12467
            }
        },
        [11247] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12606
            }
        },
        [11252] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12605
            }
        },
        [11255] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12598
            }
        },
        [11366] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 12505
            }
        },
        [11367] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 11368
            }
        },
        [11368] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [11426] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 13031
            }
        },
        [12338] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12339
            }
        },
        [12339] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12340
            }
        },
        [12340] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12341
            }
        },
        [12341] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12342] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12349] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12350
            }
        },
        [12350] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12351] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [12353] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [12357] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12358
            }
        },
        [12358] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12359
            }
        },
        [12359] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12360
            }
        },
        [12360] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12378] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12398
            }
        },
        [12398] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12399
            }
        },
        [12399] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12400
            }
        },
        [12400] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12463] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12464
            }
        },
        [12464] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16769
            }
        },
        [12467] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12469
            }
        },
        [12469] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12473] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16763
            }
        },
        [12475] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [12487] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12488
            }
        },
        [12488] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12489] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12490
            }
        },
        [12490] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12496] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12497
            }
        },
        [12497] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12500] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12501
            }
        },
        [12501] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12502
            }
        },
        [12502] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12503
            }
        },
        [12503] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12505] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 12522
            }
        },
        [12518] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12519
            }
        },
        [12519] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12522] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 12523
            }
        },
        [12523] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 12524
            }
        },
        [12524] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 12525
            }
        },
        [12525] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 12526
            }
        },
        [12526] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 18809
            }
        },
        [12569] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12571
            }
        },
        [12571] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12574] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12575
            }
        },
        [12575] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12576
            }
        },
        [12576] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12577
            }
        },
        [12577] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12592] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [12598] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [12605] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [12606] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [12672] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15047
            }
        },
        [12824] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 12825
            }
        },
        [12825] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 12826
            }
        },
        [12826] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [12839] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12840
            }
        },
        [12840] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12841
            }
        },
        [12841] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12842
            }
        },
        [12842] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12846] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12847
            }
        },
        [12847] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12848
            }
        },
        [12848] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12872] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12873
            }
        },
        [12873] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12952] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12953
            }
        },
        [12953] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12982] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12983
            }
        },
        [12983] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12984
            }
        },
        [12984] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12985
            }
        },
        [12985] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [13018] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 13019
            }
        },
        [13019] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 13020
            }
        },
        [13020] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 13021
            }
        },
        [13021] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [13031] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 13032
            }
        },
        [13032] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 13033
            }
        },
        [13033] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [13043] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [15047] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15052
            }
        },
        [15052] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15053
            }
        },
        [15053] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [15058] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15059
            }
        },
        [15059] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15060
            }
        },
        [15060] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [16757] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16758
            }
        },
        [16758] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [16763] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16765
            }
        },
        [16765] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16766
            }
        },
        [16766] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [16769] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16770
            }
        },
        [16770] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [18459] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18460
            }
        },
        [18460] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [18462] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18463
            }
        },
        [18463] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18464
            }
        },
        [18464] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [18809] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [22782] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 22783
            }
        },
        [22783] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [23028] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 1,
            ["nextRank"] = nil
        },
        [25304] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 11,
            ["nextRank"] = nil
        },
        [25306] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 12,
            ["nextRank"] = nil
        },
        [25345] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [28271] = {
            ["learnAtLvl"] = 60,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [28272] = {
            ["learnAtLvl"] = 60,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [28332] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [28592] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 28593
            }
        },
        [28593] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 28594
            }
        },
        [28594] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 28595
            }
        },
        [28595] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [28609] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [28612] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [29074] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29075
            }
        },
        [29075] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29076
            }
        },
        [29076] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [29438] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29439
            }
        },
        [29439] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29440
            }
        },
        [29440] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [29441] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29444
            }
        },
        [29444] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [29445] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [29446] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29447
            }
        },
        [29447] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        }
    }
}
