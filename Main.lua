local gui = Instance.new("ScreenGui")
local mainFrame = Instance.new("Frame")
local autoFarmBtn = Instance.new("TextButton")
local autoRebirthBtn = Instance.new("TextButton")
local autoEggBtn = Instance.new("TextButton")  -- New button
local title = Instance.new("TextLabel")

-- GUI Setup
gui.Name = "FarmingGUI"
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui

-- Main Frame (adjusted size to accommodate new button)
mainFrame.Name = "MainFrame"
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0.8, 0, 0.5, -75)
mainFrame.Size = UDim2.new(0, 180, 0, 190)  -- Increased height
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
autoFarmBtn.Position = UDim2.new(0.1, 0, 0.25, 0)
autoFarmBtn.Size = UDim2.new(0.8, 0, 0, 35)
autoFarmBtn.Font = Enum.Font.GothamSemibold
autoFarmBtn.Text = "Auto Farm"
autoFarmBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
autoFarmBtn.TextSize = 14
autoFarmBtn.Parent = mainFrame

-- Auto Rebirth Button
autoRebirthBtn.Name = "AutoRebirthButton"
autoRebirthBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
autoRebirthBtn.Position = UDim2.new(0.1, 0, 0.5, 0)
autoRebirthBtn.Size = UDim2.new(0.8, 0, 0, 35)
autoRebirthBtn.Font = Enum.Font.GothamSemibold
autoRebirthBtn.Text = "Auto Rebirth"
autoRebirthBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
autoRebirthBtn.TextSize = 14
autoRebirthBtn.Parent = mainFrame

-- Auto Egg Button
autoEggBtn.Name = "AutoEggButton"
autoEggBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
autoEggBtn.Position = UDim2.new(0.1, 0, 0.75, 0)
autoEggBtn.Size = UDim2.new(0.8, 0, 0, 35)
autoEggBtn.Font = Enum.Font.GothamSemibold
autoEggBtn.Text = "Auto Egg"
autoEggBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
autoEggBtn.TextSize = 14
autoEggBtn.Parent = mainFrame

-- Add rounded corners to buttons
local function addButtonCorners(button)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = button
end

addButtonCorners(autoFarmBtn)
addButtonCorners(autoRebirthBtn)
addButtonCorners(autoEggBtn)

-- Function to simulate clicking
local function click()
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
    wait()
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game, 1)
end

-- Button Functionality
local autoFarmEnabled = false
autoFarmBtn.MouseButton1Click:Connect(function()
    autoFarmEnabled = not autoFarmEnabled
    autoFarmBtn.BackgroundColor3 = autoFarmEnabled and Color3.fromRGB(0, 170, 127) or Color3.fromRGB(45, 45, 45)
    autoFarmBtn.Text = autoFarmEnabled and "Auto Farm (ON)" or "Auto Farm"
    
    if autoFarmEnabled then
        -- Equip fist
        local args = {
            [1] = "S_Tools_Equip",
            [2] = {
                [1] = "Punch"
            }
        }
        game:GetService("ReplicatedStorage").Common.Library.Network.RemoteEvent:FireServer(unpack(args))
    end
    
    -- Autoclicker loop
    while autoFarmEnabled do
        click()
        wait()
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

-- Auto Egg Opener Functionality
local autoEggEnabled = false
autoEggBtn.MouseButton1Click:Connect(function()
    autoEggEnabled = not autoEggEnabled
    autoEggBtn.BackgroundColor3 = autoEggEnabled and Color3.fromRGB(0, 170, 127) or Color3.fromRGB(45, 45, 45)
    autoEggBtn.Text = autoEggEnabled and "Auto Egg (ON)" or "Auto Egg"
    
    while autoEggEnabled do
        local args = {
            [1] = "S_Eggs_Open",
            [2] = {
                [1] = "Starter",
                [2] = 1
            }
        }
        game:GetService("ReplicatedStorage").Common.Library.Network.RemoteFunction:InvokeServer(unpack(args))
        wait(0.1)  -- Small delay to prevent overwhelming the server
    end
end)
