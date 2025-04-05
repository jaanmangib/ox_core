local PlayerCount = 0

RegisterNetEvent('ox_core:updatePlayerCount')
AddEventHandler('ox_core:updatePlayerCount', function(count)
	PlayerCount = count
end)

Citizen.CreateThread(function()
	TriggerServerEvent("ox_core:checkCount")
end)

Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(....)
		SetDiscordRichPresenceAsset('image')
		SetRichPresence('Players: '..PlayerCount..'/48')
        SetDiscordRichPresenceAssetText('DOWNTWON RP 2.0')
		SetDiscordRichPresenceAction(0, "Framework", "https://overextended.dev")
		SetDiscordRichPresenceAction(1, "Connect to server", "fivem://connect/cfx.re/join/....")
		Citizen.Wait(60000)
	end
end)