local QBCore = exports['qb-core']:GetCoreObject()


RegisterServerEvent("qb-mesanuxta:bill:player")
AddEventHandler("qb-mesanuxta:bill:player", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'mesanuxta' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.insert('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (:citizenid, :amount, :society, :sender)', {
                            ['citizenid'] = billed.PlayerData.citizenid,
                            ['amount'] = amount,
                            ['society'] = biller.PlayerData.job.name,
                            ['sender'] = biller.PlayerData.charinfo.firstname
                        })
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must Be A Valid Amount Above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You Cannot Bill Yourself', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'Player Not Online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No Access', 'error')
        end
end)


QBCore.Functions.CreateCallback('qb-mesanuxta:server:get:ingredientCoffee', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local beans = Ply.Functions.GetItemByName("mesa-beans")
    local cup = Ply.Functions.GetItemByName("mesa-cup")
    if beans ~= nil and cup ~= nil then
        cb(true)
    else
        cb(false)
    end
end)



QBCore.Functions.CreateCallback('qb-mesanuxta:server:get:ingredientCocktail', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local mix = Ply.Functions.GetItemByName("cocktail-mix")
    local cglass = Ply.Functions.GetItemByName("cocktail-glass")
    if mix ~= nil and cglass ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-mesanuxta:server:get:ingredientShots', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local smix = Ply.Functions.GetItemByName("shots-mix")
    local sglass = Ply.Functions.GetItemByName("shot-glass")
    if smix ~= nil and sglass ~= nil then
        cb(true)
    else
        cb(false)
    end
end)
