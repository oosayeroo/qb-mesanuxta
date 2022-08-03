local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = false
local onDuty = true
PlayerJob = {}
local IsMakingDrink = false

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Citizen.CreateThread(function()
    Mesanuxta = AddBlipForCoord(-1392.73, -588.94, 30.26)
    SetBlipSprite (Mesanuxta, 136)
    SetBlipDisplay(Mesanuxta, 4)
    SetBlipScale  (Mesanuxta, 0.7)
    SetBlipAsShortRange(Mesanuxta, true)
    SetBlipColour(Mesanuxta, 27)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Mesanuxta")
    EndTextCommandSetBlipName(Mesanuxta)
end) 

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == "mesanuxta" then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
	onDuty = duty
end)

RegisterNetEvent("qb-mesanuxta:DutyM")
AddEventHandler("qb-mesanuxta:DutyM", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("qb-mesanuxta:BottleFridgeLarge")
AddEventHandler("qb-mesanuxta:BottleFridgeLarge", function()
    TriggerEvent("inventory:client:SetCurrentStash", "Bottle Fridge Large")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Bottle Fridge Large", {
        maxweight = 200000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-mesanuxta:MesaFridge1")
AddEventHandler("qb-mesanuxta:MesaFridge1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "Mesa Fridge 1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Mesa Fridge 1", {
        maxweight = 100000,
        slots = 20,
    })
end)

RegisterNetEvent("qb-mesanuxta:MesaFridge2")
AddEventHandler("qb-mesanuxta:MesaFridge2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "Mesa Fridge 2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Mesa Fridge 2", {
        maxweight = 100000,
        slots = 20,
    })
end)


--shop access
RegisterNetEvent("qb-mesanuxta:shop")
AddEventHandler("qb-mesanuxta:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "mesanuxta", Config.MesaItems)
end)


