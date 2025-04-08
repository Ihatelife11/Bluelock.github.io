
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

local blur = Instance.new("BlurEffect")
blur.Size = 24
blur.Parent = game.Lighting


local screenGui = Instance.new("ScreenGui", gui)
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false

local label = Instance.new("TextLabel", screenGui)
label.Size = UDim2.new(1, 0, 1, 0)
label.BackgroundColor3 = Color3.new(0, 0, 0)
label.TextColor3 = Color3.new(1, 0, 0)
label.Font = Enum.Font.Code
label.TextSize = 36
label.Text = "⚠️ UNEXPECTED CLIENT ERROR ⚠️\n\nError Code: 268xCRASH\n\nAttempting to recover..."
label.TextWrapped = true


local sound = Instance.new("Sound", player:WaitForChild("PlayerGui"))
sound.SoundId = "rbxassetid://9118823102" -- Static/glitch sound
sound.Volume = 1
sound:Play()


spawn(function()
	while wait(0.1) do
		label.Visible = not label.Visible
	end
end)


wait(5)

I
blur:Destroy()
screenGui:Destroy()


player:Kick("An unexpected error occurred. Please reinstall Roblox.")
