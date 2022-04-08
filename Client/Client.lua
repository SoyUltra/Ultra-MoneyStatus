
RegisterCommand(Config.CommandCash, function()
    SendNUIMessage({
        action = 'showwallet',
        time = Config.TimeStatus
    })
end)

RegisterCommand(Config.CommandBank, function()
    SendNUIMessage({
        action = 'showbank',
        time = Config.TimeStatus
    })
end)

RegisterCommand(Config.CommandVIPCoins, function()
    SendNUIMessage({
        action = 'showcoins',
        time = Config.TimeStatus
    })
end)

RegisterCommand(Config.CommandBlackMoney, function()
    SendNUIMessage({
        action = 'showblack',
        time = Config.TimeStatus
    })
end)
   
Citizen.CreateThread(function() 
    RegisterNetEvent("5G-Hud:setValues")
    AddEventHandler("5G-Hud:setValues", function(wallet, bank, coins, black_money)
    
    SendNUIMessage({
        wallet = Config.IconMoneys .. wallet,
        bank = Config.IconMoneys .. bank,
        coins = Config.IconMoneys .. coins,
        black_money = black_money
    })
    
    end)
end)

    
Citizen.CreateThread(function() 
    while true do
        Wait(Config.WaitValue)
        TriggerServerEvent('5G-Hud:getMoneys')
    end
end)