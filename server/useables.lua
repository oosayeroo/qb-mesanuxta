local QBCore = exports['qb-core']:GetCoreObject()

--====COFFEE===---

QBCore.Functions.CreateUseableItem("mesa-coffee", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkCoffee", src, item.name)
    end
end)

--=====COCKTAILS====---

QBCore.Functions.CreateUseableItem("beach-cocktail", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkCocktail1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("bloody-mary", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkCocktail1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("cherry-bomb", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkCocktail1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("orange-blast", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkCocktail1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("orange-vodka", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkCocktail1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("pina-colada", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkCocktail1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("pineapple-gin", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkCocktail1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("polarbear", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkCocktail1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("rumcoke", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkCocktail1", src, item.name)
    end
end)

---====BEER====----

QBCore.Functions.CreateUseableItem("pisswasser-crate", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:OpenCrate", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("pisswasser", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkBeer1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("pisswasser-lite", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkBeer1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("pisswasser-dark", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkBeer1", src, item.name)
    end
end)

--==SHOTS DRINKING==--

QBCore.Functions.CreateUseableItem("cherrydrop-shot", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkShot1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("firedrop-shot", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkShot1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lemonchello-shot", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkShot1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("liquidflame-shot", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkShot1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("minihulk-shot", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkShot1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("sourblast-shot", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkShot1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("tequila-shot", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkShot1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("vampireskiss-shot", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkShot1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("vampireslove-shot", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-mesanuxta:DrinkShot1", src, item.name)
    end
end)

