Config = {}

Config.DebugMesaPoly = true

Config.MesaGaragePedModel = "s_m_y_barman_01"  --change to whatever model you like
Config.MesaGaragePedLocation = vector4(-1385.91, -584.64, 30.2, 18.14) --vector 4 only
Config.SpawnCarLocation = vector4(-1393.37, -582.05, 30.14, 305.8)  --vector4 only
Config.CompanyVehicle = 'baller3'  --change car model to whatever you like

Config.MesaItems = {
label = "24/7 Goods Delivery",
    slots = 5,  --make sure this number is the same as the amount of items you have in this list or it wont work
    items = {
        [1] = {
            name = "mesa-beans",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "mesa-cup",
            price = 1,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "pisswasser-crate",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "cocktail-mix",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "shots-mix",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
    }
}
