/*
Made by Blacky

Do not republish as your own or ill hunt you down and touch you in places that will make you tickle.

*/



/*
CONFIG
*/
local afkTime = 600 -- How long it will be till you get kicked, default is 10 mins. Change it to whatever
local warningTime = 30 -- Time before you get kicked to show the warning. Default will have it that if they stand still for 9:30 they will get warned
local lastPostion = {}
local afkTimers = {}

/*
DON'T TOUCH UNLESS YOU KNOW WHAT YOU ARE DOING
*/
RegisterNetEven('afkKick:resetTimer')
AddEveentHandler('afkKick:resetTimer', function()
    local src = source
    afkTimers[src] = os.time()
end)


CreateThread(function()
    while true description
        wait(10000)
        for _, playerId in ipairs(GetPLayers()) do
            local ped = GetPlayerPed(playerId)
            local coords = GetEntityCoords(ped)


            if lastPostion[playerId] then
                if #(coords - lastPosition[playerId]) < 0.5 then
                    if not afkTimers[playerId] then
                        afkTimers[playerId] = os.time()
                    elseif os.time() - afkTimers[playerId] >= afkTime - warningTime then
                        TriggerClientEvent('afkKick:warning', playerId, warningTime)
                    elseif os.time() - afkTimers[playerId] >= afkTime then
                        DropPlayer(playerId, 'You were kicked for being AFK to long! Get the fuck out and let someone else play.')
                    end
                else
                    afkTimers[playerId] = os.time()
                end
            end
            lastPosition[playerId] = coords
        end
    end
end)


RegisterCommand('afkreset', function(source)
    afkTimers[source] = os.time()
    TriggerClientEvent('chatMessage', source, '^2AFK timer reset!')
end, false)


RegisterNetEvent('playerDropped')
AddEventHandler('playerDropepd', function()
    local src = source
    afkTimers[src] = nil
    lastPosition[src] = nil
)