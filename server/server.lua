-- CONFIG ITEM NAMES
local BulletproofItem		= 'bulletproof'
local MedikitItem		= 'medikit'
local BandageItem		= 'bandage'
local ClipItem			= 'clip'
local BoxClipItem		= 'boxclip'

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('Resource successfully started!')
end)

-- BULLETPROOF
ESX.RegisterUsableItem(BulletproofItem, function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('ax_items:bulletproof', source)
	xPlayer.removeInventoryItem(BulletproofItem, 1)
end)

-- MEDIKIT
ESX.RegisterUsableItem(MedikitItem, function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('ax_items:medikit', source)
    xPlayer.removeInventoryItem(MedikitItem, 1)
end)

-- BANDAGE
ESX.RegisterUsableItem(BandageItem, function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('ax_items:bandage', source)
    xPlayer.removeInventoryItem(BandageItem, 1)
end)

-- AMMO CLIP
ESX.RegisterUsableItem(ClipItem, function(source)
	TriggerClientEvent('ax_items:clip', source)
end)
RegisterNetEvent('ax_items:remove:clip', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem(ClipItem, 1)
end)

-- AMMO BOX
ESX.RegisterUsableItem(BoxClipItem, function(source)
	TriggerClientEvent('ax_items:boxclip', source)
end)
RegisterNetEvent('ax_items:remove:boxclip', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem(BoxClipItem, 1)
end)
