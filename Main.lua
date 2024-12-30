local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local textLabel = Instance.new("TextLabel")
local button = Instance.new("TextButton")
local script = Instance.new("Script")

gui.Name = "Exploit GUI"
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

frame.Parent = gui
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frameActive = false

textLabel.Parent = frame
textLabel.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel.Size = UDim2.new(1, 0, 0, 20)
textLabel.Text = "Exploit GUI"
textLabel.TextColor3 = Color3.new(0, 0, 0)
textLabel.TextSize = 20
textLabel.TextXAlignment = Enum.TextXAlignment.Center

button.Parent = frame
button.BackgroundColor3 = Color3.new(0, 0.5, 1)
button.Size = UDim2.new(1, 0, 0, 40)
button.Position = UDim2.new(0, 0, 1, -40)
button.Text = "Toggle Exploit"
button.TextColor3 = Color3.new(1, 1, 1)
button.TextSize = 20
button.TextXAlignment = Enum.TextXAlignment.Center
button.MouseButton1Click:Connect(function()
    if not frameActive then
        script:Disconnect()
        script.Disabled = false
        frameActive = true
        button.Text = "Stop Exploit"
    else
        script:Disconnect()
        script.Disabled = true
        frameActive = false
        button.Text = "Toggle Exploit"
    end
end)

script.Parent = frame
script.Source = [[
while frameActive do
    local args = {
        [1] = "S_Tools_Activate",
        [2] = {}
    }
    game:GetService("ReplicatedStorage").Common.Library.Network.RemoteFunction:FireServer(unpack(args))
    wait(0.1)
end
]]
script.Disabled = true

gui.Parent = game.CoreGui
