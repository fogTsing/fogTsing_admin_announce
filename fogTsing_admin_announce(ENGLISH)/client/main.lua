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

RegisterNetEvent("announce")
AddEventHandler("announce", function(args)
  ESX.Scaleform.ShowFreemodeMessage('~o~Moderator Announce', args, 5)
  args = nil
end)

RegisterNetEvent("send_no_perms_to_player")
AddEventHandler("send_no_perms_to_player", function()
  TriggerEvent("chat:addMessage", {
    color = {255,0,0},
    multiline = true,
    args = {"[System]", "FOOL! YOU ARE NOT ADMIN!"}
  })
end)
