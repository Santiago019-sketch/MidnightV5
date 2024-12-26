-- Midnight Hub Complete Script

local function loadMidnightHub()
    -- UI Setup
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Midnight Hub - Dragon Blox", "Midnight")
    
    -- Main Tab
    local MainTab = Window:NewTab("Main")
    local MainSection = MainTab:NewSection("Auto Farm")
    
    MainSection:NewToggle("Auto Farm", "Toggles auto farming", function(state)
        getgenv().autoFarm = state
        while getgenv().autoFarm do
            -- Auto farm logic
            local character = game.Players.LocalPlayer.Character
            if character then
                for _, mob in pairs(workspace.Living:GetChildren()) do
                    if mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                        character:MoveTo(mob.HumanoidRootPart.Position)
                        game:GetService("ReplicatedStorage").Events.Attack:FireServer()
                    end
                end
            end
            wait(0.1)
        end
    end)

    -- Dragon Balls Tab
    local DBTab = Window:NewTab("Dragon Balls")
    local DBSection = DBTab:NewSection("Auto Collect")
    
    DBSection:NewToggle("Auto Collect DBs", "Auto collects dragon balls", function(state)
        getgenv().autoDB = state
        while getgenv().autoDB do
            for _, db in pairs(workspace:GetChildren()) do
                if db.Name:match("Dragon Ball") then
                    game.Players.LocalPlayer.Character:MoveTo(db.Position)
                end
            end
            wait(1)
        end
    end)

    -- Skills Tab
    local SkillsTab = Window:NewTab("Skills")
    local SkillsSection = SkillsTab:NewSection("Auto Skills")
    
    SkillsSection:NewToggle("Auto Skills", "Automatically uses skills", function(state)
        getgenv().autoSkills = state
        while getgenv().autoSkills do
            local skills = {"Z", "X", "C", "V", "B", "N", "M"}
            for _, key in pairs(skills) do
                game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, key, false, game)
            end
            wait(1)
        end
    end)

    -- Teleports Tab
    local TeleportTab = Window:NewTab("Teleports")
    local TeleportSection = TeleportTab:NewSection("Locations")
    
    local locations = {
        ["Spawn"] = Vector3.new(0, 5, 0),
        ["Training Area"] = Vector3.new(100, 5, 100),
        ["Quest Area"] = Vector3.new(-100, 5, -100)
    }
    
    for locationName, position in pairs(locations) do
        TeleportSection:NewButton(locationName, "Teleport to " .. locationName, function()
            game.Players.LocalPlayer.Character:MoveTo(position)
        end)
    end

    -- Misc Tab
    local MiscTab = Window:NewTab("Misc")
    local MiscSection = MiscTab:NewSection("Player Mods")
    
    MiscSection:NewSlider("WalkSpeed", "Changes walk speed", 500, 16, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)
    
    MiscSection:NewSlider("JumpPower", "Changes jump power", 500, 50, function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)
    
    MiscSection:NewToggle("Instant Transmission", "Teleport to mouse position", function(state)
        getgenv().instantTransmission = state
        game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
            if getgenv().instantTransmission then
                local mouse = game.Players.LocalPlayer:GetMouse()
                game.Players.LocalPlayer.Character:MoveTo(mouse.Hit.p)
            end
        end)
    end)
end

loadMidnightHub()
