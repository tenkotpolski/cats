local OrionLib = loadstring(game:HttpGet("loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source"))()

local Window = OrionLib:MakeWindow({
    Name = "Cat Chaos",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "CatChaos"
})

local SoundTab = Window:MakeTab({
    Name = "Audio FE [[maybe it's FE]]",
    Icon = "rbxassetid://16570933726",
    PremiumOnly = false
})

local sounds = {
    {
        Name = "Tic Tac Toe Jumpscare Scream",
        SoundId = "rbxassetid://5710016194"
    },
    {
        Name = "Scream Horror or nightmare i think bro lol xd",
        SoundId = "rbxassetid://9125712561"
    }
}

for _, soundInfo in pairs(sounds) do
    SoundTab:AddButton({
        Name = soundInfo.Name,
        Callback = function()

            local sound = Instance.new("Sound")
            sound.SoundId = soundInfo.SoundId
            sound.Volume = 1
            sound.Parent = workspace

            sound:Play()

            sound.Ended:Connect(function()
                sound:Destroy()
            end)

        end
    })
end

OrionLib:Init()
