-- thanks to Chassemoss from Auberdine for the translation!

if GetLocale() == "frFR" then
    i18n = {
        ["all spells on max rank"] = "Tous les sorts sur vos barres d'action sont au rang maximum !",
        ["uprank failed because spell not learned"] = "|cffFF0000Ce sort ne peut pas être amélioré car vous n'avez pas encore appris le nouveau rang. Veuillez consulter un entraineur et réessayer.|r",
        ["uprank successful"] = "%s |cffFF0000%s|r amélioré avec succès vers %s |cff00FF00%s|r!",
        ["outranked spell used chat"] = "  %s |cffFF0000%s|r used.\nRang maximum disponible pour vous au  |cffFF0000niveau %d|r is:\n%s |cffFF0000%s|r!",
        ["outranked spell used fading"] = "%s |cffFF0000%s|r used.\nRang maximum disponible pour vous au  |cffFF0000niveau %d|r is |cffFF0000%s|r!",
        ["info row chunks"] = {
            "peu être amélioré vers",
            "",
            "AMELIORER",
            "APPRENDRE"
        },
        ["uprank all"] = "Améliorer tout"
    }
end