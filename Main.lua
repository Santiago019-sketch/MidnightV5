local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local punchButton = Instance.new("TextButton")
local rebirthButton = Instance.new("TextButton")

gui.Name = "Autopunch & Autorebirth GUI"
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

frame.Parent = gui
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Size = UDim2.new(0, 200, 0, 150)
frame.Position = UDim2.new(0.5, -100, 0.5, -75)

punchButton.Parent = frame
punchButton.BackgroundColor3 = Color3.new(0, 0.5, 1)
punchButton.Size = UDim2.new(1, 0, 0, 40)
punchButton.Position = UDim2.new(0, 0, 0, 0)
punchButton.Text = "Autopunch"
punchButton.TextColor3 = Color3.new(1, 1, 1)
punchButton.TextSize = 20
punchButton.TextXAlignment = Enum.TextXAlignment.Center
punchButton.MouseButton1Click:Connect(function()
    local args = {
        [1] = "S_Tools_Toggle",
        [2] = {
            [1] = "Punch"
        }
    }
    game:GetService("ReplicatedStorage").Common.Library.Network.RemoteEvent:FireServer(unpack(args))
end)

rebirthButton.Parent = frame
rebirthButton.BackgroundColor3 = Color3.new(0, 0.5, 1)
rebirthButton.Size = UDim2.new(1, 0, 0, 40)
rebirthButton.Position = UDM2.new(0, 0, 1, -40)
rebirthButton.Text = "Autorebirth"
rebirthButton.TextColor3 = Color3.new(1, 1, 1)
rebirthButton.TextSize = 20
rebirthButton.TextXAlignment = Enum.TextXAlignment.Center
rebirthButton.MouseButton1Click:Connect(function()
    local args = {
        [1] = "S_Rebirth_Request",
        [2] = {}
    }
    game:GetService("ReplicatedStorage").Common.Library.Network.RemoteFunction:InvokeServer(unpack(args))
end)

gui.Parent = game.CoreGui
