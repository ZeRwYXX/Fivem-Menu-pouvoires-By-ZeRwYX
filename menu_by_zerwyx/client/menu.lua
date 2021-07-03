----------------------------------------------------------------------------------------------
--                               POWER MENU BY ZERWYX                                       --
----------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
--                              DISCORD:   ZeRwYX#9999                                      --
----------------------------------------------------------------------------------------------

-- SERVEUR RP: https://discord.gg/cfywvUqMGw
RMenu.Add('showcase', 'menu', RageUI.CreateMenu("Pouvoires", "~b~ZeRwYX Menu ~b~ ", 1343, 10, nil, nil, 213, 170, 115))
RMenu:Get('showcase', 'menu').EnableMouse = false





RMenu.Add('showcase', 'submenuzer', RageUI.CreateSubMenu(RMenu:Get('showcase', 'menu'), "ZeRwYX\'Menu", "~b~Effets  "))
RMenu.Add('showcase', 'zerwyx', RageUI.CreateSubMenu(RMenu:Get('showcase', 'menu'), "ZeRwYX\'Menu", "~b~Players"))
RMenu.Add('showcase', 'zerwyxvh', RageUI.CreateSubMenu(RMenu:Get('showcase', 'menu'), "ZeRwYX\'Menu", "~b~Véhicule"))
RMenu.Add('showcase', 'clone', RageUI.CreateSubMenu(RMenu:Get('showcase', 'menu'), "ZeRwYX\'Menu", "~b~Clone"))
RMenu.Add('showcase', 'pouvoires_max', RageUI.CreateSubMenu(RMenu:Get('showcase', 'menu'), "ZeRwYX\'Menu", "~b~Pouvoires"))
RMenu.Add('showcase', 'perso', RageUI.CreateSubMenu(RMenu:Get('showcase', 'menu'), "ZeRwYX\'Menu", "~b~Perso"))
RMenu.Add('showcase', 'effets_de_feu', RageUI.CreateSubMenu(RMenu:Get('showcase', 'menu'), "ZeRwYX\'Menu", "~b~Feu"))
RMenu.Add('showcase', 'Combo', RageUI.CreateSubMenu(RMenu:Get('showcase', 'menu'), "ZeRwYX\'Menu", "~b~Effets de Feux - Combo |  "))
RMenu.Add('showcase', 'Combo1', RageUI.CreateSubMenu(RMenu:Get('showcase', 'menu'), "ZeRwYX\'Menu", "~b~Effets de Feux - Combo |  "))
RMenu.Add('showcase', 'world', RageUI.CreateSubMenu(RMenu:Get('showcase', 'menu'), "ZeRwYX\'Menu", "~b~World  "))
RMenu.Add('showcase', 'trafic', RageUI.CreateSubMenu(RMenu:Get('showcase', 'menu'), "ZeRwYX\'Menu", "~b~Fumée "))
RMenu.Add('showcase', 'objet', RageUI.CreateSubMenu(RMenu:Get('showcase', 'menu'), "ZeRwYX\'Menu", "~b~objet"))


RMenu:Get('showcase', 'submenuzer'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'menu'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'zerwyx'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'pouvoires_max'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'effets_de_feu'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'Combo'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'Combo1'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'Combo'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'Combo1'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'menu'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'perso'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'world'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'objet'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'zerwyxvh'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'clone'):SetRectangleBanner(0, 73, 255)
RMenu:Get('showcase', 'trafic'):SetRectangleBanner(0, 73, 255)


Effect = false
local PouvoirON1 = false
local punch1      = false
local sprint1     = false
local jump1       = false
local invisible1  = false
local godmode1    = false
local index2 = {
     items = 1
}




local function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

local index = {
    items = 1
}

local index2 = {
     items = 1
}

local corps = false
local CracheActiver = false
local PoingActiver = false

index3 = {
    "Bleu",
    "Rouge",
    "Vert",
    "Jaune",
    "Orange",
    "Rose",
    "Violet",
    "Gris",
    "Noir"
}

local percent = 100
local a = 255
local percent2 = 100
local a2 = 255
local nombre = {}
local godmod = false
local godmodplayer = {}

local listeffet = {
    "Tremblement de terre",
    "Bourrer",
    "Bourrer 2",
    "Droguer"
}

local effetlist = {
    "SKY_DIVING_SHAKE",
    "DEATH_FAIL_IN_EFFECT_SHAKE",
    "DRUNK_SHAKE",
    "FAMILY5_DRUG_TRIP_SHAKE"
}

local ampli = {
    0.1,
    0.2,
    0.3,
    0.4,
    0.5,
    0.6,
    0.7,
    0.8,
    0.9,
    1.0,
    1.1,
    1.2,
    1.3,
    1.4,
    1.5,
    1.6,
    1.7,
    1.8,
    1.9,
    2.0,
    2.1,
    2.2,
    2.3,
    2.4,
    2.5,
    2.6,
    2.7,
    2.8,
    2.9,
    3.0,
    3.1,
    3.2,
    3.3
}

local nombre = {}

local amplitude
local effetname

function BulletCoords()
    local ped = GetPlayerPed(-1)
	local result, coord = GetPedLastWeaponImpactCoord(ped, Citizen.ReturnResultAnyway())
	return coord
end

local screeneffect = "MinigameEndNeutral"

RegisterNetEvent('zer_menu:PlaySound')
AddEventHandler('zer_menu:PlaySound', function(name, amplitude2, type)

    ShakeGameplayCam(name, amplitude2)
    
    if type == 'start' then

        StartScreenEffect(screeneffect, 60000, true)
        RequestAnimSet("move_m@hobo@a")
        while not HasAnimSetLoaded("move_m@hobo@a") do
            Citizen.Wait(0)
        end
        SetPedMovementClipset(GetPlayerPed(-1), "move_m@hobo@a", true)
    elseif type == 'stop' then
        
        ClearPedTasks(GetPlayerPed(-1))
        StopScreenEffect(screeneffect)
        ResetPedMovementClipset(PlayerPedId())
    end
end)

Citizen.CreateThread(function()
	while true do
		Wait(1)

		if CracheActiver then
		if IsControlPressed(0, 311) then
			local ped = GetPlayerPed(-1)
			TriggerServerEvent('smoke4', PedToNet(ped), 0x322c, "ent_sht_flame", true)
			Wait(800)
			print('test')
		else
			local ped = GetPlayerPed(-1)
			TriggerServerEvent('smoke4', PedToNet(ped), 0x322c, "ent_sht_flame", false)
		end
    end
end
end)

Citizen.CreateThread(function()
	while true do
        Wait(1)
        if PoingActiver then
            SetExplosiveMeleeThisFrame(PlayerId())
            local x, y, z = table.unpack(BulletCoords())
            if x ~= 0.0 and y ~= 0.0 and z ~= 0.0 then
                local ped = GetPlayerPed(-1)
                print('test')
                AddOwnedExplosion(ped, x, y, z, 1, 20.0, true, false, 0.0)
            end
        end
        end
end)


local sound = false

Citizen.CreateThread(function()
    while true do
        Wait(1000)
        if sound then
            TriggerServerEvent('InteractSound_SV:PlayOnAll', 'tremblement', 0.5)
            Wait(40000)
        end
    end
end)

mode = false
skin = {}
RageUI.CreateWhile(1.0, function()
    if RageUI.Visible(RMenu:Get('showcase', 'menu')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()

          --  RageUI.Button("Ped", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)     
          --      if (Selected) then
     --
           --    end
            --   end, RMenu:Get('showcase', 'submenu'))

 

     



            RageUI.Button("Perso" , nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                end
            end, RMenu:Get('showcase', 'perso'))


            RageUI.Button("Player" , nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                end
            end, RMenu:Get('showcase', 'zerwyx'))


            RageUI.Button("Pouvoires" , nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                end
            end, RMenu:Get('showcase', 'pouvoires_max'))


            RageUI.Button("World" , nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                end
            end, RMenu:Get('showcase', 'world'))

            
            end, function()
             
                    
                   
                
        end)
    end



    if RageUI.Visible(RMenu:Get('showcase', 'world')) then
--TriggerServerEvent("smoke2", PedToNet(ped), false)



        
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
                       
            RageUI.Button("Fair accélérer", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == 10 or closestDistance > 20000.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObject0')
                        else
                          
                        end
                    end
                end
            end)
            RageUI.Button("Couper le moteur", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
                
                    if closestPlayer == -1 or closestDistance > 20000.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestPL')
                        else
                
                        end
                    end
                end
            end)
            
            RageUI.Button("Effets", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)     
                if (Selected) then
     
               end
               end, RMenu:Get('showcase', 'submenuzer'))


               RageUI.Button("Objets" , nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                end
            end, RMenu:Get('showcase', 'objet'))
        end, function()
        end)
    end



    if RageUI.Visible(RMenu:Get('showcase', 'objet')) then
            
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
        RageUI.Button("Pneu", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
            if (Selected) then
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                if closestPlayer == 20 or closestDistance > 20000.0 then 
                    ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                else
                    if not PouvoirON1 then
                        TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                        ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                        TriggerServerEvent('esx_pouvoir:closestObject2')
                    else
                       
                    end
                end
            end
        end)
        RageUI.Button("Guitare", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
            if (Selected) then
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                if closestPlayer == -1 or closestDistance > 20000.0 then 
                    ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                else
                    if not PouvoirON1 then
                        TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                        ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                        TriggerServerEvent('esx_pouvoir:closestObject3')
                    else
                     
                    end
                end
            end
        end)
        RageUI.Button("Cactus", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
            if (Selected) then
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                if closestPlayer == -1 or closestDistance > 20000.0 then 
                    ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                else
                    if not PouvoirON1 then
                        TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                        ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                        TriggerServerEvent('esx_pouvoir:closestObject4')
                    else
                  
                    end
                end
            end
        end)
        RageUI.Button("Oeuf d'alien", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
            if (Selected) then
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                if closestPlayer == -1 or closestDistance > 20000.0 then 
                    ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                else
                    if not PouvoirON1 then
                        TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                        ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                        TriggerServerEvent('esx_pouvoir:closestObject5')
                    else
                   
                    end
                end
            end
        end)
        RageUI.Button("Bidon", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
            if (Selected) then
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                if closestPlayer == -1 or closestDistance > 20000.0 then 
                    ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                else
                    if not PouvoirON1 then
                        TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                        ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                        TriggerServerEvent('esx_pouvoir:closestObject6')
                    else
                    
                    end
                end
            end
        end)
        RageUI.Button("Asteroid", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
            if (Selected) then
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                if closestPlayer == -1 or closestDistance > 20000.0 then 
                    ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                else
                    if not PouvoirON1 then
                        TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                        ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                        TriggerServerEvent('esx_pouvoir:closestObject7')
                    else
                    
                    end
                end
            end
        end)
        RageUI.Button("Feux", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
            if (Selected) then
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                if closestPlayer == -1 or closestDistance > 20000.0 then 
                    ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                else
                    if not PouvoirON1 then
                        TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                        ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                        TriggerServerEvent('esx_pouvoir:closestObject8')
                    else
                 
                    end
                end
            end
        end)
        RageUI.Button("Cash", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
            if (Selected) then
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                if closestPlayer == -1 or closestDistance > 20000.0 then 
                    ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                else
                    if not PouvoirON1 then
                        TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                        ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                        TriggerServerEvent('esx_pouvoir:closestObject9')
                    else
                
                    end
                end
            end
        end)
        RageUI.Button("Bambou", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
            if (Selected) then
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                if closestPlayer == -1 or closestDistance > 20000.0 then 
                    ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                else
                    if not PouvoirON1 then
                        TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                        ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                        TriggerServerEvent('esx_pouvoir:closestObject10')
                    else
            
                    end
                end
            end
        end)
        RageUI.Button("Porte de garage", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
            if (Selected) then
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                if closestPlayer == -1 or closestDistance > 20000.0 then 
                    ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                else
                    if not PouvoirON1 then
                        TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                        ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                        TriggerServerEvent('esx_pouvoir:closestObject1')
                    else
                     
                    end
                end
            end
        end)
        RageUI.Button("Cercueil", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
            if (Selected) then
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                if closestPlayer == -1 or closestDistance > 20000.0 then 
                    ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                else
                    if not PouvoirON1 then
                        TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                        ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                        TriggerServerEvent('esx_pouvoir:closestObject11')
                    else
             
                    end
                end
            end
        end)
           
            end)
        end




    if RageUI.Visible(RMenu:Get('showcase', 'zerwyx')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            
            RageUI.Button("~r~Arreter l'action du joueur", nil, { RightLabel = "X" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestclear')
                        else
                            ESX.ShowNotification('Ce joueur fais deja une animation')
                        end
                    end
                end
            end)

            RageUI.Button("Véhicule" , nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                end
            end, RMenu:Get('showcase', 'zerwyxvh'))


            RageUI.Button("Clone" , nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                end
            end, RMenu:Get('showcase', 'clone'))
            
            

        end, function()
        end)
    end


----------------------------------------------------------------------------------------------
--                               POWER MENU BY ZERWYX                                       --
----------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
--                              DISCORD:   ZeRwYX#9999                                      --
----------------------------------------------------------------------------------------------

-- SERVEUR RP: https://discord.gg/cfywvUqMGw



    if RageUI.Visible(RMenu:Get('showcase', 'zerwyxvh')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
     

         
            RageUI.Button("Forcer le joueur à accélérer", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObject0')
                        else
                          
                        end
                    end
                end
            end)
            RageUI.Button("Forcer le joueur à couper le moteur", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
                
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestPL')
                        else
                
                        end
                    end
                end
            end)
            

        end, function()
        end)
    end


    if RageUI.Visible(RMenu:Get('showcase', 'clone')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            
            RageUI.Button("Cloner le personnage devant vous ", nil, { RightLabel = " " }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:clone')
                        else
                            ESX.ShowNotification('Ce joueur fais deja une animation')
                        end
                    end
                end
            end)
            RageUI.Button("Ce cloner ", nil, { RightLabel = " " }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local playerPed = PlayerPedId()
                    ClonePed(playerPed, 60, true, false)
                end
            end)
            

            local DABITO = {}

            RageUI.Button("Ce cloner + forcer a vous suivre ", nil, { RightLabel = " " }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local playerPed = PlayerPedId()
                    local newPed = ClonePed(playerPed, 60, true, false)
            
                    table.insert(DABITO, newPed)
            
                    print(newPed)
            
                    TaskFollowToOffsetOfEntity(newPed, playerPed, 0.5, 0.0, 0.0, 5.0, -1, 1.0, true)
                end
            end)
        
        end, function()
        end)
    end




    if RageUI.Visible(RMenu:Get('showcase', 'pouvoires_max')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
       
           
         
           
            RageUI.Button("Activer/Desactiver poing explosif" , nil, {}, true, function(Hovered, Active, Selected)
                if Selected then
                    PoingActiver = not PoingActiver

                    if PoingActiver then
                        ShowNotification("~g~ Coup de poing explosif activé")
                    else
                        ShowNotification("~r~ Coup de poing explosif desactivé")
                    end
                end
              end) 
            ---Panels
        end)
    end




  
    
    


    
    if RageUI.Visible(RMenu:Get('showcase', 'perso')) then
   

        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()

            RageUI.Button("Effets de Feu", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)     
                if (Selected) then
     
               end
               end, RMenu:Get('showcase', 'effets_de_feu'))
    
              

    

        end, function()
        end)
    end


    if RageUI.Visible(RMenu:Get('showcase', 'trafic')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            RageUI.Button("~r~Delete", nil, { RightLabel = "→→→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObjectD')
                        else
                
                        end
                    end
                end
            end)

            RageUI.Button("Porte de garage", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    if distance ~= -1 and distance <= 2.0 then
                    Object1()
                    else
                        ESX.ShowNotification('Il n\'y a pas de joueur à proximité.')
                    end
                end
            end)
            RageUI.Button("Pneu", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObject2')
                        else
                           
                        end
                    end
                end
            end)
            RageUI.Button("Guitare", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObject3')
                        else
                         
                        end
                    end
                end
            end)
            RageUI.Button("Cactus", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObject4')
                        else
                      
                        end
                    end
                end
            end)
            RageUI.Button("Oeuf d'alien", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObject5')
                        else
                       
                        end
                    end
                end
            end)
            RageUI.Button("Bidon", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObject6')
                        else
                        
                        end
                    end
                end
            end)
            RageUI.Button("Asteroid", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObject7')
                        else
                        
                        end
                    end
                end
            end)
            RageUI.Button("Feux", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObject8')
                        else
                     
                        end
                    end
                end
            end)
            RageUI.Button("Cash", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObject9')
                        else
                    
                        end
                    end
                end
            end)
            RageUI.Button("Bambou", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObject10')
                        else
                
                        end
                    end
                end
            end)
            RageUI.Button("Momie", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObject1')
                        else
                         
                        end
                    end
                end
            end)
            RageUI.Button("Cercueil", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObject11')
                        else
                 
                        end
                    end
                end
            end)
            RageUI.Button("TEST", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    
                    if closestPlayer == -1 or closestDistance > 2.0 then 
                        ESX.ShowNotification('~r~Il n\'y a pas de joueur à proximité')
                    else
                        if not PouvoirON1 then
                            TriggerServerEvent('esx_pouvoir:sendclosest', GetPlayerServerId(closestPlayer))
                            ESX.ShowNotification(GetPlayerName(closestPlayer) ..'')
                            TriggerServerEvent('esx_pouvoir:closestObject12')
                        else
                
                        end
                    end
                end
            end)

        end, function()
            ---Panels
        end)
    end






    if RageUI.Visible(RMenu:Get('showcase', 'submenu')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()


            for k, v in pairs(Config.ZERWYX.Ped) do
                RageUI.Button(v.label , nil, {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                    if Selected then
        
                    end
                  end) 
            end
        end, function()

            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'submenuzer')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            RageUI.List("Effets:", listeffet, nombre['effets'] or 1, nil, { }, true, function(hovered, active, selected, Index)
                nombre['effets'] = Index

                if active then
                    effetname = effetlist[nombre['effets']]
                end

                if selected then
                    ShakeGameplayCam(effetname, amplitude or 0.1)
                end
            end)
            RageUI.List("Amplitude:", ampli, nombre['ampli'] or 1, nil, { }, true, function(hovered, active, selected, Index)
                nombre['ampli'] = Index 
                if active then
                    amplitude = ampli[nombre['ampli']]
                end
            end)

            RageUI.Button("Tester l'effet", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)     
                if (Selected) then
        
                    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'tremblement', 0.5)
                    ShakeGameplayCam(effetname, amplitude)
                    StartScreenEffect(screeneffect, 60000, true)
                    RequestAnimSet("move_m@hobo@a")
                    while not HasAnimSetLoaded("move_m@hobo@a") do
                        Citizen.Wait(0)
                    end
                    SetPedMovementClipset(GetPlayerPed(-1), "move_m@hobo@a", true)
                    
                end
            end)

            RageUI.Button("Stopper le test de l'effet", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)     
                if (Selected) then
    
                    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'tremblement', 0.0)
                    ClearPedTasks(GetPlayerPed(-1))
                    StopScreenEffect(screeneffect)
                    ResetPedMovementClipset(PlayerPedId())
                    ShakeGameplayCam(effetname, 0.0)
                    
                end
            end)

            RageUI.Button("Commencer l'effet", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)     
                if (Selected) then
                    ExecuteCommand("weather thunder")
                    ExecuteCommand("time 22 00")
                    for _,i in ipairs(GetActivePlayers()) do
                        if NetworkIsPlayerActive(i) then
                            
                            TriggerServerEvent('zer_menuz:sound', GetPlayerServerId(i), effetname, amplitude, "start")
                        end
                    end

                    sound = true
                    Wait(10000)
                    ExecuteCommand("tornado_summon")
                end
            end)

            RageUI.Button("Stopper l'effet", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)     
                if (Selected) then
            
                    sound = false
                    TriggerServerEvent('InteractSound_SV:PlayOnAll', 'tremblement', 0.0)
                    ExecuteCommand("weather clear")
                    ExecuteCommand("tornado_dismiss")
                    
                    for _,i in ipairs(GetActivePlayers()) do
                        if NetworkIsPlayerActive(i) then
                            
                            TriggerServerEvent('zer_menuz:sound', GetPlayerServerId(i), effetname, 0.0, "stop")
                        end
                    end
               end
            end)

            ---Panels
        end)
    end


    if RageUI.Visible(RMenu:Get('showcase', 'effets_de_feu')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            RageUI.Button("Mettre/Enlever le corps en feux" , nil, {}, true, function(Hovered, Active, Selected)
                if Selected then
                    corps = not corps
                    local ped = GetPlayerPed(-1)
                    if corps then

                        TriggerServerEvent("smoke2", PedToNet(ped), true)
                        RageUI.Visible(RMenu:Get('showcase', 'menu'), false)
                    else
                        TriggerServerEvent("smoke2", PedToNet(ped), false)
                    end
                end
              end) 

              RageUI.Button("Activer/Desactiver de pouvoir cracher du feux" , nil, {}, true, function(Hovered, Active, Selected)
                if Selected then
                    CracheActiver = not CracheActiver

                    if CracheActiver then
                        ShowNotification("~g~ Vous pouvez cracher du feu")
                    else
                        ShowNotification("~Vous ne pouvez plus cracher de feu~")
                    end
                end
              end) 


            ---Panels
        end)
    end
  

    if RageUI.Visible(RMenu:Get('showcase', 'Combo')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.Combo) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke", PedToNet(ped), 0x322c, v.value, false, false)
                        else
                            if v.label == "Trainée de feux" then
                                TriggerServerEvent("smoke", PedToNet(ped), 0x322c, "ent_amb_torch_fire", true, false)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x49d9,"ent_amb_torch_fire", true, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x188e, "ent_amb_torch_fire", true, false, false, false, false, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0xf9bb, "ent_amb_torch_fire", true, false)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x9000, "ent_amb_torch_fire", true, false)
                                TriggerServerEvent("smoke", PedToNet(ped), 0xe175,"ent_amb_torch_fire", true, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x60e6,"ent_amb_torch_fire", true, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x49d9,"ent_amb_torch_fire", true, false, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x188e,"ent_amb_torch_fire", true, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x62ac, "ent_amb_torch_fire", true, false, false, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x6b52, "ent_amb_torch_fire", true, false, false, false, false, true)
                            elseif v.label == "Trainée de feux bleu" then
                                TriggerServerEvent("smoke", PedToNet(ped), 0x322c, "fire_petrol_two", true, false)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x49d9,"fire_petrol_two", true, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x188e, "fire_petrol_two", true, false, false, false, false, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0xf9bb, "fire_petrol_two", true, false)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x9000, "fire_petrol_two", true, false)
                                TriggerServerEvent("smoke", PedToNet(ped), 0xe175,"fire_petrol_two", true, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x60e6,"fire_petrol_two", true, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x49d9,"fire_petrol_two", true, false, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x188e,"fire_petrol_two", true, false, false, true)

                                TriggerServerEvent("smoke", PedToNet(ped), 0x322c, "fire_petrol_pool", true, false)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x49d9,"fire_petrol_pool", true, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x188e, "fire_petrol_pool", true, false, false, false, false, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0xf9bb, "fire_petrol_pool", true, false)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x9000, "fire_petrol_pool", true, false)
                                TriggerServerEvent("smoke", PedToNet(ped), 0xe175,"fire_petrol_pool", true, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x60e6,"fire_petrol_pool", true, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x49d9,"fire_petrol_pool", true, false, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x188e,"fire_petrol_pool", true, false, false, true)
                            elseif v.label == "Yeux en feux" then
                                TriggerServerEvent("smoke", PedToNet(ped), 0x62ac, "ent_amb_int_fireplace_sml", true, false, false, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x6b52, "ent_amb_int_fireplace_sml", true, false, false, false, false, true)
                            elseif v.label == "Yeux en feux 2" then
                                TriggerServerEvent("smoke", PedToNet(ped), 0x62ac, "fire_petroltank_truck", true, false, false, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x62ac, "ent_amb_int_fireplace_sml", true, false, false, false, false, true)

                                TriggerServerEvent("smoke", PedToNet(ped), 0x6b52, "fire_petroltank_truck", true, false, false, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x6b52, "ent_amb_int_fireplace_sml", true, false, false, false, false, true)
                            elseif v.label == "Tête + Mains en feux" then
                                TriggerServerEvent("smoke", PedToNet(ped), 0x322c, "fire_wrecked_plane_cockpit", true, false)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x188e, "fire_ped_body", true, false, false, false, false, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x49d9, "fire_ped_body", true, true)
                            elseif v.label == "Pieds en feux" then
                                TriggerServerEvent("smoke", PedToNet(ped), 0xe175, "fire_wrecked_train", true, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x60e6, "fire_wrecked_train", true, false, true)
                            elseif v.label == "Mettre le feux au sol quand on marche" then
                                TriggerServerEvent("smoke", PedToNet(ped), 0x60e6, "ent_ray_heli_aprtmnt_l_fire", true, false, true)
                            elseif v.label == "Mettre le corps avec effet electricité" then
                                TriggerServerEvent("smoke", PedToNet(ped), 0x322c, "ent_amb_elec_crackle", true, false)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x49d9,"ent_amb_elec_crackle", true, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x188e, "ent_amb_elec_crackle", true, false, false, false, false, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0xf9bb, "ent_amb_elec_crackle", true, false)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x9000, "ent_amb_elec_crackle", true, false)
                                TriggerServerEvent("smoke", PedToNet(ped), 0xe175,"ent_amb_elec_crackle", true, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x60e6,"ent_amb_elec_crackle", true, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x49d9,"ent_amb_elec_crackle", true, false, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x188e,"ent_amb_elec_crackle", true, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x62ac, "ent_amb_elec_crackle", true, false, false, false, false, true)
                                TriggerServerEvent("smoke", PedToNet(ped), 0x6b52, "ent_amb_elec_crackle", true, false, false, false, false, true)
                            end
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end
    if RageUI.Visible(RMenu:Get('showcase', 'Combo1')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.FumeeCombo) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke", PedToNet(ped), 0x322c, v.value, false, false)
                        else
                            if v.label == "Mettre le tout le corps en fumée" then
                                TriggerServerEvent("smoke3", PedToNet(ped), 0x322c, "exp_grd_bzgas_smoke", true, false)
                                TriggerServerEvent("smoke3", PedToNet(ped), 0x49d9,"exp_grd_bzgas_smoke", true, true)
                                TriggerServerEvent("smoke3", PedToNet(ped), 0x188e, "exp_grd_bzgas_smoke", true, false, false, false, false, false, false, true)
                                TriggerServerEvent("smoke3", PedToNet(ped), 0xf9bb, "exp_grd_bzgas_smoke", true, false)
                                TriggerServerEvent("smoke3", PedToNet(ped), 0x9000, "exp_grd_bzgas_smoke", true, false)
                                TriggerServerEvent("smoke3", PedToNet(ped), 0xe175,"exp_grd_bzgas_smoke", true, false, true)
                                TriggerServerEvent("smoke3", PedToNet(ped), 0x60e6,"exp_grd_bzgas_smoke", true, false, true)
                                TriggerServerEvent("smoke3", PedToNet(ped), 0x49d9,"exp_grd_bzgas_smoke", true, false, false, false, true)
                                TriggerServerEvent("smoke3", PedToNet(ped), 0x188e,"exp_grd_bzgas_smoke", true, false, false, true)
                                TriggerServerEvent("smoke3", PedToNet(ped), 0x62ac, "exp_grd_bzgas_smoke", true, false, false, false, false, true)
                                TriggerServerEvent("smoke3", PedToNet(ped), 0x6b52, "exp_grd_bzgas_smoke", true, false, false, false, false, true)
                                TriggerServerEvent("smoke3", PedToNet(ped), 0x322c, "ent_amb_smoke_general", true, false)
                            end
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Tête')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.Tete) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke", PedToNet(ped), 0x322c, v.value, false, false)
                        else
                            TriggerServerEvent("smoke", PedToNet(ped), 0x322c, v.value, true, false)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Tête1')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.FumeeTete) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x322c, v.value, false, false)
                        else
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x322c, v.value, true, false)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Main Gauche')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.Main) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke", PedToNet(ped), 0x49d9, v.value, false, true)
                        else
                            TriggerServerEvent("smoke", PedToNet(ped), 0x49d9, v.value, true, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Main Gauche1')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.FumeeMain) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x49d9, v.value, false, true)
                        else
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x49d9, v.value, true, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Main Droite')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.Main) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke", PedToNet(ped), 0x188e, v.value, false, false, false, false, false, false, false, true)
                        else
                            TriggerServerEvent("smoke", PedToNet(ped), 0x188e, v.value, true, false, false, false, false, false, false, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Main Droite1')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.FumeeMain) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x188e, v.value, false, false, false, false, false, false, false, true)
                        else
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x188e, v.value, true, false, false, false, false, false, false, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Jambe Gauche')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.Jambe) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke", PedToNet(ped), 0xf9bb, v.value, false, false)
                        else
                            TriggerServerEvent("smoke", PedToNet(ped), 0xf9bb, v.value, true, false)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Jambe Gauche1')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.FumeeJambe) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke3", PedToNet(ped), 0xf9bb, v.value, false, false)
                        else
                            TriggerServerEvent("smoke3", PedToNet(ped), 0xf9bb, v.value, true, false)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Jambe Droite')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.Jambe) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke", PedToNet(ped), 0x9000, v.value, false, false)
                        else
                            TriggerServerEvent("smoke", PedToNet(ped), 0x9000, v.value, true, false)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Jambe Droite1')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.FumeeJambe) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x9000, v.value, false, false)
                        else
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x9000, v.value, true, false)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Pied Gauche')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.Pied) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke", PedToNet(ped), 0xe175, v.value, false, false, true)
                        else
                            TriggerServerEvent("smoke", PedToNet(ped), 0xe175, v.value, true, false, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Pied Gauche1')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.FumeePied) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke3", PedToNet(ped), 0xe175, v.value, false, false, true)
                        else
                            TriggerServerEvent("smoke3", PedToNet(ped), 0xe175, v.value, true, false, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Pied Droit')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.Pied) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke", PedToNet(ped), 0x60e6, v.value, false, false, true)
                        else
                            TriggerServerEvent("smoke", PedToNet(ped), 0x60e6, v.value, true, false, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Pied Droit1')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.FumeePied) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x60e6, v.value, false, false, true)
                        else
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x60e6, v.value, true, false, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end


    if RageUI.Visible(RMenu:Get('showcase', 'Bras Gauche')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.Bras) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke", PedToNet(ped), 0x49d9, v.value, false, false, false, false, true)
                        else
                            TriggerServerEvent("smoke", PedToNet(ped), 0x49d9, v.value, true, false, false, false, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Bras Gauche1')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.FumeeBras) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x49d9, v.value, false, false, false, false, true)
                        else
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x49d9, v.value, true, false, false, false, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Bras Droit')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.Bras) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke", PedToNet(ped), 0x188e, v.value, false, false, false, true)
                        else
                            TriggerServerEvent("smoke", PedToNet(ped), 0x188e, v.value, true, false, false, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Bras Droit1')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.FumeeBras) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x188e, v.value, false, false, false, true)
                        else
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x188e, v.value, true, false, false, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Oeil Gauche')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.Oeil) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke", PedToNet(ped), 0x62ac, v.value, false, false, false, false, false, true)
                        else
                            TriggerServerEvent("smoke", PedToNet(ped), 0x62ac, v.value, true, false, false, false, false, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Oeil Gauche1')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.FumeeOeil) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x62ac, v.value, false, false, false, false, false, true)
                        else
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x62ac, v.value, true, false, false, false, false, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Oeil Droit')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.Oeil) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke", PedToNet(ped), 0x6b52, v.value, false, false, false, false, false, true)
                        else
                            TriggerServerEvent("smoke", PedToNet(ped), 0x6b52, v.value, true, false, false, false, false, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'Oeil Droit1')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            for k, v in pairs(Config.ZERWYX.FumeeOeil) do
                RageUI.Button(v.label , nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if Selected then
                        local ped = GetPlayerPed(-1)
                        if v.value == 'remove' then
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x6b52, v.value, false, false, false, false, false, true)
                        else
                            TriggerServerEvent("smoke3", PedToNet(ped), 0x6b52, v.value, true, false, false, false, false, true)
                        end
                    end
                  end) 
            end
        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'submenu4')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
                RageUI.List('Couleur', index3, index2.items, nil, { }, true, function(hovered, active, selected, Index)
                    index2.items = Index 

                    if active then
                        if index3[Index] == 'Bleu' then
                            colorX = 0
                            colorY = 0
                            colorZ = 255
                            RMenu:Get('showcase', 'menu'):SetSubtitle("~b~ ")
                            RMenu:Get('showcase', 'submenu1'):SetSubtitle("~b~Effets de Feux |  ")
                            RMenu:Get('showcase', 'Tête'):SetSubtitle("~b~Effets de Feux - Tête |  ")
                            RMenu:Get('showcase', 'Main Gauche'):SetSubtitle("~b~Effets de Feux - Main Gauche |  ")
                            RMenu:Get('showcase', 'Main Droite'):SetSubtitle("~b~Effets de Feux - Main Droite |  ")
                            RMenu:Get('showcase', 'Jambe Droite'):SetSubtitle("~b~Effets de Feux - Jambe Droite |  ")
                            RMenu:Get('showcase', 'Jambe Gauche'):SetSubtitle("~b~Effets de Feux - Jambe Gauche |  ")
                            RMenu:Get('showcase', 'Bras Gauche'):SetSubtitle("~b~Effets de Feux - Bras Gauche |  ")
                            RMenu:Get('showcase', 'Bras Droit'):SetSubtitle("~b~Effets de Feux - Bras Droit |  ")
                            RMenu:Get('showcase', 'Pied Gauche'):SetSubtitle("~b~Effets de Feux - Pied Gauche |  ")
                            RMenu:Get('showcase', 'Pied Droit'):SetSubtitle("~b~Effets de Feux - Pied Droit |  ")
                            RMenu:Get('showcase', 'Oeil Gauche'):SetSubtitle("~b~Effets de Feux - Oeil Gauche |  ")
                            RMenu:Get('showcase', 'Oeil Droit'):SetSubtitle("~b~Effets de Feux - Oeil Droit |  ")
                            RMenu:Get('showcase', 'submenu4'):SetSubtitle("~b~Parametres")
                        elseif index3[Index] == 'Rouge' then
                            colorX = 255
                            colorY = 0
                            colorZ = 0
                            RMenu:Get('showcase', 'menu'):SetSubtitle("~r~ ")
                            RMenu:Get('showcase', 'submenu1'):SetSubtitle("~r~Effets de Feux |  ")
                            RMenu:Get('showcase', 'Tête'):SetSubtitle("~r~Effets de Feux - Tête |  ")
                            RMenu:Get('showcase', 'Main Gauche'):SetSubtitle("~r~Effets de Feux - Main Gauche |  ")
                            RMenu:Get('showcase', 'Main Droite'):SetSubtitle("~r~Effets de Feux - Main Droite |  ")
                            RMenu:Get('showcase', 'Jambe Droite'):SetSubtitle("~r~Effets de Feux - Jambe Droite |  ")
                            RMenu:Get('showcase', 'Jambe Gauche'):SetSubtitle("~r~Effets de Feux - Jambe Gauche |  ")
                            RMenu:Get('showcase', 'Bras Gauche'):SetSubtitle("~r~Effets de Feux - Bras Gauche |  ")
                            RMenu:Get('showcase', 'Bras Droit'):SetSubtitle("~r~Effets de Feux - Bras Droit |  ")
                            RMenu:Get('showcase', 'Pied Gauche'):SetSubtitle("~r~Effets de Feux - Pied Gauche |  ")
                            RMenu:Get('showcase', 'Pied Droit'):SetSubtitle("~r~Effets de Feux - Pied Droit |  ")
                            RMenu:Get('showcase', 'Oeil Gauche'):SetSubtitle("~r~Effets de Feux - Oeil Gauche |  ")
                            RMenu:Get('showcase', 'Oeil Droit'):SetSubtitle("~r~Effets de Feux - Oeil Droit |  ")
                            RMenu:Get('showcase', 'submenu2'):SetSubtitle("~r~Effets de Fumée |  ")
                            RMenu:Get('showcase', 'Tête1'):SetSubtitle("~r~Effets de Fumée - Tête |  ")
                            RMenu:Get('showcase', 'Main Gauche1'):SetSubtitle("~r~Effets de Fumée - Main Gauche |  ")
                            RMenu:Get('showcase', 'Main Droite1'):SetSubtitle("~r~Effets de Fumée - Main Droite |  ")
                            RMenu:Get('showcase', 'Jambe Droite1'):SetSubtitle("~r~Effets de Fumée - Jambe Droite |  ")
                            RMenu:Get('showcase', 'Jambe Gauche1'):SetSubtitle("~r~Effets de Fumée - Jambe Gauche |  ")
                            RMenu:Get('showcase', 'Bras Gauche1'):SetSubtitle("~r~Effets de Fumée - Bras Gauche |  ")
                            RMenu:Get('showcase', 'Bras Droit1'):SetSubtitle("~r~Effets de Fumée - Bras Droit |  ")
                            RMenu:Get('showcase', 'Pied Gauche1'):SetSubtitle("~r~Effets de Fumée - Pied Gauche |  ")
                            RMenu:Get('showcase', 'Pied Droit1'):SetSubtitle("~r~Effets de Fumée - Pied Droit |  ")
                            RMenu:Get('showcase', 'Oeil Gauche1'):SetSubtitle("~r~Effets de Fumée - Oeil Gauche |  ")
                            RMenu:Get('showcase', 'Oeil Droit1'):SetSubtitle("~r~Effets de Fumée - Oeil Droit |  ")
                            RMenu:Get('showcase', 'submenu4'):SetSubtitle("~r~Parametres")
----------------------------------------------------------------------------------------------
--                               POWER MENU BY ZERWYX                                       --
----------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
--                              DISCORD:   ZeRwYX#9999                                      --
----------------------------------------------------------------------------------------------

-- SERVEUR RP: https://discord.gg/cfywvUqMGw
                        elseif index3[Index] == 'Vert' then
                            colorX = 0
                            colorY = 255
                            colorZ = 0
                            RMenu:Get('showcase', 'menu'):SetSubtitle("~g~ ")
                            RMenu:Get('showcase', 'submenu1'):SetSubtitle("~g~Effets de Feux |  ")
                            RMenu:Get('showcase', 'Tête'):SetSubtitle("~g~Effets de Feux - Tête |  ")
                            RMenu:Get('showcase', 'Main Gauche'):SetSubtitle("~g~Effets de Feux - Main Gauche |  ")
                            RMenu:Get('showcase', 'Main Droite'):SetSubtitle("~g~Effets de Feux - Main Droite |  ")
                            RMenu:Get('showcase', 'Jambe Droite'):SetSubtitle("~g~Effets de Feux - Jambe Droite |  ")
                            RMenu:Get('showcase', 'Jambe Gauche'):SetSubtitle("~g~Effets de Feux - Jambe Gauche |  ")
                            RMenu:Get('showcase', 'Bras Gauche'):SetSubtitle("~g~Effets de Feux - Bras Gauche |  ")
                            RMenu:Get('showcase', 'Bras Droit'):SetSubtitle("~g~Effets de Feux - Bras Droit |  ")
                            RMenu:Get('showcase', 'Pied Gauche'):SetSubtitle("~g~Effets de Feux - Pied Gauche |  ")
                            RMenu:Get('showcase', 'Pied Droit'):SetSubtitle("~g~Effets de Feux - Pied Droit |  ")
                            RMenu:Get('showcase', 'Oeil Gauche'):SetSubtitle("~g~Effets de Feux - Oeil Gauche |  ")
                            RMenu:Get('showcase', 'Oeil Droit'):SetSubtitle("~g~Effets de Feux - Oeil Droit |  ")
                            RMenu:Get('showcase', 'submenu2'):SetSubtitle("~g~Effets de Fumée |  ")
                            RMenu:Get('showcase', 'Tête1'):SetSubtitle("~g~Effets de Fumée - Tête |  ")
                            RMenu:Get('showcase', 'Main Gauche1'):SetSubtitle("~g~Effets de Fumée - Main Gauche |  ")
                            RMenu:Get('showcase', 'Main Droite1'):SetSubtitle("~g~Effets de Fumée - Main Droite |  ")
                            RMenu:Get('showcase', 'Jambe Droite1'):SetSubtitle("~g~Effets de Fumée - Jambe Droite |  ")
                            RMenu:Get('showcase', 'Jambe Gauche1'):SetSubtitle("~g~Effets de Fumée - Jambe Gauche |  ")
                            RMenu:Get('showcase', 'Bras Gauche1'):SetSubtitle("~g~Effets de Fumée - Bras Gauche |  ")
                            RMenu:Get('showcase', 'Bras Droit1'):SetSubtitle("~g~Effets de Fumée - Bras Droit |  ")
                            RMenu:Get('showcase', 'Pied Gauche1'):SetSubtitle("~g~Effets de Fumée - Pied Gauche |  ")
                            RMenu:Get('showcase', 'Pied Droit1'):SetSubtitle("~g~Effets de Fumée - Pied Droit |  ")
                            RMenu:Get('showcase', 'Oeil Gauche1'):SetSubtitle("~g~Effets de Fumée - Oeil Gauche |  ")
                            RMenu:Get('showcase', 'Oeil Droit1'):SetSubtitle("~g~Effets de Fumée - Oeil Droit |  ")
                            RMenu:Get('showcase', 'submenu4'):SetSubtitle("~g~Parametres")
                        elseif index3[Index] == 'Jaune' then
                            colorX = 255
                            colorY = 255
                            colorZ = 0
                            RMenu:Get('showcase', 'menu'):SetSubtitle("~y~ ")
                            RMenu:Get('showcase', 'submenu1'):SetSubtitle("~y~Effets de Feux |  ")
                            RMenu:Get('showcase', 'Tête'):SetSubtitle("~y~Effets de Feux - Tête |  ")
                            RMenu:Get('showcase', 'Main Gauche'):SetSubtitle("~y~Effets de Feux - Main Gauche |  ")
                            RMenu:Get('showcase', 'Main Droite'):SetSubtitle("~y~Effets de Feux - Main Droite |  ")
                            RMenu:Get('showcase', 'Jambe Droite'):SetSubtitle("~y~Effets de Feux - Jambe Droite |  ")
                            RMenu:Get('showcase', 'Jambe Gauche'):SetSubtitle("~y~Effets de Feux - Jambe Gauche |  ")
                            RMenu:Get('showcase', 'Bras Gauche'):SetSubtitle("~y~Effets de Feux - Bras Gauche |  ")
                            RMenu:Get('showcase', 'Bras Droit'):SetSubtitle("~y~Effets de Feux - Bras Droit |  ")
                            RMenu:Get('showcase', 'Pied Gauche'):SetSubtitle("~y~Effets de Feux - Pied Gauche |  ")
                            RMenu:Get('showcase', 'Pied Droit'):SetSubtitle("~y~Effets de Feux - Pied Droit |  ")
                            RMenu:Get('showcase', 'Oeil Gauche'):SetSubtitle("~y~Effets de Feux - Oeil Gauche |  ")
                            RMenu:Get('showcase', 'Oeil Droit'):SetSubtitle("~y~Effets de Feux - Oeil Droit |  ")
                            RMenu:Get('showcase', 'submenu2'):SetSubtitle("~y~Effets de Fumée | By ZERWYX")
                            RMenu:Get('showcase', 'Tête1'):SetSubtitle("~y~Effets de Fumée - Tête | By ZERWYX")
                            RMenu:Get('showcase', 'Main Gauche1'):SetSubtitle("~y~Effets de Fumée - Main Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Main Droite1'):SetSubtitle("~y~Effets de Fumée - Main Droite | By ZERWYX")
                            RMenu:Get('showcase', 'Jambe Droite1'):SetSubtitle("~y~Effets de Fumée - Jambe Droite | By ZERWYX")
                            RMenu:Get('showcase', 'Jambe Gauche1'):SetSubtitle("~y~Effets de Fumée - Jambe Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Bras Gauche1'):SetSubtitle("~y~Effets de Fumée - Bras Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Bras Droit1'):SetSubtitle("~y~Effets de Fumée - Bras Droit | By ZERWYX")
                            RMenu:Get('showcase', 'Pied Gauche1'):SetSubtitle("~y~Effets de Fumée - Pied Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Pied Droit1'):SetSubtitle("~y~Effets de Fumée - Pied Droit | By ZERWYX")
                            RMenu:Get('showcase', 'Oeil Gauche1'):SetSubtitle("~y~Effets de Fumée - Oeil Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Oeil Droit1'):SetSubtitle("~y~Effets de Fumée - Oeil Droit | By ZERWYX")
                            RMenu:Get('showcase', 'submenu4'):SetSubtitle("~y~Parametres")
                        elseif index3[Index] == 'Orange' then
                            colorX = 255
                            colorY = 123
                            colorZ = 0
                            RMenu:Get('showcase', 'menu'):SetSubtitle("~o~ ")
                            RMenu:Get('showcase', 'submenu1'):SetSubtitle("~o~Effets de Feux |  ")
                            RMenu:Get('showcase', 'Tête'):SetSubtitle("~o~Effets de Feux - Tête |  ")
                            RMenu:Get('showcase', 'Main Gauche'):SetSubtitle("~o~Effets de Feux - Main Gauche |  ")
                            RMenu:Get('showcase', 'Main Droite'):SetSubtitle("~o~Effets de Feux - Main Droite |  ")
                            RMenu:Get('showcase', 'Jambe Droite'):SetSubtitle("~o~Effets de Feux - Jambe Droite |  ")
                            RMenu:Get('showcase', 'Jambe Gauche'):SetSubtitle("~o~Effets de Feux - Jambe Gauche |  ")
                            RMenu:Get('showcase', 'Bras Gauche'):SetSubtitle("~o~Effets de Feux - Bras Gauche |  ")
                            RMenu:Get('showcase', 'Bras Droit'):SetSubtitle("~o~Effets de Feux - Bras Droit |  ")
                            RMenu:Get('showcase', 'Pied Gauche'):SetSubtitle("~o~Effets de Feux - Pied Gauche |  ")
                            RMenu:Get('showcase', 'Pied Droit'):SetSubtitle("~o~Effets de Feux - Pied Droit |  ")
                            RMenu:Get('showcase', 'Oeil Gauche'):SetSubtitle("~o~Effets de Feux - Oeil Gauche |  ")
                            RMenu:Get('showcase', 'Oeil Droit'):SetSubtitle("~o~Effets de Feux - Oeil Droit |  ")
                            RMenu:Get('showcase', 'submenu2'):SetSubtitle("~o~Effets de Fumée | By ZERWYX")
                            RMenu:Get('showcase', 'Tête1'):SetSubtitle("~o~Effets de Fumée - Tête | By ZERWYX")
                            RMenu:Get('showcase', 'Main Gauche1'):SetSubtitle("~o~Effets de Fumée - Main Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Main Droite1'):SetSubtitle("~o~Effets de Fumée - Main Droite | By ZERWYX")
                            RMenu:Get('showcase', 'Jambe Droite1'):SetSubtitle("~o~Effets de Fumée - Jambe Droite | By ZERWYX")
                            RMenu:Get('showcase', 'Jambe Gauche1'):SetSubtitle("~o~Effets de Fumée - Jambe Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Bras Gauche1'):SetSubtitle("~o~Effets de Fumée - Bras Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Bras Droit1'):SetSubtitle("~o~Effets de Fumée - Bras Droit | By ZERWYX")
                            RMenu:Get('showcase', 'Pied Gauche1'):SetSubtitle("~o~Effets de Fumée - Pied Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Pied Droit1'):SetSubtitle("~o~Effets de Fumée - Pied Droit | By ZERWYX")
                            RMenu:Get('showcase', 'Oeil Gauche1'):SetSubtitle("~o~Effets de Fumée - Oeil Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Oeil Droit1'):SetSubtitle("~o~Effets de Fumée - Oeil Droit | By ZERWYX")
                            RMenu:Get('showcase', 'submenu4'):SetSubtitle("~o~Parametres")
                        elseif index3[Index] == 'Rose' then
                            colorX = 255
                            colorY = 0
                            colorZ = 255
                            RMenu:Get('showcase', 'menu'):SetSubtitle(" ")
                            RMenu:Get('showcase', 'submenu1'):SetSubtitle("Effets de Feux |  ")
                            RMenu:Get('showcase', 'Tête'):SetSubtitle("Effets de Feux - Tête |  ")
                            RMenu:Get('showcase', 'Main Gauche'):SetSubtitle("Effets de Feux - Main Gauche |  ")
                            RMenu:Get('showcase', 'Main Droite'):SetSubtitle("Effets de Feux - Main Droite |  ")
                            RMenu:Get('showcase', 'Jambe Droite'):SetSubtitle("Effets de Feux - Jambe Droite |  ")
                            RMenu:Get('showcase', 'Jambe Gauche'):SetSubtitle("Effets de Feux - Jambe Gauche |  ")
                            RMenu:Get('showcase', 'Bras Gauche'):SetSubtitle("Effets de Feux - Bras Gauche |  ")
                            RMenu:Get('showcase', 'Bras Droit'):SetSubtitle("Effets de Feux - Bras Droit |  ")
                            RMenu:Get('showcase', 'Pied Gauche'):SetSubtitle("Effets de Feux - Pied Gauche |  ")
                            RMenu:Get('showcase', 'Pied Droit'):SetSubtitle("Effets de Feux - Pied Droit |  ")
                            RMenu:Get('showcase', 'Oeil Gauche'):SetSubtitle("Effets de Feux - Oeil Gauche |  ")
                            RMenu:Get('showcase', 'Oeil Droit'):SetSubtitle("Effets de Feux - Oeil Droit |  ")
                            RMenu:Get('showcase', 'submenu2'):SetSubtitle("Effets de Fumée | By ZERWYX")
                            RMenu:Get('showcase', 'Tête1'):SetSubtitle("Effets de Fumée - Tête | By ZERWYX")
                            RMenu:Get('showcase', 'Main Gauche1'):SetSubtitle("Effets de Fumée - Main Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Main Droite1'):SetSubtitle("Effets de Fumée - Main Droite | By ZERWYX")
                            RMenu:Get('showcase', 'Jambe Droite1'):SetSubtitle("Effets de Fumée - Jambe Droite | By ZERWYX")
                            RMenu:Get('showcase', 'Jambe Gauche1'):SetSubtitle("Effets de Fumée - Jambe Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Bras Gauche1'):SetSubtitle("Effets de Fumée - Bras Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Bras Droit1'):SetSubtitle("Effets de Fumée - Bras Droit | By ZERWYX")
                            RMenu:Get('showcase', 'Pied Gauche1'):SetSubtitle("Effets de Fumée - Pied Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Pied Droit1'):SetSubtitle("ffets de Fumée - Pied Droit | By ZERWYX")
                            RMenu:Get('showcase', 'Oeil Gauche1'):SetSubtitle("Effets de Fumée - Oeil Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Oeil Droit1'):SetSubtitle("Effets de Fumée - Oeil Droit | By ZERWYX")
                            RMenu:Get('showcase', 'submenu4'):SetSubtitle("Parametres")
                        elseif index3[Index] == 'Violet' then
                            colorX = 160
                            colorY = 0
                            colorZ = 255
                            RMenu:Get('showcase', 'menu'):SetSubtitle("~p~ ")
                            RMenu:Get('showcase', 'submenu1'):SetSubtitle("~p~Effets de Feux |  ")
                            RMenu:Get('showcase', 'Tête'):SetSubtitle("~p~Effets de Feux - Tête |  ")
                            RMenu:Get('showcase', 'Main Gauche'):SetSubtitle("~p~Effets de Feux - Main Gauche |  ")
                            RMenu:Get('showcase', 'Main Droite'):SetSubtitle("~p~Effets de Feux - Main Droite |  ")
                            RMenu:Get('showcase', 'Jambe Droite'):SetSubtitle("~p~Effets de Feux - Jambe Droite |  ")
                            RMenu:Get('showcase', 'Jambe Gauche'):SetSubtitle("~p~Effets de Feux - Jambe Gauche |  ")
                            RMenu:Get('showcase', 'Bras Gauche'):SetSubtitle("~p~Effets de Feux - Bras Gauche |  ")
                            RMenu:Get('showcase', 'Bras Droit'):SetSubtitle("~p~Effets de Feux - Bras Droit |  ")
                            RMenu:Get('showcase', 'Pied Gauche'):SetSubtitle("~p~Effets de Feux - Pied Gauche |  ")
                            RMenu:Get('showcase', 'Pied Droit'):SetSubtitle("~p~Effets de Feux - Pied Droit |  ")
                            RMenu:Get('showcase', 'Oeil Gauche'):SetSubtitle("~p~Effets de Feux - Oeil Gauche |  ")
                            RMenu:Get('showcase', 'Oeil Droit'):SetSubtitle("~p~Effets de Feux - Oeil Droit |  ")
                            RMenu:Get('showcase', 'submenu2'):SetSubtitle("~p~Effets de Fumée | By ZERWYX")
                            RMenu:Get('showcase', 'Tête1'):SetSubtitle("~p~Effets de Fumée - Tête | By ZERWYX")
                            RMenu:Get('showcase', 'Main Gauche1'):SetSubtitle("~p~Effets de Fumée - Main Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Main Droite1'):SetSubtitle("~p~Effets de Fumée - Main Droite | By ZERWYX")
                            RMenu:Get('showcase', 'Jambe Droite1'):SetSubtitle("~p~Effets de Fumée - Jambe Droite | By ZERWYX")
                            RMenu:Get('showcase', 'Jambe Gauche1'):SetSubtitle("~p~Effets de Fumée - Jambe Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Bras Gauche1'):SetSubtitle("~p~Effets de Fumée - Bras Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Bras Droit1'):SetSubtitle("~p~Effets de Fumée - Bras Droit | By ZERWYX")
                            RMenu:Get('showcase', 'Pied Gauche1'):SetSubtitle("~p~Effets de Fumée - Pied Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Pied Droit1'):SetSubtitle("~p~Effets de Fumée - Pied Droit | By ZERWYX")
                            RMenu:Get('showcase', 'Oeil Gauche1'):SetSubtitle("~p~Effets de Fumée - Oeil Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Oeil Droit1'):SetSubtitle("~p~Effets de Fumée - Oeil Droit | By ZERWYX")
                            RMenu:Get('showcase', 'submenu4'):SetSubtitle("~p~Parametres")
                        elseif index3[Index] == 'Noir' then
                            colorX = 0
                            colorY = 0
                            colorZ = 0
                            RMenu:Get('showcase', 'menu'):SetSubtitle("~u~ ")
                            RMenu:Get('showcase', 'submenu1'):SetSubtitle("~u~Effets de Feux |  ")
                            RMenu:Get('showcase', 'Tête'):SetSubtitle("~u~Effets de Feux - Tête |  ")
                            RMenu:Get('showcase', 'Main Gauche'):SetSubtitle("~u~Effets de Feux - Main Gauche |  ")
                            RMenu:Get('showcase', 'Main Droite'):SetSubtitle("~u~Effets de Feux - Main Droite |  ")
                            RMenu:Get('showcase', 'Jambe Droite'):SetSubtitle("~u~Effets de Feux - Jambe Droite |  ")
                            RMenu:Get('showcase', 'Jambe Gauche'):SetSubtitle("~u~Effets de Feux - Jambe Gauche |  ")
                            RMenu:Get('showcase', 'Bras Gauche'):SetSubtitle("~u~Effets de Feux - Bras Gauche |  ")
                            RMenu:Get('showcase', 'Bras Droit'):SetSubtitle("~u~Effets de Feux - Bras Droit |  ")
                            RMenu:Get('showcase', 'Pied Gauche'):SetSubtitle("~u~Effets de Feux - Pied Gauche |  ")
                            RMenu:Get('showcase', 'Pied Droit'):SetSubtitle("~u~Effets de Feux - Pied Droit |  ")
                            RMenu:Get('showcase', 'Oeil Gauche'):SetSubtitle("~u~Effets de Feux - Oeil Gauche |  ")
                            RMenu:Get('showcase', 'Oeil Droit'):SetSubtitle("~u~Effets de Feux - Oeil Droit |  ")
                            RMenu:Get('showcase', 'submenu2'):SetSubtitle("~u~Effets de Fumée | By ZERWYX")
                            RMenu:Get('showcase', 'Tête1'):SetSubtitle("~u~Effets de Fumée - Tête | By ZERWYX")
                            RMenu:Get('showcase', 'Main Gauche1'):SetSubtitle("~u~Effets de Fumée - Main Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Main Droite1'):SetSubtitle("~u~Effets de Fumée - Main Droite | By ZERWYX")
                            RMenu:Get('showcase', 'Jambe Droite1'):SetSubtitle("~u~Effets de Fumée - Jambe Droite | By ZERWYX")
                            RMenu:Get('showcase', 'Jambe Gauche1'):SetSubtitle("~u~Effets de Fumée - Jambe Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Bras Gauche1'):SetSubtitle("~u~Effets de Fumée - Bras Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Bras Droit1'):SetSubtitle("~u~Effets de Fumée - Bras Droit | By ZERWYX")
                            RMenu:Get('showcase', 'Pied Gauche1'):SetSubtitle("~u~Effets de Fumée - Pied Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Pied Droit1'):SetSubtitle("~u~Effets de Fumée - Pied Droit | By ZERWYX")
                            RMenu:Get('showcase', 'Oeil Gauche1'):SetSubtitle("~u~Effets de Fumée - Oeil Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Oeil Droit1'):SetSubtitle("~u~Effets de Fumée - Oeil Droit | By ZERWYX")
                            RMenu:Get('showcase', 'submenu4'):SetSubtitle("~u~Parametres")
                        elseif index3[Index] == 'Gris' then
                            colorX = 135
                            colorY = 135
                            colorZ = 135
                            RMenu:Get('showcase', 'menu'):SetSubtitle("~c~ ")
                            RMenu:Get('showcase', 'submenu1'):SetSubtitle("~c~Effets de Feux |  ")
                            RMenu:Get('showcase', 'Tête'):SetSubtitle("~c~Effets de Feux - Tête |  ")
                            RMenu:Get('showcase', 'Main Gauche'):SetSubtitle("~c~Effets de Feux - Main Gauche |  ")
                            RMenu:Get('showcase', 'Main Droite'):SetSubtitle("~c~Effets de Feux - Main Droite |  ")
                            RMenu:Get('showcase', 'Jambe Droite'):SetSubtitle("~c~Effets de Feux - Jambe Droite |  ")
                            RMenu:Get('showcase', 'Jambe Gauche'):SetSubtitle("~c~Effets de Feux - Jambe Gauche |  ")
                            RMenu:Get('showcase', 'Bras Gauche'):SetSubtitle("~c~Effets de Feux - Bras Gauche |  ")
                            RMenu:Get('showcase', 'Bras Droit'):SetSubtitle("~c~Effets de Feux - Bras Droit |  ")
                            RMenu:Get('showcase', 'Pied Gauche'):SetSubtitle("~c~Effets de Feux - Pied Gauche |  ")
                            RMenu:Get('showcase', 'Pied Droit'):SetSubtitle("~c~Effets de Feux - Pied Droit |  ")
                            RMenu:Get('showcase', 'Oeil Gauche'):SetSubtitle("~c~Effets de Feux - Oeil Gauche |  ")
                            RMenu:Get('showcase', 'Oeil Droit'):SetSubtitle("~c~Effets de Feux - Oeil Droit |  ")
                            RMenu:Get('showcase', 'submenu2'):SetSubtitle("~c~Effets de Fumée | By ZERWYX")
                            RMenu:Get('showcase', 'Tête1'):SetSubtitle("~c~Effets de Fumée - Tête | By ZERWYX")
                            RMenu:Get('showcase', 'Main Gauche1'):SetSubtitle("~c~Effets de Fumée - Main Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Main Droite1'):SetSubtitle("~c~Effets de Fumée - Main Droite | By ZERWYX")
                            RMenu:Get('showcase', 'Jambe Droite1'):SetSubtitle("~c~Effets de Fumée - Jambe Droite | By ZERWYX")
                            RMenu:Get('showcase', 'Jambe Gauche1'):SetSubtitle("~c~Effets de Fumée - Jambe Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Bras Gauche1'):SetSubtitle("~c~Effets de Fumée - Bras Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Bras Droit1'):SetSubtitle("~c~Effets de Fumée - Bras Droit | By ZERWYX")
                            RMenu:Get('showcase', 'Pied Gauche1'):SetSubtitle("~c~Effets de Fumée - Pied Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Pied Droit1'):SetSubtitle("~c~Effets de Fumée - Pied Droit | By ZERWYX")
                            RMenu:Get('showcase', 'Oeil Gauche1'):SetSubtitle("~c~Effets de Fumée - Oeil Gauche | By ZERWYX")
                            RMenu:Get('showcase', 'Oeil Droit1'):SetSubtitle("~c~Effets de Fumée - Oeil Droit | By ZERWYX")
                            RMenu:Get('showcase', 'submenu4'):SetSubtitle("~c~Parametres")
                        end
                    end
                end)
        end, function()
            ---Panels
            RageUI.PercentagePanel(percent, "Opacité", "0%", "100%", function(Hovered, Selected, Percent)
                RMenu:Get('showcase', 'submenu4').EnableMouse = true
                if Selected then
                a = Percent * 255
                percent = Percent
                end
                RMenu:Get('showcase', 'Tête'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'submenu1'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Main Gauche'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Main Droite'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Jambe Droite'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Jambe Gauche'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Bras Gauche'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Bras Droit'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Pied Gauche'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Pied Droit'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Oeil Gauche'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Oeil Droit'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Tête1'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'submenu2'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Main Gauche1'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Main Droite1'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Jambe Droite1'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Jambe Gauche1'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Bras Gauche1'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Bras Droit1'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Pied Gauche1'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Pied Droit1'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Oeil Gauche1'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'Oeil Droit1'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'submenu4'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
                RMenu:Get('showcase', 'menu'):SetRectangleBanner(colorX, colorY, colorZ, math.round(a))
            end)
        end)
    end
end, 1)
----------------------------------------------------------------------------------------------
--                               POWER MENU BY ZERWYX                                       --
----------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
--                              DISCORD:   ZeRwYX#9999                                      --
----------------------------------------------------------------------------------------------

-- SERVEUR RP: https://discord.gg/cfywvUqMGw