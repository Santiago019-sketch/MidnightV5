--[[
Midnight Hub Loader
This script is now open-source as of 11/21/2024.
Join our Discord: https://dsc.gg/midnighthub
--]]

-- Hook for translating Fluent to Midnight UI
local f2p
local function LoadFluentHook()
    local fluentWatermark = "--[[\r\n    Fluent Interface Suite\r\n    This script is not intended to be modified.\r\n    Author: dawid\r\n    License: MIT\r\n    GitHub: https://github.com/dawid-scripts/Fluent\r\n--]]"

    local originalLoadstring = loadstring
    loadstring = function(...)
        local scriptStr = ...
        if string.find(scriptStr, fluentWatermark, 1, true) then
            return f2p
        end
        return originalLoadstring(...)
    end
end

local GuiContainer
local ClipboardFunction = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set) or CopyString

local function LoadHub()
    -- Create loading screen
    local TweenService = game:GetService("TweenService")

    local LoaderGui = Instance.new("ScreenGui")
    LoaderGui.Parent = game.CoreGui
    LoaderGui.Name = "Loader"

    local LoaderBg = Instance.new("Frame")
    LoaderBg.Size = UDim2.fromOffset(400, 200)
    LoaderBg.Position = UDim2.fromScale(0.5, 0.5)
    LoaderBg.AnchorPoint = Vector2.new(0.5, 0.5)
    LoaderBg.BackgroundTransparency = 0.25
    LoaderBg.ClipsDescendants = true
    Instance.new("UICorner", LoaderBg)
    LoaderBg.Parent = LoaderGui

    local Gradient = Instance.new("UIGradient")
    Gradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0.5)),
        ColorSequenceKeypoint.new(1, Color3.new(0, 0.5, 0))
    })
    Gradient.Rotation = 90
    Gradient.Parent = LoaderBg

    local HubLogo = Instance.new("ImageLabel")
    HubLogo.Size = UDim2.fromOffset(100, 100)
    HubLogo.Image = "rbxassetid://16755289922"
    HubLogo.Position = UDim2.fromScale(0.5, 0.5)
    HubLogo.AnchorPoint = Vector2.new(0.5, 0.5)
    HubLogo.BackgroundTransparency = 1
    HubLogo.Parent = LoaderBg

    local HubText = Instance.new("TextLabel")
    HubText.Size = UDim2.fromScale(1, 1)
    HubText.Text = "<b>Midnight</b> Hub"
    HubText.RichText = true
    HubText.TextSize = 40
    HubText.Font = Enum.Font.Montserrat
    HubText.TextColor3 = Color3.new(1, 1, 1)
    HubText.Position = UDim2.fromScale(0.5, 0.5)
    HubText.AnchorPoint = Vector2.new(0.5, 0.5)
    HubText.BackgroundTransparency = 1
    HubText.TextTransparency = 1
    HubText.Parent = LoaderBg

    local TopLabel = Instance.new("TextLabel")
    TopLabel.Size = UDim2.new(1, 0, 0, 50)
    TopLabel.Text = "Loading..."
    TopLabel.TextSize = 14
    TopLabel.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Bold)
    TopLabel.TextColor3 = Color3.new(1, 1, 1)
    TopLabel.BackgroundTransparency = 1
    TopLabel.Parent = LoaderBg

    local BotLabel = Instance.new("TextLabel")
    BotLabel.Size = UDim2.new(1, 0, 0, 50)
    BotLabel.Position = UDim2.fromScale(0, 1)
    BotLabel.AnchorPoint = Vector2.yAxis
    BotLabel.Text = "Welcome to Midnight Hub!"
    BotLabel.TextSize = 14
    BotLabel.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Bold)
    BotLabel.TextColor3 = Color3.new(1, 1, 1)
    BotLabel.BackgroundTransparency = 1
    BotLabel.Parent = LoaderBg

    local ProgressBarClip = Instance.new("Frame")
    ProgressBar Clip.Size = UDim2.new(0, 0, 0, 10)
    ProgressBarClip.Position = UDim2.new(0, 0, 1, -20)
    ProgressBarClip.BackgroundColor3 = Color3.new(0, 1, 0)
    ProgressBarClip.Parent = LoaderBg

    local ProgressBar = Instance.new("Frame")
    ProgressBar.Size = UDim2.new(1, 0, 0, 10)
    ProgressBar.Position = UDim2.new(0, 0, 1, -20)
    ProgressBar.BackgroundColor3 = Color3.new(1, 1, 1)
    ProgressBar.Parent = LoaderBg

    -- Tweening the loading screen
    local function TweenLoading()
        local goal = {Size = UDim2.new(1, 0, 0, 10)}
        local tween = TweenService:Create(ProgressBarClip, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), goal)
        tween:Play()
        tween.Completed:Wait()
        LoaderGui:Destroy()
    end

    TweenLoading()
end

LoadHub() 

-- Auto-farming functionality
local function AutoFarm()
    while true do
        wait(1) -- Adjust the wait time as needed
        -- Example of auto-farming logic
        for _, mob in pairs(workspace:GetChildren()) do
            if mob:IsA("Model") and mob:FindFirstChild("Humanoid") then
                mob.Humanoid:TakeDamage(100) -- Adjust damage as needed
                wait(0.5) -- Delay between attacks
            end
        end
    end
end

-- Start auto-farming
AutoFarm() 

-- Clipboard functionality
local function CopyToClipboard(text)
    if ClipboardFunction then
        ClipboardFunction(text)
    else
        warn("Clipboard function not available.")
    end
end

-- Example usage of clipboard function
CopyToClipboard("Welcome to Midnight Hub!")

-- Error handling
local function HandleError(errorMessage)
    warn("Error: " .. errorMessage)
    -- Additional error handling logic can be added here
end

-- Example of error handling in action
pcall(function()
    -- Simulate a potential error
    error("This is a simulated error for demonstration.")
end)

-- End of Midnight Hub Loader script ```lua
--[[
Midnight Hub Loader
This script is now open-source as of 11/21/2024.
Join our Discord: https://dsc.gg/midnighthub
--]]

-- Hook for translating Fluent to Midnight UI
local f2p
local function LoadFluentHook()
    local fluentWatermark = "--[[\r\n    Fluent Interface Suite\r\n    This script is not intended to be modified.\r\n    Author: dawid\r\n    License: MIT\r\n    GitHub: https://github.com/dawid-scripts/Fluent\r\n--]]"

    local originalLoadstring = loadstring
    loadstring = function(...)
        local scriptStr = ...
        if string.find(scriptStr, fluentWatermark, 1, true) then
            return f2p
        end
        return originalLoadstring(...)
    end
end

local GuiContainer
local ClipboardFunction = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set) or CopyString

local function LoadHub()
    -- Create loading screen
    local TweenService = game:GetService("TweenService")

    local LoaderGui = Instance.new("ScreenGui")
    LoaderGui.Parent = game.CoreGui
    LoaderGui.Name = "Loader"

    local LoaderBg = Instance.new("Frame")
    LoaderBg.Size = UDim2.fromOffset(400, 200)
    LoaderBg.Position = UDim2.fromScale(0.5, 0.5)
    LoaderBg.AnchorPoint = Vector2.new(0.5, 0.5)
    LoaderBg.BackgroundTransparency = 0.25
    LoaderBg.ClipsDescendants = true
    Instance.new("UICorner", LoaderBg)
    LoaderBg.Parent = LoaderGui

    local Gradient = Instance.new("UIGradient")
    Gradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0.5)),
        ColorSequenceKeypoint.new(1, Color3.new(0, 0.5, 0))
    })
    Gradient.Rotation = 90
    Gradient.Parent = LoaderBg

    local HubLogo = Instance.new("ImageLabel")
    HubLogo.Size = UDim2.fromOffset(100, 100)
    HubLogo.Image = "rbxassetid://16755289922"
    HubLogo.Position = UDim2.fromScale(0.5, 0.5)
    HubLogo.AnchorPoint = Vector2.new(0.5, 0.5)
    HubLogo.BackgroundTransparency = 1
    HubLogo.Parent = LoaderBg

    local HubText = Instance.new("TextLabel")
    HubText.Size = UDim2.fromScale(1, 1)
    HubText.Text = "<b>Midnight</b> Hub"
    HubText.RichText = true
    HubText.TextSize = 40
    HubText.Font = Enum.Font.Montserrat
    HubText.TextColor3 = Color3.new(1, 1, 1)
    HubText.Position = UDim2.fromScale(0.5, 0.5)
    HubText.AnchorPoint = Vector2.new(0.5, 0.5)
    HubText.BackgroundTransparency = 1
    HubText.TextTransparency = 1
    HubText.Parent = LoaderBg

    local TopLabel = Instance.new("TextLabel")
    TopLabel.Size = UDim2.new(1, 0, 0, 50)
    TopLabel.Text = "Loading..."
    TopLabel.TextSize = 14
    TopLabel.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Bold)
    TopLabel.TextColor3 = Color3.new(1, 1, 1)
    TopLabel.BackgroundTransparency = 1
    TopLabel.Parent = LoaderBg

    local BotLabel = Instance.new("TextLabel")
    BotLabel.Size = UDim2.new(1, 0, 0, 50)
    BotLabel.Position = UDim2.fromScale(0, 1)
    BotLabel.AnchorPoint = Vector2.yAxis
    BotLabel.Text = "Welcome to Midnight Hub!"
    BotLabel.TextSize = 14
    BotLabel.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Bold)
    BotLabel.TextColor3 = Color3.new(1,  ⬤
