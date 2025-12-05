if GetLocale() == "enGB" or GetLocale() == "enUS" then
    i18n = {
        ["all spells on max rank"] = "All spells on your action slots are on max rank!",
        ["uprank failed because spell not learned"] = "|cffFF0000This spell cannot be upgraded as you have not yet learned the newer rank. Please visit a teacher and try again.|r",
        ["uprank successful"] = "%s |cffFF0000%s|r successfully upgraded to %s |cff00FF00%s|r!",
        ["outranked spell used chat"] = "  %s |cffFF0000%s|r used.\nMax available rank for you at |cffFF0000level %d|r is:\n%s |cffFF0000%s|r!",
        ["outranked spell used fading"] = "%s |cffFF0000%s|r used.\nMax available rank for you at |cffFF0000level %d|r is |cffFF0000%s|r!",
        ["info row chunks"] = {
            "can be upranked to",
            "",
            "UPRANK",
            "TEACHER",
            "or"
        },
        ["ignored one rank"] = "ignored one rank",
        ["ignored all ranks"] = "ignored all ranks",
        ["spell ignored one rank"] = "Spell %s %s ignored for one rank upgrade.",
        ["spell ignored all ranks"] = "Spell %s ignored for all rank upgrades, starting from rank %s.",
        ["all ignored cleared"] = "All spell ignored cleared.",
        ["clear ignored"] = "Clear ignored",
        ["uprank all"] = "Uprank all"
    }
end