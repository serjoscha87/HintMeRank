-- localized by: https://github.com/josegoval

if GetLocale() == "esES" or GetLocale() == "esMX" then
    i18n = {
        ["all spells on max rank"] = "¡Todos los hechizos en tus barras de acción están en rango máximo!",
        ["uprank failed because spell not learned"] = "|cffFF0000Este hechizo no se puede actualizar porque aún no has aprendido el rango más nuevo. Por favor, visita un instructor e inténtalo de nuevo.|r",
        ["uprank successful"] = "%s |cffFF0000%s|r actualizado con éxito a %s |cff00FF00%s|r!",
        ["outranked spell used chat"] = "  Has usado %s |cffFF0000%s|r.\nEl rango máximo disponible para ti al |cffFF0000nivel %d|r es:\n%s |cffFF0000%s|r.",
        ["outranked spell used fading"] = "Has usado %s |cffFF0000%s|r.\n¡El rango máximo disponible para ti al |cffFF0000nivel %d|r es el |cffFF0000%s|r!",
        ["info row chunks"] = {
            "se puede mejorar a",
            "",
            "MEJORAR",
            "INSTRUCTOR"
        },
        ["uprank all"] = "Mejorar todo"
    }
end