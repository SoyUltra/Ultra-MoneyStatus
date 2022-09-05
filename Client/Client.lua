
if Config.Framework == "ESX" then  

    RegisterNetEvent("ultramoney:setValues")
    AddEventHandler("ultramoney:setValues", function(account, money)
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

end

if Config.Framework == "QBCORE" then   
    
    QBCore = exports["qb-core"]:GetCoreObject()

        local PlayerData = QBCore.Functions.GetPlayerData()

    RegisterNetEvent("QBCore:Client:OnPlayerUnload", function()
        PlayerData = {}
    end)

    RegisterNetEvent("QBCore:Client:OnPlayerLoaded")
    AddEventHandler("QBCore:Client:OnPlayerLoaded", function ()
        PlayerData = {}
    end)

    local ped, pid, Player, playerId

    Citizen.CreateThread(function ()
        while true do 
            Wait(500)
            if LocalPlayer.state.isLoggedIn then 
                QBCore.Functions.GetPlayerData(function(PlayerData)
                    ped = PlayerPedId()
                    pid = GetPlayerServerId(PlayerId())
                    Player = QBCore.Functions.GetPlayerData()    
                    playerId = PlayerId()

                    if Config.MoneyCash == true then
                        SendNUIMessage({
                            wallet = "$" ..Player.money['cash'],
                        })
                    end

                    if Config.MoneyBank == true then
                        SendNUIMessage({
                            bank = "$" ..Player.money['bank'],
                        })
                    end

                    if Config.VIPCoins == true then
                        SendNUIMessage({
                            coins = "$" ..Player.money['coins'],
                        })
                    end

                    if Config.BlackMoney == true then
                        SendNUIMessage({
                            black_money = "$" ..Player.money['dirty'],
                        })
                    end

                end)
            end
            Wait(500)
        end
    end)

    if Config.MoneyCash == true then
        RegisterCommand(Config.CommandCash, function()
            SendNUIMessage({
                action = 'showcash',
            }) 
        end)
        TriggerEvent('chat:addSuggestion', '/cash', 'See your Cash')
    end

    if Config.MoneyBank == true then
        RegisterCommand(Config.CommandBank, function()
            SendNUIMessage({
                action = 'showbank',
            }) 
        end)
        TriggerEvent('chat:addSuggestion', '/bank', 'See your Money bank')
    end
    
    if Config.VIPCoins == true then
        RegisterCommand(Config.CommandVIPCoins, function()
            SendNUIMessage({
                action = 'showcoins',
            }) 
        end)  
        TriggerEvent('chat:addSuggestion', '/coins', 'See your VIP Money') 
    end

    if Config.BlackMoney == true then
        RegisterCommand(Config.CommandBlackMoney, function()
            SendNUIMessage({
                action = 'showblack',
            }) 
        end)   
        TriggerEvent('chat:addSuggestion', '/dirty', 'See your Black Money')
    end
end