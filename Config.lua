-- ███████ ███████ ████████ ████████ ██ ███    ██  ██████  
-- ██      ██         ██       ██    ██ ████   ██ ██       
-- ███████ █████      ██       ██    ██ ██ ██  ██ ██   ███ 
--      ██ ██         ██       ██    ██ ██  ██ ██ ██    ██ 
-- ███████ ███████    ██       ██    ██ ██   ████  ██████  
                                 

Config = {}

Config.WaitValue = 5000 
Config.TimeStatus = 4000

Config.IconMoneys = ' $'

Config.CommandCash = 'cash'
Config.CommandVIPCoins = 'coins'
Config.CommandBank = 'bank'
Config.CommandBlackMoney = 'dirty'
---------------------------------------------------------------------------------------

TriggerEvent('chat:addSuggestion', '/cash', 'See your Cash')
TriggerEvent('chat:addSuggestion', '/coins', 'See your VIP Money')
TriggerEvent('chat:addSuggestion', '/bank', 'See your Money bank')
TriggerEvent('chat:addSuggestion', '/dirty', 'See your Black Money')
