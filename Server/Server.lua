if Config.Framework == "ESX" then

	ESX               = nil

	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


	RegisterCommand(Config.CommandCash, function(source)
		local _source = source
		local xPlayer = ESX.GetPlayerFromId(_source)
		local money = xPlayer.getMoney()
		TriggerClientEvent("ultramoney:setValues", _source, 'money', money)
	end)

	RegisterCommand(Config.CommandVIPCoins, function(source)
		local _source = source
		local xPlayer = ESX.GetPlayerFromId(_source)
		local coins = xPlayer.getAccount('coins').money
		TriggerClientEvent("ultramoney:setValues", _source, 'coins', coins)
	end)

	RegisterCommand(Config.CommandBank, function(source)
		local _source = source
		local xPlayer = ESX.GetPlayerFromId(_source)
		local bank = xPlayer.getAccount('bank').money
		TriggerClientEvent('ultramoney:setValues', _source, 'bank', bank)
	end)

	RegisterCommand(Config.CommandBlackMoney, function(source)
		local _source = source
		local xPlayer = ESX.GetPlayerFromId(_source)
		local black_money = xPlayer.getAccount('black_money').money
		TriggerClientEvent('ultramoney:setValues', _source, 'black_money', black_money)
	end)

end