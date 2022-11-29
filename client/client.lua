Citizen.CreateThread(function()
	while AX.ReplaceHudColour do
		Citizen.Wait(1)
		ReplaceHudColour(116, AX.HudColour)
	end
end)

Citizen.CreateThread(function()
	while AX.InfStamina do
		Citizen.Wait(1)
		RestorePlayerStamina(PlayerId(-1), 1.0)
	end
end)

-------------------------BULLETPROOF-------------------------------
RegisterNetEvent('ax_items:bulletproof')
AddEventHandler('ax_items:bulletproof', function()
	local playerPed = PlayerPedId()
	exports['mythic_progbar']:Progress({
        name = 'heavy',
        duration = AX.BulletproofTime,
        label = AX.BulletproofPBLabel,
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = AX.BulletproofDisableMovement,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = AX.BulletproofAnimDict,
            anim = AX.BulletproofAnim,
            flags = 49,
        },
        prop = {
            model = AX.BulletproofProp,
        }
    }, function(status)
        if not status then
			if AX.okokNotify then
			exports['okokNotify']:Alert("SYSTEM", AX.BulletproofNotifyText, 5000, 'success')
			else
			ESX.ShowNotification(AX.BulletproofNotifyText)
			end
			AddArmourToPed(playerPed, AX.BulletproofArmor)
        end
    end)
end)

---------------------------MEDIKIT---------------------------------
RegisterNetEvent('ax_items:medikit')
AddEventHandler('ax_items:medikit', function()
	local playerPed = PlayerPedId()
	exports['mythic_progbar']:Progress({
        name = 'heavy',
        duration = AX.MedikitTime,
        label = AX.MedikitPBLabel,
        useWhileDead = false,
        canCancel = AX.MedikitCanCancel,
        controlDisables = {
            disableMovement = AX.MedikitDisableMovement,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = AX.MedikitAnimDict,
            anim = AX.MedikitAnim,
            flags = 49,
        },
        prop = {
            model = AX.MedikitProp,
        }
    }, function(status)
        if not status then
			if AX.okokNotify then
			exports['okokNotify']:Alert("SYSTEM", AX.MedikitNotifyText, 5000, 'success')
			else
			ESX.ShowNotification(AX.MedikitNotifyText)
			end
            SetEntityHealth(playerPed, GetEntityMaxHealth(playerPed))
		end
    end)
end)

---------------------------BANDAGE---------------------------------
RegisterNetEvent('ax_items:bandage')
AddEventHandler('ax_items:bandage', function()
	local playerPed = PlayerPedId()
	exports['mythic_progbar']:Progress({
        name = 'heavy',
        duration = AX.BandageTime,
        label = AX.BandagePBLabel,
        useWhileDead = false,
        canCancel = AX.BandageCanCancel,
        controlDisables = {
            disableMovement = AX.BandageDisableMovement,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = AX.BandageAnimDict,
            anim = AX.BandageAnim,
            flags = 49,
        },
        prop = {
            model = AX.BandageProp,
        }
    }, function(status)
        if not status then
			local health = GetEntityHealth(playerPed)
			local newHealth = math.floor(health + AX.BandageHealth)
			if AX.okokNotify then
			exports['okokNotify']:Alert("SYSTEM", AX.BandageNotifyText, 5000, 'success')
			else
			ESX.ShowNotification(AX.BandageNotifyText)
			end
            SetEntityHealth(playerPed, newHealth)
		end
    end)
end)

---------------------------AMMO CLIP--------------------------------
RegisterNetEvent('ax_items:clip')
AddEventHandler('ax_items:clip', function()
local playerPed = PlayerPedId()
local hash = GetSelectedPedWeapon(playerPed)
local hasWeapon = IsPedArmed(playerPed, 4) 
	if not hasWeapon then
		if AX.okokNotify then
			exports['okokNotify']:Alert("SYSTEM", AX.ClipErrorText, 5000, 'error')
		else
			ESX.ShowNotification(AX.ClipErrorText)
		end
		elseif hasWeapon then
		TriggerEvent("mythic_progbar:client:progress", {
			name = 'heavy',
			duration = AX.ClipTime,
			label = AX.ClipPBLabel,
			useWhileDead = false,
			canCancel = AX.ClipCanCancel,
			controlDisables = {
				disableMovement = AX.ClipDisableMovement,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			},
			animation = {
				animDict = AX.ClipAnimDict,
				anim = AX.ClipAnim,
				flags = 49,
			},
			prop = {
				model = AX.ClipProp,
			}
		}, function(status)
			if not status then	
				if AX.okokNotify then
				exports['okokNotify']:Alert("SYSTEM", AX.ClipNotifyText, 5000, 'success')
				else
				ESX.ShowNotification(AX.ClipNotifyText)
				end
				AddAmmoToPed(playerPed, hash, AX.ClipSize)
				TriggerServerEvent('ax_items:remove:clip')
			end
		end)
	end
end)

---------------------------AMMO BOX---------------------------------
RegisterNetEvent('ax_items:boxclip')
AddEventHandler('ax_items:boxclip', function()
local playerPed = PlayerPedId()
local hash = GetSelectedPedWeapon(playerPed)
local hasWeapon = IsPedArmed(playerPed, 4) 
	if not hasWeapon then
		if AX.okokNotify then
			exports['okokNotify']:Alert("SYSTEM", AX.BoxClipErrorText, 5000, 'error')
		else
			ESX.ShowNotification(AX.BoxClipErrorText)
		end
		elseif hasWeapon then
		TriggerEvent("mythic_progbar:client:progress", {
			name = 'heavy',
			duration = AX.BoxClipTime,
			label = AX.BoxClipPBLabel,
			useWhileDead = false,
			canCancel = AX.BoxClipCanCancel,
			controlDisables = {
				disableMovement = AX.BoxClipDisableMovement,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			},
			animation = {
				animDict = AX.BoxClipAnimDict,
				anim = AX.BoxClipAnim,
				flags = 49,
			},
			prop = {
				model = AX.BoxClipProp,
			}
		}, function(status)
			if not status then	
				if AX.okokNotify then
				exports['okokNotify']:Alert("SYSTEM", AX.BoxClipNotifyText, 5000, 'success')
				else
				ESX.ShowNotification(AX.BoxClipNotifyText)
				end
				AddAmmoToPed(playerPed, hash, AX.BoxClipSize)
				TriggerServerEvent('ax_items:remove:boxclip')
			end
		end)
	end
end)

-------------------------WEAPONDAMAGE-------------------------------
Citizen.CreateThread(function()
    while AX.Weapondamage do
	    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), AX.Unarmed)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BOTTLE"), AX.Bottle)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_WRENCH"), AX.Wrench)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_POOLCUE"), AX.Poolcue)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_CROWBAR"), AX.Crowbar)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HAMMER"), AX.Hammer)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_GOLFCLUB"), AX.Golfclub)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOL50"), AX.Pistol50)
    	Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOL_MK2"), AX.PistolMK2)
    	Wait(0)
    	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_NIGHTSTICK"), AX.Nightstick) 
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_APPISTOL"), AX.APpistol)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_CARBINERIFLE"), AX.Carbinerifle)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_ADVANCEDRIFLE"), AX.Advancedrifle)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PUMPSHOTGUN"), AX.Pumpshotgun)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), AX.PumpshotgunMK2)
        Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_DBSHOTGUN"), AX.DBShotgun)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_COMBATSHOTGUN"), AX.Combatshotgun)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SMG"), AX.SMG)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_ASSAULTRIFLE"), AX.Assaultrifle)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_REVOLVER"), AX.Revolver)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_GUSENBERG"), AX.Gusenberg)
        Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_COMBATPDW"), AX.CombatPDW)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BULLPUPRIFLE"), AX.Bullpuprifle)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SPECIALCARBINE"), AX.Specialcarbine)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_CARBINERIFLE_MK2"), AX.CarbinerifleMK2)
		Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SPECIALCARBINE_MK2"), AX.SpecialcarbineMK2)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOL"), AX.Pistol)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MICROSMG"), AX.MicroSMG)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SMOKEGRENADE"), AX.Smokegrenade)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BZGAS"), AX.BZGas)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BAT"), AX.Bat)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_COMPACTRIFLE"), AX.Compactrifle)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MARKSMANRIFLE"), AX.Marksmanrifle)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SNIPERRIFLE"), AX.Sniperrifle)
        Wait(0)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HEAVYSNIPER"), AX.Heavysniper)
        Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MILITARYRIFLE"), AX.Militaryrifle)
        Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_DOUBLEACTION"), AX.DoubleAction)
        Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_TACTICALRIFLE"), AX.Tacticalrifle)
        Wait(0)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PRECISIONRIFLE"), AX.Precisionrifle)
        Wait(0)
    end
end)

----------------------HIDEHUDCOMPONTENTS----------------------------
Citizen.CreateThread(function()
	while AX.HideGTAHud do
		Citizen.Wait(0)
		HideHudComponentThisFrame(3)
		HideHudComponentThisFrame(4)
		HideHudComponentThisFrame(13)
		HideHudComponentThisFrame(9)
		HideHudComponentThisFrame(7)
		HideHudComponentThisFrame(8)
		HideHudComponentThisFrame(6)
		HideHudComponentThisFrame(2)
	end
end)
