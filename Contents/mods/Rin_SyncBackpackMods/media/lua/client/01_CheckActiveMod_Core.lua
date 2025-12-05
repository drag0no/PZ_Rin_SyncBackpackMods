CheckActiveMod = CheckActiveMod or {}

function CheckActiveMod.IsBritaActive(recipe, playerObj)
    return getActivatedMods():contains("Brita_2")
end

function CheckActiveMod.IsScrapArmorActive(recipe, playerObj)
    return getActivatedMods():contains("ScrapArmor(new version)") or getActivatedMods():contains("ScrapArmor")
end

function CheckActiveMod.IsAuthenticZActive(recipe, playerObj)
    return getActivatedMods():contains("Authentic Z - Current") or getActivatedMods():contains("AuthenticZBackpacks+")
end

function CheckActiveMod.IsArsenal26Active(recipe, playerObj)
    return getActivatedMods():contains("Arsenal(26)GunFighter")
end

function CheckActiveMod.IsTheyKnewActive(recipe, playerObj)
    return getActivatedMods():contains("TheyKnew")
end

function CheckActiveMod.IsUndeadSuvivorActive(recipe, playerObj)
    return getActivatedMods():contains("UndeadSuvivor")
end

function CheckActiveMod.IsSwatpackActive(recipe, playerObj)
    return getActivatedMods():contains("Swatpack")
end

function CheckActiveMod.IsSwatpackActive(recipe, playerObj)
    return getActivatedMods():contains("gothBags")
end
