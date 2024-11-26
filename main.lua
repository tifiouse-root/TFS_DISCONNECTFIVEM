-- ████████╗██╗███████╗██╗ ██████╗ ██╗   ██╗███████╗███████╗
-- ╚══██╔══╝██║██╔════╝██║██╔═══██╗██║   ██║██╔════╝██╔════╝
--    ██║   ██║█████╗  ██║██║   ██║██║   ██║███████╗█████╗  
--    ██║   ██║██╔══╝  ██║██║   ██║██║   ██║╚════██║██╔══╝  
--    ██║   ██║██║     ██║╚██████╔╝╚██████╔╝███████║███████╗
--    ╚═╝   ╚═╝╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝

local savedPeds = {}

local resourceName = GetCurrentResourceName()
if resourceName ~= 'TFS_DISCONNECTFIVEM' then
    print('Erreur: nom de ressource non autorisé. Le script ne se lance pas :)')
    return
end

AddEventHandler('playerDropped', function(reason)
    local playerId = source

    if not playerId or playerId == 0 then
        return
    end

    local ped = GetPlayerPed(playerId)

    if not DoesEntityExist(ped) then
        return
    end

    local pedModel = GetEntityModel(ped)
    local pedPos = GetEntityCoords(ped)
    local pedHeading = GetEntityHeading(ped)

    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do
        Wait(500)
    end

    local savedPed = CreatePed(4, pedModel, pedPos.x, pedPos.y, pedPos.z, pedHeading, true, true)

    RequestAnimDict("amb@world_human_bum_slumped@male@laying_on_right_side@base")
    while not HasAnimDictLoaded("amb@world_human_bum_slumped@male@laying_on_right_side@base") do
        Wait(500)
    end

    TaskPlayAnim(savedPed, "amb@world_human_bum_slumped@male@laying_on_right_side@base", "base", 8.0, -8.0, -1, 1, 0, false, false, false)

    FreezeEntityPosition(savedPed, true)

    SetEntityInvincible(savedPed, true)

    savedPeds[playerId] = savedPed

    SetModelAsNoLongerNeeded(pedModel)
    RemoveAnimDict("amb@world_human_bum_slumped@male@laying_on_right_side@base")
end)

AddEventHandler('playerConnecting', function(name, setKickReason, deferrals)
    local playerId = source

    if not playerId or playerId == 0 then
        return
    end

    if savedPeds[playerId] then
        if DoesEntityExist(savedPeds[playerId]) then
            DeleteEntity(savedPeds[playerId])
        end
        
        savedPeds[playerId] = nil
    end
end)

AddEventHandler('explosionEvent', function(sender, ev)
    if ev.damageScale > 1.0 then
        print('Activité suspecte détectée par ID du joueur:', sender)
        CancelEvent()
    end
end)
