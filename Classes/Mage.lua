local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "MAGE") then
	return
end 

SpellsById = {
    ["MAGE"] = {}
}

SpellsById["MAGE"] = {
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
    [759] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 38,
            ["id"] = 3552
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
    [3552] = {
        ["learnAtLvl"] = 38,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 10053
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
    [10053] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 10054
        }
    },
    [10054] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 27101
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
        ["nextRank"] = {
            ["learnAtLvl"] = 65,
            ["id"] = 37420
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 27126
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 65,
            ["id"] = 27087
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 63,
            ["id"] = 27130
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 33944
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 27085
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 27131
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 61,
            ["id"] = 27078
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 62,
            ["id"] = 27080
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 65,
            ["id"] = 27073
        }
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
            ["learnAtLvl"] = 60,
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
        ["nextRank"] = {
            ["learnAtLvl"] = 64,
            ["id"] = 27086
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 27124
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 27128
        }
    },
    [10230] = {
        ["learnAtLvl"] = 54,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 27088
        }
    },
    [12505] = {
        ["learnAtLvl"] = 24,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 30,
            ["id"] = 12522
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 65,
            ["id"] = 27133
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 64,
            ["id"] = 27134
        }
    },
    [18809] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 66,
            ["id"] = 27132
        }
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
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 27125
        }
    },
    [23028] = {
        ["learnAtLvl"] = 56,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 27127
        }
    },
    [25304] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 11,
        ["nextRank"] = {
            ["learnAtLvl"] = 63,
            ["id"] = 27071
        }
    },
    [25306] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 12,
        ["nextRank"] = {
            ["learnAtLvl"] = 66,
            ["id"] = 27070
        }
    },
    [25345] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 63,
            ["id"] = 27075
        }
    },
    [27070] = {
        ["learnAtLvl"] = 66,
        ["rank"] = 13,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 38692
        }
    },
    [27071] = {
        ["learnAtLvl"] = 63,
        ["rank"] = 12,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 27072
        }
    },
    [27072] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 13,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 38697
        }
    },
    [27073] = {
        ["learnAtLvl"] = 65,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 27074
        }
    },
    [27074] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 42858
        }
    },
    [27075] = {
        ["learnAtLvl"] = 63,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 38699
        }
    },
    [27078] = {
        ["learnAtLvl"] = 61,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 27079
        }
    },
    [27079] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 42872
        }
    },
    [27080] = {
        ["learnAtLvl"] = 62,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 27082
        }
    },
    [27082] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 42920
        }
    },
    [27085] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 42939
        }
    },
    [27086] = {
        ["learnAtLvl"] = 64,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 72,
            ["id"] = 42925
        }
    },
    [27087] = {
        ["learnAtLvl"] = 65,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 72,
            ["id"] = 42930
        }
    },
    [27088] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 42917
        }
    },
    [27090] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [27101] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 77,
            ["id"] = 42985
        }
    },
    [27124] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 43008
        }
    },
    [27125] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 43023
        }
    },
    [27126] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 42995
        }
    },
    [27127] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 43002
        }
    },
    [27128] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 43010
        }
    },
    [27130] = {
        ["learnAtLvl"] = 63,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 33946
        }
    },
    [27131] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 43019
        }
    },
    [27132] = {
        ["learnAtLvl"] = 66,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 33938
        }
    },
    [27133] = {
        ["learnAtLvl"] = 65,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 33933
        }
    },
    [27134] = {
        ["learnAtLvl"] = 64,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 33405
        }
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
    [28609] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 32796
        }
    },
    [28612] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 33717
        }
    },
    [30451] = {
        ["learnAtLvl"] = 64,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 42894
        }
    },
    [30455] = {
        ["learnAtLvl"] = 66,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 72,
            ["id"] = 42913
        }
    },
    [30482] = {
        ["learnAtLvl"] = 62,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 43045
        }
    },
    [32796] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 43012
        }
    },
    [33041] = {
        ["learnAtLvl"] = 56,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 64,
            ["id"] = 33042
        }
    },
    [33042] = {
        ["learnAtLvl"] = 64,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 33043
        }
    },
    [33043] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 42949
        }
    },
    [33405] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 43038
        }
    },
    [33717] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [33933] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 42944
        }
    },
    [33938] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 42890
        }
    },
    [33944] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 43015
        }
    },
    [33946] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 77,
            ["id"] = 43017
        }
    },
    [37420] = {
        ["learnAtLvl"] = 65,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 27090
        }
    },
    [38692] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 14,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 42832
        }
    },
    [38697] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 14,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 42841
        }
    },
    [38699] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 38704
        }
    },
    [38704] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 11,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 42843
        }
    },
    [42832] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 15,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 42833
        }
    },
    [42833] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 16,
        ["nextRank"] = nil
    },
    [42841] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 15,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 42842
        }
    },
    [42842] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 16,
        ["nextRank"] = nil
    },
    [42843] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 12,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 42846
        }
    },
    [42846] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 13,
        ["nextRank"] = nil
    },
    [42858] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 42859
        }
    },
    [42859] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 11,
        ["nextRank"] = nil
    },
    [42872] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 42873
        }
    },
    [42873] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 11,
        ["nextRank"] = nil
    },
    [42890] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 11,
        ["nextRank"] = {
            ["learnAtLvl"] = 77,
            ["id"] = 42891
        }
    },
    [42891] = {
        ["learnAtLvl"] = 77,
        ["rank"] = 12,
        ["nextRank"] = nil
    },
    [42894] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 42896
        }
    },
    [42896] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 42897
        }
    },
    [42897] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [42913] = {
        ["learnAtLvl"] = 72,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 42914
        }
    },
    [42914] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [42917] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [42920] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 42921
        }
    },
    [42921] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 10,
        ["nextRank"] = nil
    },
    [42925] = {
        ["learnAtLvl"] = 72,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 42926
        }
    },
    [42926] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [42930] = {
        ["learnAtLvl"] = 72,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 42931
        }
    },
    [42931] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [42939] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 42940
        }
    },
    [42940] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [42944] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 42945
        }
    },
    [42945] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [42949] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 42950
        }
    },
    [42950] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [42955] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 42956
        }
    },
    [42956] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 2,
        ["nextRank"] = nil
    },
    [42985] = {
        ["learnAtLvl"] = 77,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [42995] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [43002] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [43008] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [43010] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [43012] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [43015] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [43017] = {
        ["learnAtLvl"] = 77,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [43019] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 43020
        }
    },
    [43020] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [43023] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 43024
        }
    },
    [43024] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [43038] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 43039
        }
    },
    [43039] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [43045] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 43046
        }
    },
    [43046] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [43987] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 58659
        }
    },
    [44614] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 47610
        }
    },
    [44780] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 44781
        }
    },
    [44781] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [47610] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 2,
        ["nextRank"] = nil
    },
    [55359] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 55360
        }
    },
    [55360] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [58659] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 2,
        ["nextRank"] = nil
    },
    [61024] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [61305] = {
        ["learnAtLvl"] = 60,
        ["rank"] = nil,
        ["nextRank"] = nil
    },
    [61316] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [61721] = {
        ["learnAtLvl"] = 60,
        ["rank"] = nil,
        ["nextRank"] = nil
    },
    [61780] = {
        ["learnAtLvl"] = 60,
        ["rank"] = nil,
        ["nextRank"] = nil
    }
}
