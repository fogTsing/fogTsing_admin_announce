ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function ergodic(tab)
    for k,v in pairs(tab) do
        playerIdentifier = v
    end
end

local adminSteamId = {
    "steam:你的Steam16进制码"
}

RegisterServerEvent("checkSteamIdTrueOrFalse")
AddEventHandler("checkSteamIdTrueOrFalse", function()
    ergodic(adminSteamId)
    if (playerIdentifier == GetPlayerIdentifiers(source)[1]) then
        TriggerClientEvent("announce", -1)
    end
    playerIdentifier = nil
end)
