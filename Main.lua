--[[
Midnight Hub Loader
Released: 12/26/2024
Discord: https://dsc.gg/midnighthub
--]]

local TweenService = game:GetService("TweenService")
local ClipboardFunc = setclipboard or toclipboard or set_clipboard or Clipboard and Clipboard.set

-- Create loading screen
local function CreateLoader()
    local LoaderGui = Instance.new("ScreenGui")
    LoaderGui.Parent = game.CoreGui
    LoaderGui.Name = "MidnightLoader"
    
    local LoaderBg = Instance.new("Frame")
    LoaderBg.Size = UDim2.fromOffset(400, 200)
    LoaderBg.Position = UDim2.fromScale(0.5, 0.5)
    LoaderBg.AnchorPoint = Vector2.new(0.5, 0.5)
    LoaderBg.BackgroundTransparency = 0.25
    LoaderBg.ClipsDescendants = true
    Instance.new("UICorner", LoaderBg)
    LoaderBg.Parent = LoaderGui
    
    local NightGradient = Instance.new("UIGradient")
    NightGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 35)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 35, 50))
    })
    NightGradient.Rotation = 90
    NightGradient.Parent = LoaderBg
    
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
    
    local StatusLabel = Instance.new("TextLabel")
    StatusLabel.Size = UDim2.new(1, 0, 0, 50)
    StatusLabel.Text = "Loading..."
    StatusLabel.TextSize = 14
    StatusLabel.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Bold)
    StatusLabel.TextColor3 = Color3.new(1, 1, 1)
    StatusLabel.BackgroundTransparency = 1
    StatusLabel.Parent = LoaderBg
    
    local MessageLabel = Instance.new("TextLabel")
    MessageLabel.Size = UDim2.new(1, 0, 0, 50)
    MessageLabel.Position = UDim2.fromScale(0, 1)
    MessageLabel.AnchorPoint = Vector2.new(0, 1)
    MessageLabel.Text = ({
        "Welcome to the night...",
        "Loading components...",
        "Join our Discord! dsc.gg/midnighthub",
        "Initializing systems...",
        "Preparing your experience..."
    })[math.random(1, 5)]
    MessageLabel.TextSize = 14
    MessageLabel.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Bold)
    MessageLabel.TextColor3 = Color3.new(1, 1, 1)
    MessageLabel.BackgroundTransparency = 1
    MessageLabel.Parent = LoaderBg
    
    local ProgressContainer = Instance.new("Frame")
    ProgressContainer.BackgroundTransparency = 1
    ProgressContainer.Size = UDim2.new(1, 0, 0, 8)
    ProgressContainer.ClipsDescendants = true
    ProgressContainer.Parent = LoaderBg
    
    local ProgressBar = Instance.new("Frame")
    ProgressBar.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
    Instance.new("UICorner", ProgressBar)
    ProgressBar.Parent = ProgressContainer
    
    -- Animations
    TweenService:Create(HubLogo, TweenInfo.new(4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut, -1, true), 
        {ImageTransparency = 0.5}):Play()
    TweenService:Create(HubText, TweenInfo.new(4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut, -1, true), 
        {TextTransparency = 0.5}):Play()
        
    return {
        Gui = LoaderGui,
        Background = LoaderBg,
        Status = StatusLabel,
        Progress = ProgressBar
    }
end

-- Game-specific logic and UI loading
local function LoadHub()
    local loader = CreateLoader()
    
    -- Load game scripts based on PlaceId
    local gameScripts = game:HttpGet("https://raw.githubusercontent.com/yourusername/midnight-hub/main/games.json")
    local gameScript = gameScripts[tostring(game.PlaceId)]
    
    if gameScript then
        local success, err = pcall(function()
            loadstring(game:HttpGet(gameScript))()
        end)
        
        if not success then
            warn("Failed to load game script:", err)
        end
    end
    
    -- Clean up loader
    TweenService:Create(loader.Background, TweenInfo.new(1), {
        Size = UDim2.fromOffset(0, 200)
    }).Completed:Connect(function()
        loader.Gui:Destroy()
    end)
end

-- Initialize
local function Initialize()
    if not pcall(function()
        local test = Instance.new("ScreenGui")
        test.Parent = game:GetService("CoreGui")
        test:Destroy()
    end) then
        warn("No CoreGui access - trying PlayerGui")
        if not game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerGui") then
            warn("No PlayerGui access - cannot continue")
            return
        end
    end
    
    LoadHub()
end

Initialize()
