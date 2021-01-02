ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function ergodic(tab)
    for k,v in pairs(tab) do
        playerIdentifier = v
    end
end

local adminSteamId = {
    "steam:YOUR STEAM HEX"
}

RegisterCommand("admin_announce", function(source,args)
    announceArgs = table.concat(args," ")  
    ergodic(adminSteamId)
    if (playerIdentifier == GetPlayerIdentifiers(source)[1]) then
        TriggerClientEvent("announce", -1, announceArgs)
    end
    playerIdentifier = nil
end, false)



