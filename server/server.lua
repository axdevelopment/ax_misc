AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('Resource successfully started!')
end)

-- BULLETPROOF
ESX.RegisterUsableItem(AX.BulletproofItem, function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('ax_items:bulletproof', source)
	xPlayer.removeInventoryItem(AX.BulletproofItem, 1)
end)

-- MEDIKIT
ESX.RegisterUsableItem(AX.MedikitItem, function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('ax_items:medikit', source)
    xPlayer.removeInventoryItem(AX.MedikitItem, 1)
end)

-- BANDAGE
ESX.RegisterUsableItem(AX.BandageItem, function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('ax_items:bandage', source)
    xPlayer.removeInventoryItem(AX.BandageItem, 1)
end)

-- AMMO CLIP
ESX.RegisterUsableItem(AX.ClipItem, function(source)
	TriggerClientEvent('ax_items:clip', source)
end)
RegisterNetEvent('ax_items:remove:clip', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem(AX.ClipItem, 1)
end)

-- AMMO BOX
ESX.RegisterUsableItem(AX.BoxClipItem, function(source)
	TriggerClientEvent('ax_items:boxclip', source)
end)
RegisterNetEvent('ax_items:remove:boxclip', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem(AX.BoxClipItem, 1)
end)