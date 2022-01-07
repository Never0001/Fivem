

RegisterNetEvent('never-armour:use')
AddEventHandler ('never-armour:use', function()
    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 4700,
        label = "Zırh Giyiliyor",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missheistdockssetup1clipboard@idle_a",
            anim = "idle_a",
        },
        prop = {
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            -- Do Something If Event Wasn't Cancelled
        end
    end)
    if GetPedArmour(PlayerId()) < 100 then
        for i=1, 5 do 
            AddArmourToPed(PlayerPedId(),10)
            Citizen.Wait(1000)
        end
    end
end)
