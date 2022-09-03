
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

                    SendNUIMessage({
                        wallet = "$" ..Player.money['cash'],
                        bank = "$" ..Player.money['bank'],
                        black_money = "$" ..Player.money['dirty'],
                        coins = "$" ..Player.money['coins'],
                    }) 

                end)
            end
            Wait(500)
        end
    end)

    RegisterCommand(Config.CommandCash, function()
            SendNUIMessage({
                action = 'showcash',
            }) 
	end)

    RegisterCommand(Config.CommandBank, function()
        SendNUIMessage({
            action = 'showbank',
        }) 
    end)

    RegisterCommand(Config.CommandBlackMoney, function()
        SendNUIMessage({
            action = 'showblack',
        }) 
    end)   
    
    RegisterCommand(Config.CommandVIPCoins, function()
        SendNUIMessage({
            action = 'showcoins',
        }) 
    end)   
	