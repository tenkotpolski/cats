local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local Gui = Instance.new("ScreenGui")
Gui.Name = "CoolGui"
Gui.ResetOnSpawn = false
Gui.Parent = PlayerGui

-- Intro

local IntroFrame = Instance.new("Frame")
IntroFrame.Size = UDim2.fromScale(1,1)
IntroFrame.BackgroundColor3 = Color3.new(0,0,0)
IntroFrame.Parent = Gui

local Logo = Instance.new("ImageLabel")
Logo.AnchorPoint = Vector2.new(0.5,0.5)
Logo.Position = UDim2.fromScale(0.5,0.5)
Logo.Size = UDim2.fromOffset(0,0)
Logo.BackgroundTransparency = 1

-- TU WSTAW SWÓJ DECAL ID
Logo.Image = "rbxassetid://18438519604"

Logo.Parent = IntroFrame

TweenService:Create(
	Logo,
	TweenInfo.new(1.5, Enum.EasingStyle.Back),
	{
		Size = UDim2.fromOffset(250,250),
		Rotation = 360
	}
):Play()

task.wait(2)

TweenService:Create(
	IntroFrame,
	TweenInfo.new(1),
	{
		BackgroundTransparency = 1
	}
):Play()

TweenService:Create(
	Logo,
	TweenInfo.new(1),
	{
		ImageTransparency = 1
	}
):Play()

task.wait(1)

IntroFrame:Destroy()

-- Main GUI

local Main = Instance.new("Frame")
Main.AnchorPoint = Vector2.new(0.5,0.5)
Main.Position = UDim2.fromScale(0.5,1.5)
Main.Size = UDim2.fromOffset(500,300)
Main.BackgroundColor3 = Color3.fromRGB(25,25,25)
Main.Parent = Gui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0,15)
Corner.Parent = Main

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1,0,0,40)
Title.BackgroundTransparency = 1
Title.Text = "🔥 SUPER COOL GUI 🔥"
Title.TextScaled = true
Title.TextColor3 = Color3.new(1,1,1)
Title.Parent = Main

TweenService:Create(
	Main,
	TweenInfo.new(1, Enum.EasingStyle.Quint),
	{
		Position = UDim2.fromScale(0.5,0.5)
	}
):Play()

local Button = Instance.new("TextButton")
Button.Size = UDim2.fromOffset(200,50)
Button.Position = UDim2.fromOffset(150,120)
Button.Text = "😹 CAT CHAOS"
Button.Parent = Main

local BtnCorner = Instance.new("UICorner")
BtnCorner.Parent = Button

Button.MouseEnter:Connect(function()
	TweenService:Create(
		Button,
		TweenInfo.new(0.2),
		{
			Size = UDim2.fromOffset(220,60)
		}
	):Play()
end)

Button.MouseLeave:Connect(function()
	TweenService:Create(
		Button,
		TweenInfo.new(0.2),
		{
			Size = UDim2.fromOffset(200,50)
		}
	):Play()
end)

Button.MouseButton1Click:Connect(function()
	print("CAT CHAOS ACTIVATED 😹")
end)
