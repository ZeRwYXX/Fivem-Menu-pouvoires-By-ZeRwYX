----------------------------------------------------------------------------------------------
--                               POWER MENU BY ZERWYX                                       --
----------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
--                              DISCORD:   ZeRwYX#9999                                      --
----------------------------------------------------------------------------------------------

-- SERVEUR RP: https://discord.gg/cfywvUqMGw


print("[ Pour ouvrir le menu")
print("---------------------------------------")
print("          Power Menu ZeRwYX            ")
print("---------------------------------------")
print("                Github                 ")
print("       https://github.com/ZeRwYXX      ")
print("---------------------------------------")
ESX = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if IsControlJustPressed(1, 165) then
            ExecuteCommand('ZERZ')
        end
    end
end)

RegisterNetEvent('OpenMenu:ZERWYX')
AddEventHandler('OpenMenu:ZERWYX', function()
	RageUI.Visible(RMenu:Get('showcase', 'menu'), not RageUI.Visible(RMenu:Get('showcase', 'menu')))
end)

function loadAnimDict(dict)
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(1)
	end
end

p_smoke_location = {
	20279,
	0x4B2,
	0xe175,
	0x60e6,
	0x192a,
	0x5c57,
	0x9000,
	0xf9bb,
	0x8cbd,
	0x188e,
	0x9d4d,
}
p_smoke_particle = {
	"ent_ray_ch2_farm_fire_u_l",
}

p_smoke_particle_asset2 = "core" 
local have = false

p_smoke_particle_asset = "core" 
RegisterNetEvent("c_smoke")
AddEventHandler("c_smoke", function(c_ped, location, particle, state, main, pied, bras, brasg, oeil, crane, maind)
	if state then
		if DoesEntityExist(NetToPed(c_ped)) and not IsEntityDead(NetToPed(c_ped)) then
			createdSmoke = UseParticleFxAssetNextCall(p_smoke_particle_asset)
			if main then
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), 0.13, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.2, 0.0, 0.0, 0.0)
			elseif maind then
				print('ok')
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), 0.05, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.2, 0.0, 0.0, 0.0)
			elseif pied then
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.35, 0.0, 0.0, 0.0)
			elseif bras then
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), -0.2, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.4, 0.0, 0.0, 0.0)
			elseif oeil then
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.1, 0.0, 0.0, 0.0)
			elseif crane then
				print('test')
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), -0.2, 0.14, -0.16, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location),0.4, 0.0, 0.0, 0.0)
			elseif brasg then
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), -0.1, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.4, 0.0, 0.0, 0.0)
			else
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.5, 0.0, 0.0, 0.0)
			end
		end
	else
		RemoveParticleFxFromEntity(NetToPed(c_ped))
	end
end)


p_smoke_particle_asset = "core" 
RegisterNetEvent("c_smoke3")
AddEventHandler("c_smoke3", function(c_ped, location, particle, state, main, pied, bras, brasg, oeil, crane, maind)
	if state then
		if DoesEntityExist(NetToPed(c_ped)) and not IsEntityDead(NetToPed(c_ped)) then
			createdSmoke = UseParticleFxAssetNextCall(p_smoke_particle_asset)
			if main then
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), 0.13, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.2, 0.0, 0.0, 0.0)
			elseif maind then
				print('ok')
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), 0.05, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.2, 0.0, 0.0, 0.0)
			elseif pied then
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.35, 0.0, 0.0, 0.0)
			elseif bras then
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), -0.2, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.4, 0.0, 0.0, 0.0)
			elseif oeil then
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.1, 0.0, 0.0, 0.0)
			elseif crane then
				print('test')
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), -0.2, 0.14, -0.16, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location),0.4, 0.0, 0.0, 0.0)
			elseif brasg then
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), -0.1, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.4, 0.0, 0.0, 0.0)
			else
				createdPart = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.5, 0.0, 0.0, 0.0)
			end
		end
	else
		RemoveParticleFxFromEntity(NetToPed(c_ped))
	end
end)
RegisterNetEvent("c_smoke4")
AddEventHandler("c_smoke4", function(c_ped, location, particle, state)
	if state then
		createdSmoke = UseParticleFxAssetNextCall(p_smoke_particle_asset)
		createdPart2998 = StartParticleFxLoopedOnEntityBone(particle, NetToPed(c_ped), -0.04, 0.15, 0.0, -90.0, -40.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), location), 0.8, 0.0, 0.0, 0.0)
	else
		if DoesParticleFxLoopedExist(createdPart2998) then 
			RemoveParticleFx(createdPart2998, true)
		end
	end
end)
RegisterNetEvent("c_opa")
AddEventHandler("c_opa", function(c_ped, opac)
	SetEntityAlpha(NetToPed(c_ped), opac)
end)
RegisterNetEvent("c_smoke2")
AddEventHandler("c_smoke2", function(c_ped, state)
	have = not have
			local coords = GetEntityCoords(NetToPed(c_ped))
			if have then 

		
			SetEntityInvincible(NetToPed(c_ped), false)
			StartEntityFire(NetToPed(c_ped))
			SetEntityInvincible(NetToPed(c_ped), true)
			createdSmoke2 = UseParticleFxAssetNextCall(p_smoke_particle_asset2)
			createdPart2 = StartParticleFxLoopedOnEntityBone("veh_trailer_petrol_spray",NetToPed(c_ped), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), 0x322c), 0.0, 0.0, 0.0, 0.0)
			createdSmoke2 = UseParticleFxAssetNextCall(p_smoke_particle_asset2)
			createdPart2 = StartParticleFxLoopedOnEntityBone("fire_petroltank_heli", NetToPed(c_ped), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), 0x322c), 0.4, 0.0, 0.0, 0.0)
			else
				StopEntityFire(NetToPed(c_ped))
				RemoveParticleFxFromEntity(NetToPed(c_ped))
			end
end)
----------------------------------------------------------------------------------------------
--                               POWER MENU BY ZERWYX                                       --
----------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
--                              DISCORD:   ZeRwYX#9999                                      --
----------------------------------------------------------------------------------------------

-- SERVEUR RP: https://discord.gg/cfywvUqMGw