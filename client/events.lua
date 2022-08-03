local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = false
local onDuty = true
PlayerJob = {}
local IsMakingDrink = false

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end

RegisterNetEvent("qb-mesanuxta:GetShotGlass")
AddEventHandler("qb-mesanuxta:GetShotGlass", function()
		TriggerServerEvent('QBCore:Server:AddItem', "shot-glass", 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['shot-glass'], "add")
end)

RegisterNetEvent("qb-mesanuxta:GetCockGlass")
AddEventHandler("qb-mesanuxta:GetCockGlass", function()
    TriggerServerEvent('QBCore:Server:AddItem', "cocktail-glass", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['cocktail-glass'], "add")
end)

RegisterNetEvent('qb-mesanuxta:BrewCoffee', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientCoffee', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Brewing Coffee . . .', 4000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@machinery@speed_drill@',
                anim = 'reachout_amy_skater_01',
                flags = 8,
            }, {
                model = 'v_res_mcofcup',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 360.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "mesa-beans", 1)
				TriggerServerEvent('QBCore:Server:RemoveItem', "mesa-cup", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "mesa-coffee", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["mesa-coffee"], "add")
                QBCore.Functions.Notify("You Made a Coffee!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@machinery@speed_drill@', 'reachout_amy_skater_01', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

---====COCKTAIL MAKING===---

RegisterNetEvent('qb-mesanuxta:MakeBeachCocktail', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientCocktail', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Making Cocktail . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base',
                anim = 'spray_centre_mid',
                flags = 8,
            }, {
                model = 'prop_bar_cockshaker',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 360.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "cocktail-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "beach-cocktail", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["beach-cocktail"], "add")
                QBCore.Functions.Notify("You Made a Cocktail!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base', 'spray_centre_mid', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakeBloodyMary', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientCocktail', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Making Cocktail . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base',
                anim = 'spray_centre_mid',
                flags = 8,
            }, {
                model = 'prop_bar_cockshaker',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 360.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "cocktail-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "bloody-mary", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["bloody-mary"], "add")
                QBCore.Functions.Notify("You Made a Cocktail!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base', 'spray_centre_mid', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakeCherryBomb', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientCocktail', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Making Cocktail . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base',
                anim = 'spray_centre_mid',
                flags = 8,
            }, {
                model = 'prop_bar_cockshaker',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 360.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "cocktail-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "cherry-bomb", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cherry-bomb"], "add")
                QBCore.Functions.Notify("You Made a Cocktail!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base', 'spray_centre_mid', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakeOrangeBlast', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientCocktail', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Making Cocktail . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base',
                anim = 'spray_centre_mid',
                flags = 8,
            }, {
                model = 'prop_bar_cockshaker',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 360.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "cocktail-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "orange-blast", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["orange-blast"], "add")
                QBCore.Functions.Notify("You Made a Cocktail!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base', 'spray_centre_mid', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakeOrangeVodka', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientCocktail', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Making Cocktail . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base',
                anim = 'spray_centre_mid',
                flags = 8,
            }, {
                model = 'prop_bar_cockshaker',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 360.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "cocktail-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "orange-vodka", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["orange-vodka"], "add")
                QBCore.Functions.Notify("You Made a Cocktail!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base', 'spray_centre_mid', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakePinaColada', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientCocktail', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Making Cocktail . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base',
                anim = 'spray_centre_mid',
                flags = 8,
            }, {
                model = 'prop_bar_cockshaker',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 360.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "cocktail-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "pina-colada", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["pina-colada"], "add")
                QBCore.Functions.Notify("You Made a Cocktail!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base', 'spray_centre_mid', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakePineappleGin', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientCocktail', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Making Cocktail . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base',
                anim = 'spray_centre_mid',
                flags = 8,
            }, {
                model = 'prop_bar_cockshaker',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 360.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "cocktail-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "pineapple-gin", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["pineapple-gin"], "add")
                QBCore.Functions.Notify("You Made a Cocktail!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base', 'spray_centre_mid', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakePolarBear', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientCocktail', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Making Cocktail . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base',
                anim = 'spray_centre_mid',
                flags = 8,
            }, {
                model = 'prop_bar_cockshaker',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 360.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "cocktail-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "polarbear", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["polarbear"], "add")
                QBCore.Functions.Notify("You Made a Cocktail!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base', 'spray_centre_mid', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakeRumCoke', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientCocktail', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Making Cocktail . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base',
                anim = 'spray_centre_mid',
                flags = 8,
            }, {
                model = 'prop_bar_cockshaker',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 360.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "cocktail-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "rumcoke", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["rumcoke"], "add")
                QBCore.Functions.Notify("You Made a Cocktail!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base', 'spray_centre_mid', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

--====SHOTS MAKING===----
RegisterNetEvent('qb-mesanuxta:MakeCherryDrop', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientShots', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Pouring Shots . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@',
                anim = 'cork_burst',
                flags = 8,
            }, {
                model = 'prop_bottle_macbeth',
                bone = 28422,
                coords = { x = -0.000, y = 0.00, z = 0.00 },
                rotation = { x = 180.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "shots-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "cherrydrop-shot", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cherrydrop-shot"], "add")
                QBCore.Functions.Notify("You Poured a Shot!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@', 'cork_burst', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakeFireDrop', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientShots', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Pouring Shots . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@',
                anim = 'cork_burst',
                flags = 8,
            }, {
                model = 'prop_bottle_macbeth',
                bone = 28422,
                coords = { x = -0.000, y = 0.00, z = 0.00 },
                rotation = { x = 180.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "shots-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "firedrop-shot", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["firedrop-shot"], "add")
                QBCore.Functions.Notify("You Poured a Shot!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@', 'cork_burst', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakeLemonchello', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientShots', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Pouring Shots . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@',
                anim = 'cork_burst',
                flags = 8,
            }, {
                model = 'prop_bottle_macbeth',
                bone = 28422,
                coords = { x = -0.000, y = 0.00, z = 0.00 },
                rotation = { x = 180.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "shots-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "lemonchello-shot", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["lemonchello-shot"], "add")
                QBCore.Functions.Notify("You Poured a Shot!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@', 'cork_burst', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakeLiquidFlame', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientShots', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Pouring Shots . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@',
                anim = 'cork_burst',
                flags = 8,
            }, {
                model = 'prop_bottle_macbeth',
                bone = 28422,
                coords = { x = -0.000, y = 0.00, z = 0.00 },
                rotation = { x = 180.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "shots-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "liquidflame-shot", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["liquidflame-shot"], "add")
                QBCore.Functions.Notify("You Poured a Shot!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@', 'cork_burst', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakeMiniHulk', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientShots', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Pouring Shots . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@',
                anim = 'cork_burst',
                flags = 8,
            }, {
                model = 'prop_bottle_macbeth',
                bone = 28422,
                coords = { x = -0.000, y = 0.00, z = 0.00 },
                rotation = { x = 180.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "shots-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "minihulk-shot", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["minihulk-shot"], "add")
                QBCore.Functions.Notify("You Poured a Shot!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@', 'cork_burst', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakeSourBlast', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientShots', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Pouring Shots . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@',
                anim = 'cork_burst',
                flags = 8,
            }, {
                model = 'prop_bottle_macbeth',
                bone = 28422,
                coords = { x = -0.000, y = 0.00, z = 0.00 },
                rotation = { x = 180.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "shots-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "sourblast-shot", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["sourblast-shot"], "add")
                QBCore.Functions.Notify("You Poured a Shot!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@', 'cork_burst', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakeTequila', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientShots', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Pouring Shots . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@',
                anim = 'cork_burst',
                flags = 8,
            }, {
                model = 'prop_bottle_macbeth',
                bone = 28422,
                coords = { x = -0.000, y = 0.00, z = 0.00 },
                rotation = { x = 180.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "shots-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "tequila-shot", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tequila-shot"], "add")
                QBCore.Functions.Notify("You Poured a Shot!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@', 'cork_burst', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakeVampiresKiss', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientShots', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Pouring Shots . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@',
                anim = 'cork_burst',
                flags = 8,
            }, {
                model = 'prop_bottle_macbeth',
                bone = 28422,
                coords = { x = -0.000, y = 0.00, z = 0.00 },
                rotation = { x = 180.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "shots-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "vampireskiss-shot", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["vampireskiss-shot"], "add")
                QBCore.Functions.Notify("You Poured a Shot!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@', 'cork_burst', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)

RegisterNetEvent('qb-mesanuxta:MakeVampiresLove', function() 
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-mesanuxta:server:get:ingredientShots', function(HasItems)  
    		if HasItems then
            IsMakingDrink = true
            QBCore.Functions.Progressbar('bartend', 'Pouring Shots . . .', 2000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@',
                anim = 'cork_burst',
                flags = 8,
            }, {
                model = 'prop_bottle_macbeth',
                bone = 28422,
                coords = { x = -0.000, y = 0.00, z = 0.00 },
                rotation = { x = 180.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('QBCore:Server:RemoveItem', "shots-mix", 1)
				TriggerServerEvent('QBCore:Server:AddItem', "vampireslove-shot", 1)
            	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["vampireslove-shot"], "add")
                QBCore.Functions.Notify("You Poured a Shot!", "success", "20")
                IsMakingDrink = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'anim@amb@nightclub@mini@drinking@champagne_drinking@base@', 'cork_burst', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsMakingDrink = false
            end)
		else
			   QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
		end
	end)
else 
	QBCore.Functions.Notify("You must be Clocked into work", "error")
end
end)