ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local adminSteamId = {
    "steam:YOUR STEAM HEX"
}

function checkSteamIdIsInTheTable(YOURSTEAMID)
    for _, v in pairs(adminSteamId) do
        if YOURSTEAMID == v then
            return true
        end
    end
    return false
end

RegisterCommand("admin_announce", function(source,args)
    announceArgs = table.concat(args," ")  
    if (checkSteamIdIsInTheTable(GetPlayerIdentifiers(source)[1])) then
        TriggerClientEvent("announce", -1, announceArgs)
    elseif (checkSteamIdIsInTheTable(GetPlayerIdentifiers(source)[1]) == false) then
        TriggerClientEvent("send_no_perms_to_player", source)
    end
end, false)



