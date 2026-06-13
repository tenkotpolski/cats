local Rayfield = loadstring(game:HttpGet(
    "https://sirius.menu/rayfield"
))()

local Window = Rayfield:CreateWindow({
    Name = "Cat Chaos",
    LoadingTitle = "Cat Chaos",
    LoadingSubtitle = "by bro lol xd"
})

local SoundTab = Window:CreateTab(
    "Audio FE [[maybe it's FE]]",
    16570933726
)

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

for _, soundInfo in ipairs(sounds) do
    SoundTab:CreateButton({
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
