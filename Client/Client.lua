
   
RegisterNetEvent("5G-Hud:setValues")
AddEventHandler("5G-Hud:setValues", function(account, money)
    GetAccountAndSendMoney(account, money)
end)


function GetAccountAndSendMoney(account, amount)
    SendNUIMessage({
        action = 'UpdateMoney',
        account = account,
        money = amount,
        icon = Config.IconMoneys,
        time = Config.TimeStatus
    })
end

