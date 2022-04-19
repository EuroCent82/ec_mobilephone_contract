ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('ec:mobilephoneMsg')
AddEventHandler('ec:mobilephoneMsg', function(i, m, t, s) snp(i, m, t, s) end)

--i = icon, m = Message, t = title, s = subtitle
function snp(i, m, t, s)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(m)
	SetNotificationMessage(i, i, true, t, s)
	DrawNotification(false, true)
end