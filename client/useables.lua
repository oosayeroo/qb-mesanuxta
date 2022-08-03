local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = false
local onDuty = true
PlayerJob = {}

DrinkMesaCoffee = {
    ["mesa-coffee"] = math.random(5, 10),
}

DrinkMesaBeer = {
    ["pisswasser"] = math.random(5, 10),
    ["pisswasser-lite"] = math.random(5, 10),
    ["pisswasser-dark"] = math.random(5, 10),
}

DrinkMesaCocktails = {
    ["beach-cocktail"] = math.random(5, 10),
    ["bloody-mary"] = math.random(5, 10),
    ["cherry-bomb"] = math.random(5, 10),
    ["orange-blast"] = math.random(5, 10),
    ["orange-vodka"] = math.random(5, 10),
    ["pina-colada"] = math.random(5, 10),
    ["pineapple-gin"] = math.random(5, 10),
    ["polarbear"] = math.random(5, 10),
    ["rumcoke"] = math.random(5, 10),
}

DrinkMesaShots = {
    ["cherrydrop-shot"] = math.random(5, 10),
    ["firedrop-shot"] = math.random(5, 10),
    ["lemonchello-shot"] = math.random(5, 10),
    ["liquidflame-shot"] = math.random(5, 10),
    ["minihulk-shot"] = math.random(5, 10),
    ["sourblast-shot"] = math.random(5, 10),
    ["tequila-shot"] = math.random(5, 10),
    ["vampireskiss-shot"] = math.random(5, 10),
    ["vampireslove-shot"] = math.random(5, 10),
}

RegisterNetEvent('qb-mesanuxta:DrinkCoffee', function(itemName) 
    QBCore.Functions.Progressbar('cook', 'Drinking . . .', 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
        disableInventory = true,
    }, {
        animDict = 'amb@world_human_drinking@coffee@male@idle_a',
        anim = 'idle_b',
        flags = 8,
    }, {
        model = 'v_res_mcofcup',
        bone = 28422,
        coords = { x = -0.020, y = -0.020, z = -0.000 },
        rotation = { x = 350.0, y = 360.0, z = 0.0 },
    }, {}, function()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + DrinkMesaCoffee[itemName])
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), 'amb@world_human_drinking@coffee@male@idle_a', 'idle_b', 1.0)
        QBCore.Functions.Notify("Canceled..", "error")
    end)
end)

RegisterNetEvent('qb-mesanuxta:DrinkCocktail1', function(itemName) 
    QBCore.Functions.Progressbar('cook', 'Drinking . . .', 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
        disableInventory = true,
    }, {
        animDict = 'amb@world_human_drinking@coffee@male@idle_a',
        anim = 'idle_b',
        flags = 8,
    }, {
        model = 'p_wine_glass_s',
        bone = 28422,
        coords = { x = -0.020, y = -0.020, z = -0.070 },
        rotation = { x = 350.0, y = 360.0, z = 0.0 },
    }, {}, function()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + DrinkMesaCocktails[itemName])
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), 'amb@world_human_drinking@coffee@male@idle_a', 'idle_b', 1.0)
        QBCore.Functions.Notify("Canceled..", "error")
    end)
end)

RegisterNetEvent('qb-mesanuxta:DrinkBeer1', function(itemName) 
    QBCore.Functions.Progressbar('cook', 'Drinking . . .', 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
        disableInventory = true,
    }, {
        animDict = 'amb@world_human_drinking@coffee@male@idle_a',
        anim = 'idle_b',
        flags = 8,
    }, {
        model = 'prop_amb_beer_bottle',
        bone = 28422,
        coords = { x = -0.00, y = -0.00, z = -0.00 },
        rotation = { x = 350.0, y = 360.0, z = 0.0 },
    }, {}, function()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + DrinkMesaBeer[itemName])
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), 'amb@world_human_drinking@coffee@male@idle_a', 'idle_b', 1.0)
        QBCore.Functions.Notify("Canceled..", "error")
    end)
end)

RegisterNetEvent('qb-mesanuxta:DrinkShot1', function(itemName) 
    QBCore.Functions.Progressbar('cook', 'Drinking . . .', 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
        disableInventory = true,
    }, {
        animDict = 'amb@world_human_drinking@coffee@male@idle_a',
        anim = 'idle_b',
        flags = 8,
    }, {
        model = 'prop_shot_glass',
        bone = 28422,
        coords = { x = -0.00, y = -0.020, z = -0.000 },
        rotation = { x = 350.0, y = 360.0, z = 0.0 },
    }, {}, function()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + DrinkMesaShots[itemName])
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), 'amb@world_human_drinking@coffee@male@idle_a', 'idle_b', 1.0)
        QBCore.Functions.Notify("Canceled..", "error")
    end)
end)

RegisterNetEvent("qb-mesanuxta:OpenCrate")
AddEventHandler("qb-mesanuxta:OpenCrate", function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local pcase = `hei_heist_cs_beer_box` 
    RequestModel(pcase)
    while (not HasModelLoaded(pcase)) do
        Wait(1)
    end
    local pobj = CreateObject(pcase, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(pobj)
    SetEntityAsMissionEntity(pobj)

    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('name_here', 'Unpacking Beers...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})

        DeleteEntity(pobj)

        TriggerServerEvent('QBCore:Server:RemoveItem', 'pisswasser-crate', 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['pisswasser-crate'], "remove")
        TriggerServerEvent('QBCore:Server:AddItem', "pisswasser", 10)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['pisswasser'], "add")
		TriggerServerEvent('QBCore:Server:AddItem', "pisswasser-lite", 10)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['pisswasser-lite'], "add")
		TriggerServerEvent('QBCore:Server:AddItem', "pisswasser-dark", 10)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['pisswasser-dark'], "add")
        
    end)
end)