local QBCore = exports['qb-core']:GetCoreObject()

isLoggedIn = true
PlayerJob = {}

local onDuty = true

-- target

Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("MesaBusinessMenu", vector3(-1388.08, -606.32, 30.55), 0.4, 0.5, { 
		name = "MesaBusinessMenu",
		heading = 33.0,
		debugPoly = Config.DebugMesaPoly,
		minZ=30.3,
		maxZ=30.7,
	}, {
		options = {
		    {  
			event = "qb-mesanuxta:MesaBusinessMenu",
			icon = "far fa-clipboard",
			label = "Access Business",
			job = "mesanuxta",
		    },
		},
		distance = 1.5
	})

    exports['qb-target']:AddBoxZone("MesaRegister1", vector3(-1390.37, -605.02, 29.75), 0.7, 0.6, {  
		name = "MesaRegister1",
		heading = 300,
		debugPoly = Config.DebugMesaPoly,
		minZ=30.4,
		maxZ=31.0,
	}, {
		options = {
		    {  
			event = "qb-mesanuxta:bill",
			icon = "far fa-credit-card",
			label = "Charge Customer",
			job = "mesanuxta",
		    },
		},
		distance = 1.5
	})

    exports['qb-target']:AddBoxZone("MesaRegister2", vector3(-1379.37, -629.73, 30.41), 0.7, 0.5, {  
		name = "MesaRegister2",
		heading = 30,
		debugPoly = Config.DebugMesaPoly,
		minZ=30.7,
		maxZ=31.3,
	}, {
		options = {
		    {  
			event = "qb-mesanuxta:bill",
			icon = "far fa-credit-card",
			label = "Charge Customer",
			job = "mesanuxta",
		    },
		},
		distance = 1.5
	})

    exports['qb-target']:AddBoxZone("MesaRegister3", vector3(-1376.49, -627.79, 30.32), 0.7, 0.5, {  
		name = "MesaRegister3",
		heading = 30,
		debugPoly = Config.DebugMesaPoly,
		minZ=30.7,
		maxZ=31.3,
	}, {
		options = {
		    {  
			event = "qb-mesanuxta:bill",
			icon = "far fa-credit-card",
			label = "Charge Customer",
			job = "mesanuxta",
		    },
		},
		distance = 1.5
	})

    exports['qb-target']:AddBoxZone("MesaRegister4", vector3(-1372.94, -625.46, 30.45), 0.7, 0.5, {  
		name = "MesaRegister4",
		heading = 30,
		debugPoly = Config.DebugMesaPoly,
		minZ=30.7,
		maxZ=31.3,
	}, {
		options = {
		    {  
			event = "qb-mesanuxta:bill",
			icon = "far fa-credit-card",
			label = "Charge Customer",
			job = "mesanuxta",
		    },
		},
		distance = 1.5
	})

		exports['qb-target']:AddBoxZone("MesaDrinksMenu1", vector3(-1390.71, -603.86, 30.67), 0.8, 0.8, {
			name = "MesaDrinksMenu1",
			heading = 284.5,
			debugPoly = Config.DebugMesaPoly,
			minZ=30.4,
			maxZ=31.1,
		}, {
			options = {
			    {
				event = "qb-mesanuxta:DrinksMenu",
				icon = "fas fa-cocktail",
				label = "Make Cocktails",
                job = "mesanuxta",
			    },
				{
				event = "qb-mesanuxta:GetCockGlass",
				icon = "fas fa-hand",
				label = "Grab Cocktail Glass",
				job = "mesanuxta",
				},
			},
			distance = 1.5
		})

        exports['qb-target']:AddBoxZone("MesaDrinksMenu2", vector3(-1377.62, -631.27, 31.31), 0.6, 1.2, {
			name = "MesaDrinksMenu2",
			heading = 215,
			debugPoly = Config.DebugMesaPoly,
			minZ=30.9,
			maxZ=31.7,
		}, {
			options = {
			    {
				event = "qb-mesanuxta:DrinksMenu",
				icon = "fas fa-cocktail",
				label = "Make Cocktails",
                job = "mesanuxta",
			    },
				{
				event = "qb-mesanuxta:GetCockGlass",
				icon = "fas fa-hand",
				label = "Grab Cocktail Glass",
				job = "mesanuxta",
				},
			},
			distance = 1.5
		})

        exports['qb-target']:AddBoxZone("MesaDrinksMenu3", vector3(-1375.27, -629.65, 31.31), 0.6, 1.2, {
			name = "MesaDrinksMenu3",
			heading = 215,
			debugPoly = Config.DebugMesaPoly,
			minZ=30.9,
			maxZ=31.7,
		}, {
			options = {
			    {
				event = "qb-mesanuxta:DrinksMenu",
				icon = "fas fa-cocktail",
				label = "Make Cocktails",
                job = "mesanuxta",
			    },
				{
				event = "qb-mesanuxta:GetCockGlass",
				icon = "fas fa-hand",
				label = "Grab Cocktail Glass",
				job = "mesanuxta",
				},
			},
			distance = 1.5
		})

        exports['qb-target']:AddBoxZone("MesaShotMenu1", vector3(-1374.05, -629.01, 31.11), 0.6, 1.1, {
			name = "MesaShotMenu1",
			heading = 215,
			debugPoly = Config.DebugMesaPoly,
			minZ=30.9,
			maxZ=31.7,
		}, {
			options = {
			    {
				event = "qb-mesanuxta:ShotsMenu",
				icon = "fas fa-cocktail",
				label = "Pour Shots",
                job = "mesanuxta",
			    },
				{
				event = "qb-mesanuxta:GetShotGlass",
				icon = "fas fa-hand",
				label = "Grab Shot Glass",
                job = "mesanuxta",
			    },
			},
			distance = 1.5
		})

        exports['qb-target']:AddBoxZone("MesaShotMenu2", vector3(-1376.45, -630.51, 31.1), 0.6, 1.2, {
			name = "MesaShotMenu2",
			heading = 215,
			debugPoly = Config.DebugMesaPoly,
			minZ=30.9,
			maxZ=31.7,
		}, {
			options = {
			    {
				event = "qb-mesanuxta:ShotsMenu",
				icon = "fas fa-cocktail",
				label = "Pour Shots",
                job = "mesanuxta",
			    },
				{
				event = "qb-mesanuxta:GetShotGlass",
				icon = "fas fa-hand",
				label = "Grab Shot Glass",
                job = "mesanuxta",
			    },
			},
			distance = 1.5
		})

        exports['qb-target']:AddBoxZone("MesaShotMenu3", vector3(-1391.04, -602.83, 30.63), 0.6, 0.8, {
			name = "MesaShotMenu3",
			heading = 280,
			debugPoly = Config.DebugMesaPoly,
			minZ=30.3,
			maxZ=31.0,
		}, {
			options = {
			    {
				event = "qb-mesanuxta:ShotsMenu",
				icon = "fas fa-cocktail",
				label = "Pour Shots",
                job = "mesanuxta",
			    },
				{
				event = "qb-mesanuxta:GetShotGlass",
				icon = "fas fa-hand",
				label = "Grab Shot Glass",
                job = "mesanuxta",
			    },
			},
			distance = 1.5
		})


	exports['qb-target']:AddBoxZone("MesaCoffeeMachine", vector3(-1386.64, -605.22, 30.59), 0.4, 0.7, {
		name="MesaCoffeeMachine",
		heading=33,
		debugPoly=Config.DebugMesaPoly,
		minZ=30.3,
		maxZ=30.9,
	}, {
		options = {
			{
				event = "qb-mesanuxta:BrewCoffee",
				icon = "fas fa-coffee",
				label = "Brew Coffee",
				job = "mesanuxta",
			},
		},
		distance = 1.5
	})


		exports['qb-target']:AddBoxZone("BottleFridgeLarge", vector3(-1386.57, -609.02, 30.2), 0.6, 0.9, {
		name="BottleFridgeLarge",
		heading=210,
		debugPoly=Config.DebugMesaPoly,
		minZ=29.7,
		maxZ=31.6,
		}, {
		    options = {
			{
			    event = "qb-mesanuxta:BottleFridgeLarge",
			    icon = "fas fa-snowflake",
			    label = "Fridge",
			    job = "mesanuxta",
			},
		    },
		    distance = 1.2
		})


        exports['qb-target']:AddBoxZone("MesaFridge1", vector3(-1377.62, -631.27, 30.31), 1.1, 1.2, {
			name = "MesaFridge1",
			heading = 215,
			debugPoly = Config.DebugMesaPoly,
			minZ=30.0,
			maxZ=30.6,
		}, {
			options = {
			    {
				event = "qb-mesanuxta:MesaFridge1",
				icon = "fas fa-snowflake",
				label = "Access Fridge",
                job = "mesanuxta",
			    },
			},
			distance = 1.5
		})

        exports['qb-target']:AddBoxZone("MesaFridge2", vector3(-1374.05, -629.01, 31.11), 1.2, 1.2, {
			name = "MesaFridge2",
			heading = 215,
			debugPoly = Config.DebugMesaPoly,
			minZ=30.0,
			maxZ=30.6,
		}, {
			options = {
			    {
				event = "qb-mesanuxta:MesaFridge2",
				icon = "fas fa-snowflake",
				label = "Access Fridge",
                job = "mesanuxta",
			    },
			},
			distance = 1.5
		})

end)



-- QB-MENU --

RegisterNetEvent('qb-mesanuxta:MesaBusinessMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| Mesanuxta |",
            isMenuHeader = true, 
        },
        {
            
            header = "• Toggle Duty",
            txt = "",
            params = {
                event = "qb-mesanuxta:DutyM"
            }
        },
        {
            
            header = "• Charge Customer",
            txt = "",
            params = {
                event = "qb-mesanuxta:bill"
            }
        },
        {
            
            header = "• Order Items",
            txt = "Order New Ingredients!",
            params = {
                event = "qb-mesanuxta:shop"
            }
        },
        {

            header = "• Manage Business",
            txt = "Open Boss Menu",
            params = {
                event = "qb-bossmenu:client:OpenMenu"
            }
        },
        {
            id = 7,
            header = "Close (ESC)",
            isMenuHeader = true, 
        },
    })
end)

RegisterNetEvent('qb-mesanuxta:DrinksMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| COCKTAILS |",
            isMenuHeader = true, 
        },
        {
            
            header = "• Sax on the Beach",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeBeachCocktail"
            }
        },
        {
            
            header = "• Bloody Mary",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeBloodyMary"
            }
        },
        {
            
            header = "• Cherry Bomb",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeCherryBomb"
            }
        },
        {
            
            header = "• Orange Blast",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeOrangeBlast"
            }
        },
        {
            
            header = "• Orange Vodka",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeOrangeVodka"
            }
        },
        {
            
            header = "• Pina Colada",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakePinaColada"
            }
        },
        {
            
            header = "• Pineapple Gin",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakePineappleGin"
            }
        },
        {
            
            header = "• Polar Bear",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakePolarBear"
            }
        },
        {
            
            header = "• Rum n Coke",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeRumCoke"
            }
        },
        {
            id = 7,
            header = "Close (ESC)",
            isMenuHeader = true, 
        },
    })
end)


RegisterNetEvent('qb-mesanuxta:ShotsMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| SHOTS |",
            isMenuHeader = true, 
        },
        {
            
            header = "• Cherry Drops",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeCherryDrop"
            }
        },
        {
            
            header = "• FireDrop",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeFireDrop"
            }
        },
        {
            
            header = "• Lemonchello",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeLemonchello"
            }
        },
        {
            
            header = "• Liquid Flame",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeLiquidFlame"
            }
        },
        {
            
            header = "• Mini Hulk",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeMiniHulk"
            }
        },
        {
            
            header = "• Sour Blast",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeSourBlast"
            }
        },
        {
            
            header = "• Tequila",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeTequila"
            }
        },
        {
            
            header = "• Vampires Kiss",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeVampiresKiss"
            }
        },
        {
            
            header = "• Vampires Love",
            txt = "",
            params = {
                event = "qb-mesanuxta:MakeVampiresLove"
            }
        },
        {
            id = 7,
            header = "Close (ESC)",
            isMenuHeader = true, 
        },
    })
end)

-- BILLING SYSTEM --
RegisterNetEvent("qb-mesanuxta:bill")
AddEventHandler("qb-mesanuxta:bill", function()
    local bill = exports['qb-input']:ShowInput({
        header = "Create Receipt",
		submitText = "Bill",
        inputs = {
            {
                text = "Server ID(#)",
				name = "citizenid", -- name of the input should be unique otherwise it might override
                type = "text", -- type of the input
                isRequired = true -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            },
            {
                text = "Bill Price ($)", -- text you want to be displayed as a place holder
                name = "billprice", -- name of the input should be unique otherwise it might override
                type = "number", -- type of the input - number will not allow non-number characters in the field so only accepts 0-9
                isRequired = false -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            }
			
        }
    })
    if bill ~= nil then
        if bill.citizenid == nil or bill.billprice == nil then 
            return 
        end
        TriggerServerEvent("qb-mesanuxta:bill:player", bill.citizenid, bill.billprice)
    end
end)
