ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('armour', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('armour', 1)
	TriggerClientEvent('nvr-armour:use', source)

end)

ESX.RegisterServerCallback('nvr-armour:time', function(source, cb)
    cb(os.time())
end)