local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local punchButton = Instance.new("TextButton")
local rebirthButton = Instance.new("TextButton")

-- GUI setup
gui.Name = "Autopunch & Autorebirth GUI"
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Frame styling
frame.Parent = gui
frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
frame.BorderSizePixel = 0
frame.Size = UDim2.new(0, 200, 0, 150)
frame.Position = UDim2.new(0.8, 0, 0.5, -75)
frame.Active = true
frame.Draggable = true -- Makes the GUI draggable

-- Create corner radius
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = frame

-- Punch button styling
punchButton.Parent = frame
punchButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
punchButton.Size = UDim2.new(0.9, 0, 0, 40)
punchButton.Position = UDim2.new(0.05, 0, 0.1, 0)
punchButton.Text = "Autopunch"
punchButton.TextColor3 = Color3.new(1, 1, 1)
punchButton.TextSize = 20
punchButton.Font = Enum.Font.GothamBold

-- Add corner radius to punch button
local punchCorner = Instance.new("UICorner")
punchCorner.CornerRadius = UDim.new(0, 6)
punchCorner.Parent = punchButton

-- Rebirth button styling
rebirthButton.Parent = frame
rebirthButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
rebirthButton.Size = UDim2.new(0.9, 0, 0, 40)
rebirthButton.Position = UDim2.new(0.05, 0, 0.6, 0)
rebirthButton.Text = "Autorebirth"
rebirthButton.TextColor3 = Color3.new(1, 1, 1)
rebirthButton.TextSize = 20
rebirthButton.Font = Enum.Font.GothamBold

-- Add corner radius to rebirth button
local rebirthCorner = Instance.new("UICorner")
rebirthCorner.CornerRadius = UDim.new(0, 6)
rebirthCorner.Parent = rebirthButton

-- Toggle states
local punchEnabled = false
local rebirthEnabled = false

-- Button functionality
punchButton.MouseButton1Click:Connect(function()
    punchEnabled = not punchEnabled
    punchButton.BackgroundColor3 = punchEnabled and Color3.fromRGB(0, 255, 127) or Color3.fromRGB(0, 170, 255)
    punchButton.Text = punchEnabled and "Autopunch (ON)" or "Autopunch"
    
    while punchEnabled do
        local args = {
            [1] = "S_Tools_Toggle",
            [2] = {
                [1] = "Punch"
            }
        }
        game:GetService("ReplicatedStorage").Common.Library.Network.RemoteEvent:FireServer(unpack(args))
        wait(0.1)
    end
end)

rebirthButton.MouseButton1Click:Connect(function()
    rebirthEnabled = not rebirthEnabled
    rebirthButton.BackgroundColor3 = rebirthEnabled and Color3.fromRGB(0, 255, 127) or Color3.fromRGB(0, 170, 255)
    rebirthButton.Text = rebirthEnabled and "Autorebirth (ON)" or "Autorebirth"
    
    while rebirthEnabled do
        local args = {
            [1] = "S_Rebirth_Request",
            [2] = {}
        }
        game:GetService("ReplicatedStorage").Common.Library.Network.RemoteFunction:InvokeServer(unpack(args))
        wait(0.1)
    end
end)

gui.Parent = game.CoreGui
