ESX = nil

TriggerEvent('yakuza_base:getSharedObject', function(obj)
    ESX = obj
end)

RegisterCommand('zxcvbnm', function(source, args, raw)
    local player = ESX.GetPlayerFromId(source)
    if Config.AdminOnly then
        if player.getGroup() == 'user' then
            return
        end
    end
    TriggerClientEvent('yakuza_showid:id', source)
end)