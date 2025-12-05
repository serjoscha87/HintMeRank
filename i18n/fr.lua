-- thanks to Chassemoss from Auberdine for the translation!

if GetLocale() == "frFR" then
    i18n = {
        ["all spells on max rank"] = "Tous les sorts sur vos barres d'action sont au rang maximum !",
        ["uprank failed because spell not learned"] = "|cffFF0000Ce sort ne peut pas être amélioré car vous n'avez pas encore appris le nouveau rang. Veuillez consulter un entraineur et réessayer.|r",
        ["uprank successful"] = "%s |cffFF0000%s|r amélioré avec succès vers %s |cff00FF00%s|r!",
        ["outranked spell used chat"] = " Utilisation de %s |cffFF0000%s|r détecté.\nUn rang suppérieur est disponible pour votre |cffFF0000niveau %d|r c'est:\n%s |cffFF0000%s|r!",
        ["outranked spell used fading"] = "Utilisation de %s |cffFF0000%s|r Détecté.\nAmélioration disponible: |cffFF0000niveau %d|r vers le |cffFF0000%s|r!",
        ["info row chunks"] = {
            "peu être amélioré vers",
            "",
            "AMELIORER",
            "APPRENDRE",
            "or"
        },
        ["ignored one rank"] = "ignored one rank",
        ["ignored all ranks"] = "ignored all ranks",
        ["spell ignored one rank"] = "Spell %s %s ignored for one rank upgrade.",
        ["spell ignored all ranks"] = "Spell %s ignored for all rank upgrades, starting from rank %s.",
        ["all ignored cleared"] = "All spell ignored cleared.",
        ["clear ignored"] = "Clear ignored",
        ["uprank all"] = "Améliorer tout"
    }
end