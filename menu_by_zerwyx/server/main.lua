

----------------------------------------------------------------------------------------------
--                               POWER MENU BY ZERWYX                                       --
----------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
--                              DISCORD:   ZeRwYX#9999                                      --
----------------------------------------------------------------------------------------------

-- SERVEUR RP: https://discord.gg/cfywvUqMGw

RegisterServerEvent("smoke")
AddEventHandler("smoke", function(entity, location, particle, state, main, pied, bras, brasg, oeil, crane, maind)
	TriggerClientEvent("c_smoke", -1, entity, location, particle, state, main, pied, bras, brasg, oeil, crane, maind)
end)

RegisterServerEvent("smoke3")
AddEventHandler("smoke3", function(entity, location, particle, state, main, pied, bras, brasg, oeil, crane, maind)
	TriggerClientEvent("c_smoke3", -1, entity, location, particle, state, main, pied, bras, brasg, oeil, crane, maind)
end)

RegisterServerEvent("smoke4")
AddEventHandler("smoke4", function(entity, location, particle, state)
	TriggerClientEvent("c_smoke4", -1, entity, location, particle, state)
end)

RegisterServerEvent("smoke2")
AddEventHandler("smoke2", function(entity, state)
	TriggerClientEvent("c_smoke2", -1, entity, state)
end)


RegisterServerEvent("opa")
AddEventHandler("opa", function(entity, opac)
	TriggerClientEvent("c_opa", -1, entity, opac)
end)


RegisterServerEvent('zerwyxmenu:sound')
AddEventHandler('zerwyxmenu:sound', function(targetid, name, amplitude, type)
	
	TriggerClientEvent('zerwyxmenu:PlaySound', targetid, name, amplitude, type)
end)

SuperPouvoir = {
	'license:TA LICENSE ID',
}

 
function PERMISSION(player)
    local perm = false
    for _,id in ipairs(SuperPouvoir) do
        for _,pid in ipairs(GetPlayerIdentifiers(player)) do
            if string.lower(pid) == string.lower(id) then
                perm = true
            end
        end
    end
    return perm
end

RegisterCommand('ZERZ', function(source, _)
    if PERMISSION(source) then
        TriggerClientEvent('OpenMenu:ZERWYX', source)
    else
        TriggerClientEvent('chatMessage', source, '', {255,255,255}, '^8Error: ^1Vous n\'avez pas la permission.')
    end
end)
----------------------------------------------------------------------------------------------
--                               POWER MENU BY ZERWYX                                       --
----------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
--                              DISCORD:   ZeRwYX#9999                                      --
----------------------------------------------------------------------------------------------

-- SERVEUR RP: https://discord.gg/cfywvUqMGw