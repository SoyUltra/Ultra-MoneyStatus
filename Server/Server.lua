if Config.Framework == "ESX" then

	ESX               = nil

	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


	if Config.MoneyCash == true then
		RegisterCommand(Config.CommandCash, function(source)
			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)
			local money = xPlayer.getMoney()
			TriggerClientEvent("ultramoney:setValues", _source, 'money', money)
		end)
	end

	if Config.VIPCoins == true then
		RegisterCommand(Config.CommandVIPCoins, function(source)
			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)
			local coins = xPlayer.getAccount('coins').money
			TriggerClientEvent("ultramoney:setValues", _source, 'coins', coins)
		end)
	end

	if Config.MoneyBank == true then
		RegisterCommand(Config.CommandBank, function(source)
			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)
			local bank = xPlayer.getAccount('bank').money
			TriggerClientEvent('ultramoney:setValues', _source, 'bank', bank)
		end)
	end

	if Config.BlackMoney == true then
		RegisterCommand(Config.CommandBlackMoney, function(source)
			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)
			local black_money = xPlayer.getAccount('black_money').money
			TriggerClientEvent('ultramoney:setValues', _source, 'black_money', black_money)
		end)
	end

end