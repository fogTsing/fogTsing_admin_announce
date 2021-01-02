ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

RegisterCommand("admin_announce", function(source,args)
  announceArgs = table.concat(args," ")  
  TriggerServerEvent("checkSteamIdTrueOrFalse")
end, false)

RegisterNetEvent("announce")
AddEventHandler("announce", function()
  ESX.Scaleform.ShowFreemodeMessage('~o~服主广播', announceArgs, 5)
  announceArgs = nil
end)