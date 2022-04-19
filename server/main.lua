ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
    while true do
        for k, playerid in pairs(GetPlayers()) do
            local xPlayer = ESX.GetPlayerFromId(playerid)

            if xPlayer.getInventoryItem(Config.MobilephoneContract.ItemName) ~= nil then
                local phones = xPlayer.getInventoryItem(Config.MobilephoneContract.ItemName).count

                if phones > 0 then
                    xPlayer.removeAccountMoney(Config.MobilephoneContract.Bank.Name, Config.MobilephoneContract.Pay)
                    TriggerClientEvent('ec:mobilephoneMsg', xPlayer.source, Config.MobilephoneContract.NotificationPicture, Config.MobilephoneContract.Message, Config.MobilephoneContract.Title, Config.MobilephoneContract.Subtitle)
                end
            end
        end
    end

    Citizen.Wait(Config.MobilephoneContract.Period)
end)