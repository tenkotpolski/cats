local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlaySoundEvent = ReplicatedStorage:WaitForChild("PlaySoundEvent")

PlaySoundEvent.OnServerEvent:Connect(function(player, soundId)

	local sound = Instance.new("Sound")
	sound.SoundId = soundId
	sound.Volume = 1

	-- Parent somewhere replicated
	sound.Parent = workspace

	sound:Play()

	sound.Ended:Connect(function()
		sound:Destroy()
	end)

end)
