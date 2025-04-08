local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")


local blur = Instance.new("BlurEffect")
blur.Size = 24
blur.Parent = game.Lighting


local screenGui = Instance.new("ScreenGui", gui)
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false
screenGui.Name = "FakeCrashUI"

local label = Instance.new("TextLabel", screenGui)
label.Size = UDim2.new(1, 0, 1, 0)
label.BackgroundColor3 = Color3.new(0, 0, 0)
label.TextColor3 = Color3.fromRGB(0, 255, 0)
label.Font = Enum.Font.Code
label.TextSize = 40
label.Text = "⚠️ SYSTEM OVERRIDE ⚠️\n\nElysium is Paid\n\nModifying client memory..."
label.TextWrapped = true


local sound = Instance.new("Sound", player:WaitForChild("PlayerGui"))
sound.SoundId = "rbxassetid://9118823102" -- Static/Glitch
sound.Volume = 1
sound:Play()


spawn(function()
	while wait(0.07) do
		label.Visible = not label.Visible
	end
end)


wait(6)


blur:Destroy()
screenGui:Destroy()


while true do
game.Players.LocalPlayer.Character.Humanoid.JumpPower = math.huge
end
