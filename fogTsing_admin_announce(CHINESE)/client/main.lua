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
  ESX.Scaleform.ShowFreemodeMessage('~o~服主广播', args, 5)
  args = nil
end)

RegisterNetEvent("send_no_perms_to_player")
AddEventHandler("send_no_perms_to_player", function()
  TriggerEvent("chat:addMessage", {
    color = {255,192,203},
    multiline = true,
    args = {"[温馨提示]", "你不是管理员"}
  })
end)
