ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent("5G-Hud:getMoneys")
AddEventHandler("5G-Hud:getMoneys", function()
	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)

	if xPlayer ~= nil then

		local user_identifier = nil
		user_identifier = xPlayer.getIdentifier()

	    TriggerClientEvent("5G-Hud:setValues", _source, xPlayer.getMoney(), xPlayer.getAccount('bank').money, xPlayer.getAccount('coins').money, xPlayer.getAccount('black_money').money)
	end
end)