local gui = Instance.new("ScreenGui")
local mainFrame = Instance.new("Frame")
local autoFarmBtn = Instance.new("TextButton")
local autoRebirthBtn = Instance.new("TextButton")
local title = Instance.new("TextLabel")

-- GUI Setup
gui.Name = "FarmingGUI"
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui

-- Main Frame
mainFrame.Name = "MainFrame"
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0.8, 0, 0.5, -75)
mainFrame.Size = UDim2.new(0, 180, 0, 140)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = gui

-- Add rounded corners
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = mainFrame

-- Title
title.Name = "Title"
title.BackgroundTransparency = 1
title.Position = UDim2.new(0, 0, 0, 5)
title.Size = UDim2.new(1, 0, 0, 25)
title.Font = Enum.Font.GothamBold
title.Text = "Farming GUI"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 16
title.Parent = mainFrame

-- Auto Farm Button
autoFarmBtn.Name = "AutoFarmButton"
autoFarmBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
autoFarmBtn.Position = UDim2.new(0.1, 0, 0.3, 0)
autoFarmBtn.Size = UDim2.new(0.8, 0, 0, 35)
autoFarmBtn.Font = Enum.Font.GothamSemibold
autoFarmBtn.Text = "Auto Farm"
autoFarmBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
autoFarmBtn.TextSize = 14
autoFarmBtn.Parent = mainFrame

-- Auto Rebirth Button
autoRebirthBtn.Name = "AutoRebirthButton"
autoRebirthBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
autoRebirthBtn.Position = UDim2.new(0.1, 0, 0.65, 0)
autoRebirthBtn.Size = UDim2.new(0.8, 0, 0, 35)
autoRebirthBtn.Font = Enum.Font.GothamSemibold
autoRebirthBtn.Text = "Auto Rebirth"
autoRebirthBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
autoRebirthBtn.TextSize = 14
autoRebirthBtn.Parent = mainFrame

-- Add rounded corners to buttons
local function addButtonCorners(button)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = button
end

addButtonCorners(autoFarmBtn)
addButtonCorners(autoRebirthBtn)

-- Button Functionality
local autoFarmEnabled = false
autoFarmBtn.MouseButton1Click:Connect(function()
    autoFarmEnabled = not autoFarmEnabled
    autoFarmBtn.BackgroundColor3 = autoFarmEnabled and Color3.fromRGB(0, 170, 127) or Color3.fromRGB(45, 45, 45)
    autoFarmBtn.Text = autoFarmEnabled and "Auto Farm (ON)" or "Auto Farm"
    
    if autoFarmEnabled then
        game:GetService("ReplicatedStorage").Common.Library.Network.RemoteEvent:FireServer("S_Tools_Toggle", {[1] = "Punch"})
    end
    
    while autoFarmEnabled do
        game:GetService("ReplicatedStorage").Common.Library.Network.RemoteEvent:FireServer("S_Tools_Action", {[1] = "Punch"})
        wait()
    end
    
    if not autoFarmEnabled then
        game:GetService("ReplicatedStorage").Common.Library.Network.RemoteEvent:FireServer("S_Tools_Toggle", {[1] = "Punch"})
    end
end)

local autoRebirthEnabled = false
autoRebirthBtn.MouseButton1Click:Connect(function()
    autoRebirthEnabled = not autoRebirthEnabled
    autoRebirthBtn.BackgroundColor3 = autoRebirthEnabled and Color3.fromRGB(0, 170, 127) or Color3.fromRGB(45, 45, 45)
    autoRebirthBtn.Text = autoRebirthEnabled and "Auto Rebirth (ON)" or "Auto Rebirth"
    
    while autoRebirthEnabled do
        game:GetService("ReplicatedStorage").Common.Library.Network.RemoteFunction:InvokeServer("S_Rebirth_Request", {})
        wait()
    end
end)
