local lang = GetLocale()

--if (lang ~= "enGB" and lang ~= "enUS") then
if (lang == "deDE") then
    return
end

i18n = {
    ["all spells on max rank"] = "All spells on your action slots are on max rank!",
    ["uprank failed because spell not learned"] = "|cffFF0000This spell cannot be upgraded as you have not yet learned the newer rank. Please visit a teacher and try again.|r",
    ["uprank successful"] = "%s |cffFF0000%s|r successfully upgraded to %s |cff00FF00%s|r!",
    ["outranked spell used"] = "\n%s |cffFF0000%s|r used.\nMax available rank for you at |cffFF0000level %d|r is:\n%s |cffFF0000%s|r!",
    ["info row chunks"] = {
        "can be upranked to",
        "",
        "UPRANK"
    }
}