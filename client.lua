/*
Made by Blacky

Do not republish as your own or ill hunt you down and touch you in places that will make you tickle.

DON'T TOUCH UNLESS YOU KNOW WHAT YOU ARE DOING

*/

RegisterNetEvent('afkKick:warning')
AddEventHandler('afkKick:warning', function(seconds)
    Citizen.CreateThread(function()
        local timeLeft = seconds
        while timeLeft > 0 do
            Wait(1000)
            timeLeft = timeLeft - 1
            SetNotificationTextEntry("STRING")
            AddTextComponentString("⚠️ You will be kicked for being AFK in ~r~" .. timeLeft .. " seconds!")
            DrawNotification(false, true)
        end
    end)
end)

Citizen.CreateThread(function()
    while true do
        Wait(5000)
        TriggerServerEvent('afkKick:resetTimer')
    end
end)
