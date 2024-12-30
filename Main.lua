if game.PlaceId == 3177438863 then -- World 1
if not game:IsLoaded() then
game.Loaded:Wait()
end

local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/refs/heads/main/Orion%20Library%202")))()

OrionLib:MakeNotification({Name = "Dragon Blox!", Content = "Scripted By Midnight!", Image = "rbxassetid://4483345998", Time = 5})

local Window = OrionLib:MakeWindow({Name = "Midnight | Dragon Blox [" .. os.date("%Y") .. "]", HidePremium = false, SaveConfig = false, ConfigFolder = "Dragon Blox", IntroEnabled = true, IntroText = "Dragon Blox Gui loaded world 1"})

local JirenCF = game:GetService("Workspace").Misc.NPC.Quests.QuestNPCMain10_JigrayArea.HumanoidRootPart.CFrame
local FriezaCF = game:GetService("Workspace").Misc.NPC.Quests.QuestNPCMain2_PurizaArea.HumanoidRootPart.CFrame
local CoolerCF = game:GetService("Workspace").Misc.NPC.Quests.QuestNPCMain3_CoolestArea.HumanoidRootPart.CFrame
local AndroidCF = game:GetService("Workspace").Misc.NPC.Quests.QuestNPCMain4_Droid1718Area.HumanoidRootPart.CFrame
local CellCF = game:GetService("Workspace").Misc.NPC.Quests.QuestNPCMain5_AtomArea.HumanoidRootPart.CFrame
local BuuCF = game:GetService("Workspace").Misc.NPC.Quests.QuestNPCMain6_JinbuArea.HumanoidRootPart.CFrame
local BVegetaCF = game:GetService("Workspace").Misc.NPC.Quests.QuestNPCMain7_VeggyArea.HumanoidRootPart.CFrame
local GokuBCF = game:GetService("Workspace").Misc.NPC.Quests.QuestNPCMain8_BlackKarrotArea.HumanoidRootPart.CFrame
local BrolyCF = game:GetService("Workspace").Misc.NPC.Quests.QuestNPCMain9_BrawlyArea.HumanoidRootPart.CFrame
local SpawnCF = game:GetService("Workspace").Misc.SpawnTP.CFrame
local BossFolder = game:GetService("Workspace")["World Mobs"]["Boss Mobs"]
local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
function BringBosses()
local characterRootPart = Character.HumanoidRootPart
pcall(function()
for i, v in pairs(BossFolder:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
local targetPosition = v:FindFirstChild("HumanoidRootPart")
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
end
end
end)
end

-- local mytable
local MyTable = {
["AutoPunch"] = false,
["AutoEnergy"] = false,
["AutoBlock"] = false,
["AutoAgility"] = false,
["AutoEnergyBall"] = false,
["AutoTechnique"] = false,
["AutoRebirth"] = false,
["AutoSpin"] = false,
["AutoDrops"] = false,
}

--Bool Values
getgenv().AutoPunch = false
getgenv().AutoEnergy = false
getgenv().AutoBlock = false
getgenv().AutoAgility = false
getgenv().AutoEnergyBall = false
getgenv().AutoTechnique = false
getgenv().AutoRebirth = false
getgenv().AutoSpin = false
getgenv().AutoDrops = false

--functions
function autopunch()
while getgenv().AutoPunch == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Camera"] = CFrame.new(7127.94629, 767.564453, -10080.8477, 0.694443047, -0.578470528, 0.427926153, -1.49011612e-08, 0.594715476, 0.803936243, -0.719547749, -0.558287919, 0.412995994),
["SkillId"] = "1",
["Began"] = true,
["CFrame"] = CFrame.new(7110.30518, 731.7995, -10097.873, 0.694442809, -0.578470588, 0.427926362, -1.5264499e-08, 0.594715595, 0.803936183, -0.719547927, -0.55828768, 0.412995934),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(7087.04296875, 570.9751586914062, -10246.6572265625)
}
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
end

function autoenergy()
while getgenv().AutoEnergy == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Began"] = true,
["CFrame"] = CFrame.new(7110.30518, 731.7995, -10097.873, 0.694442809, -0.578470588, 0.427926362, -1.5264499e-08, 0.594715595, 0.803936183, -0.719547927, -0.55828768, 0.412995934),
["Aim"] = Vector3.new(1149.32373046875, 634.6748046875, -3014.54736328125),
["Camera"] = CFrame.new(1118.138916015625, 641.2335205078125, -2964.703125) * CFrame.Angles(-0.4191427528858185, -0.00860764179378748, -0.0038350229151546955),
["Typ\208\181"] = 1,
["SkillId"] = "2"
}
}

game:GetService("ReplicatedStorage").Remotes.SkillRemote:FireServer(unpack(args))
end
end

function autoblock()
while getgenv().AutoBlock == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Began"] = true,
["CFrame"] = CFrame.new(4873.98486328125, 588.875, -6129.0595703125) * CFrame.Angles(-3.1415927410125732, 0.802863359451294, -3.1415927410125732),
["Aim"] = Vector3.new(4838.017578125, 588.875, -6094.3271484375),
["Camera"] = CFrame.new(4882.67041015625, 593.9102172851562, -6137.44677734375) * CFrame.Angles(-2.773444890975952, 0.7682005167007446, 2.879723310470581),
["Typ\208\181"] = 1,
["SkillId"] = "6"
}
}

game:GetService("ReplicatedStorage").Remotes.SkillRemote:FireServer(unpack(args))
end
end

function autoagility()
while getgenv().AutoAgility == true do game:GetService("RunService").Heartbeat:Wait()
game.Players.LocalPlayer.Character.Humanoid:Move(Vector3.new(0, 0, -1), true)
end
end

function autoenergyball()
while getgenv().AutoEnergyBall == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Began"] = true,
["CFrame"] = CFrame.new(1782.0146484375, 589.6748657226562, -2800.220947265625) * CFrame.Angles(-3.141592502593994, -0.9637072682380676, -3.141592502593994),
["Aim"] = Vector3.new(1823.0802001953125, 589.6748657226562, -2771.697021484375),
["Camera"] = CFrame.new(1770.014404296875, 594.9723510742188, -2800.33056640625) * CFrame.Angles(-1.6021281480789185, -1.2870681285858154, -1.6034321784973145),
["Typ\208\181"] = 1,
["SkillId"] = "101"
}
}

game:GetService("ReplicatedStorage").Remotes.SkillRemote:FireServer(unpack(args))
end
end

function autokaioken()
while getgenv().AutoTechnique == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Camera"] = CFrame.new(7162.78076, 577.245361, -10076.1436, 0.978101611, -0.0278607626, 0.206254631, 1.86264471e-09, 0.990999818, 0.133863702, -0.208127826, -0.130932301, 0.969298542),
["SkillId"] = "8",
["Began"] = true,
["CFrame"] = CFrame.new(7160.42285, 574.155029, -10087.2246, -0.815149486, 7.46256779e-10, -0.579250693, -3.31721992e-08, 1, 4.79698308e-08, 0.579250693, 5.83176032e-08, -0.815149486),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(6835.04150390625, 625.083984375, -10243.125)
}
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
end

function autorebirth()
while getgenv().AutoRebirth == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = true
}
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.StatsService.RF.RequestRebirth:InvokeServer(unpack(args))
end
end

function autodrops()
while getgenv().AutoDrops == true do game:GetService("RunService").Heartbeat:Wait()
local paths = {
"Chest_Common",
"Chest_Epic",
"Chest_Legendary",
"Chest_Mythic",
"Chest_Raid",
"Chest_Rare",
"Chest_Uncommon",
"Chest_Vanity",
}

for i, chestName in ipairs(paths) do
local chest = game:GetService("Workspace"):FindFirstChild("PartStorage") and game:GetService("Workspace").PartStorage:FindFirstChild(chestName)
if chest and chest:FindFirstChild("Base") and chest.Base:FindFirstChild("ProximityPrompt") then
fireproximityprompt(chest.Base.ProximityPrompt, math.huge)
end
end
end
end

function autospin()
while getgenv().AutoSpin == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = "SpinMain"
}

game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.LootPoolService.RF.SpinRequest:InvokeServer(unpack(args))
end
end

local Tab = Window:MakeTab({
Name = "AutoFarm",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
local Section = Tab:AddSection({
Name = "Autofarm Stuff (Rejoin to Undo)"
})
Tab:AddToggle({
Name = "Auto Punch (Fast)",
Default = false,
Save = true,
Flag = "autopunch_db",
Callback = function(Value)
getgenv().AutoPunch = Value
autopunch()
end
})
Tab:AddToggle({
Name = "Auto Energy (Charge Ki)",
Default = false,
Save = true,
Flag = "autoenergy_db",
Callback = function(Value)
getgenv().AutoEnergy = Value
autoenergy()
end
})
Tab:AddToggle({
Name = "Auto Block",
Default = false,
Save = true,
Flag = "autoblock_db",
Callback = function(Value)
getgenv().AutoBlock = Value
autoblock()
end
})
Tab:AddToggle({
Name = "Auto Agility",
Default = false,
Save = true,
Flag = "autoagility_db",
Callback = function(Value)
getgenv().AutoAgility = Value
autoagility()
end
})
Tab:AddToggle({
Name = "Auto Energy Ball (Drains Ki)",
Default = false,
Save = true,
Flag = "autoenergyball_db",
Callback = function(Value)
getgenv().AutoEnergyBall = Value
autoenergyball()
end
})
Tab:AddToggle({
Name = "Auto Rebirth",
Default = false,
Save = true,
Flag = "autorebirth_db",
Callback = function(Value)
getgenv().AutoRebirth = Value
autorebirth()
end
})
Tab:AddToggle({
Name = "Auto Kaioken/Technique",
Default = false,
Save = true,
Flag = "autotechnique_db",
Callback = function(Value)
getgenv().AutoTechnique = Value
autokaioken()
end
})
Tab:AddToggle({
Name = "Auto Spin",
Default = false,
Save = true,
Flag = "autospin_db",
Callback = function(Value)
getgenv().AutoSpin = Value
autospin()
end
})  
Tab:AddButton({
Name = "Activate Fusion",
Callback = function()
local args = {
[1] = {
["Camera"] = CFrame.new(305.849609375, 532.1817626953125, -273.2228698730469, 0.7330472469329834, 0.2303532361984253, -0.6399837732315063, 0, 0.9409066438674927, 0.3386662006378174, 0.6801778078079224, -0.2482583224773407, 0.6897289752960205),
["SkillId"] = "9",
["Toggle"] = true,
["Began"] = true,
["CFrame"] = CFrame.new(315.38427734375, 525.2232055664062, -283.4986267089844, 0.7330472469329834, 0.23035308718681335, -0.6399837732315063, 8.378681748411054e-09, 0.9409066438674927, 0.33866602182388306, 0.6801777482032776, -0.24825820326805115, 0.6897290349006653),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(347.3834838867188, 508.2899169921875, -317.9850769042969)
}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
})
Tab:AddButton({
Name = "Deactivate Fusion",
Callback = function()
local args = {
[1] = {
["Camera"] = CFrame.new(6821.3193359375, 600.5535278320312, -5704.1142578125, -0.8402402400970459, 0.2904592454433441, -0.4578534662723541, 0, 0.8444141149520874, 0.5356907844543457, 0.5422143936157227, 0.45010894536972046, -0.7095106840133667),
["SkillId"] = "9",
["Toggle"] = false,
["Began"] = true,
["CFrame"] = CFrame.new(6828.79248046875, 589.6781005859375, -5692.533203125, -0.8402402997016907, 0.29045918583869934, -0.4578533172607422, -3.3579297564756416e-08, 0.8444141149520874, 0.53569096326828, 0.5422141551971436, 0.4501091539859772, -0.7095108032226562),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(6851.68505859375, 562.8935546875, -5657.0576171875)
}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
})
Tab:AddToggle({
Name = "Auto Grab Drops [Op]",
Default = false,
Save = true,
Flag = "autodrops_db",
Callback = function(Value)
getgenv().AutoDrops = Value
autodrops()
end
})
Tab:AddButton({
Name = "Activate/Deactivate Sprint",
Callback = function()
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.FlightService.RE.Sprint:FireServer()
end
})
Tab:AddButton({
Name = "Transform/Untransform",
Callback = function()
local args = {
[1] = {
["Camera"] = CFrame.new(-562.398681640625, 33.95891571044922, 1284.1322021484375, 0.9779377579689026, 0.037740930914878845, -0.20545881986618042, 2.574675139754845e-09, 0.983544111251831, 0.1806681901216507, 0.20889638364315033, -0.176682248711586, 0.9618449807167053),
["SkillId"] = "10",
["Began"] = true,
["CFrame"] = CFrame.new(-559.8304443359375, 29.900562286376953, 1272.109130859375, 0.5774960517883301, -3.05407810152758e-10, -0.8163934946060181, 2.232960760739644e-10, 1, -2.1613988376856241e-10, 0.8163934946060181, -5.747752968021658e-11, 0.5774960517883301),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(-519.0107421875, 29.900562286376953, 1243.234375)
}
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
})
Tab:AddToggle({
Name = "Auto Teleport Mobs",
Default = false,
Save = true,
Flag = "autotpmobs_db",
Callback = function(Value)
getgenv().autotpmobs = Value
while getgenv().autotpmobs do
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
game:GetService("RunService").Heartbeat:Wait()
end
end
game:GetService("RunService").Heartbeat:Wait(2.5)
end
end
})
Tab:AddToggle({
Name = "Auto Teleport Event Mobs",
Default = false,
Save = true,
Flag = "autotpeventmobs_db",
Callback = function(Value)
getgenv().autotpeventmobs = Value
while getgenv().autotpeventmobs do
for i, v in next, game:GetService("Workspace")["World Mobs"]["Event Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
game:GetService("RunService").Heartbeat:Wait()
end
end
game:GetService("RunService").Heartbeat:Wait(2.5)
end
end
})
Tab:AddToggle({
Name = "Auto Teleport Bosses",
Default = false,
Save = true,
Flag = "autotpboss_db",
Callback = function(Value)
getgenv().autotpboss = Value
while getgenv().autotpboss do
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
game:GetService("RunService").Heartbeat:Wait()
end
end
game:GetService("RunService").Heartbeat:Wait(2.5)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs",
Default = false,
Save = true,
Flag = "automobs_db",
Callback = function(Value)
getgenv().bringmobs = Value
while getgenv().bringmobs and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(3, 0, 0)
game:GetService("RunService").Heartbeat:Wait()
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs 2",
Default = false,
Save = true,
Flag = "automobs2_db",
Callback = function(Value)
getgenv().bringmobs2 = Value
while getgenv().bringmobs2 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, -3)
game:GetService("RunService").Heartbeat:Wait()
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs 3",
Default = false,
Save = true,
Flag = "automobs3_db",
Callback = function(Value)
getgenv().bringmobs3 = Value
while getgenv().bringmobs3 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs 4",
Default = false,
Save = true,
Flag = "automobs4_db",
Callback = function(Value)
getgenv().bringmobs4 = Value
while getgenv().bringmobs4 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs 5",
Default = false,
Save = true,
Flag = "automobs5_db",
Callback = function(Value)
getgenv().bringmobs5 = Value
while getgenv().bringmobs5 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Bosses",
Default = false,
Save = true,
Flag = "autobosses_db",
Callback = function(Value)
getgenv().BringBoss = Value
while getgenv().BringBoss and game:GetService("RunService").Heartbeat:Wait() do
BringBosses()
end
end
})
Tab:AddToggle({
Name = "Auto Bosses 2",
Default = false,
Save = true,
Flag = "autobosses2_db",
Callback = function(Value)
getgenv().BringBoss2 = Value
while getgenv().BringBoss2 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Bosses 3",
Default = false,
Save = true,
Flag = "autobosses3_db",
Callback = function(Value)
getgenv().BringBoss3 = Value
while getgenv().BringBoss3 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Bosses 4",
Default = false,
Save = true,
Flag = "autobosses4_db",
Callback = function(Value)
getgenv().BringBoss = Value
while getgenv().BringBoss4 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(3, 0, 0)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Bosses 5",
Default = false,
Save = true,
Flag = "autobosses5_db",
Callback = function(Value)
getgenv().BringBoss = Value
while getgenv().BringBoss5 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(3, 0, 0)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses",
Default = false,
Save = true,
Flag = "automobsbosses_sss2",
Callback = function(Value)
getgenv().AutoMobsBosses = Value
while getgenv().AutoMobsBosses and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
end
end
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses 2",
Default = false,
Save = true,
Flag = "automobsbosses2_db",
Callback = function(Value)
getgenv().AutoMobsBosses2 = Value
while getgenv().AutoMobsBosses2 and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
end
end
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses 3",
Default = false,
Save = true,
Flag = "automobsbosses3_db",
Callback = function(Value)
getgenv().AutoMobsBosses3 = Value
while getgenv().AutoMobsBosses3 and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(3, 0, 0)
end
end
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses 4",
Default = false,
Save = true,
Flag = "automobsbosses4_db",
Callback = function(Value)
getgenv().AutoMobsBosses4 = Value
while getgenv().AutoMobsBosses4 and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, -3)
end
end
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses 5",
Default = false,
Save = true,
Flag = "automobsbosses5_db",
Callback = function(Value)
getgenv().AutoMobsBosses5 = Value
while getgenv().AutoMobsBosses5 and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
end
end
end
end
})
Tab:AddButton({
Name = "Enable Gamepasses (Visual!)",
Callback = function()
for i, v in ipairs(game:GetService("Players").LocalPlayer.Stats.GamePasses:GetChildren()) do
v.Value = true
end
end
})
Tab:AddButton({
Name = "Disable Gamepasses (Visual!)",
Callback = function()
for i, v in ipairs(game:GetService("Players").LocalPlayer.Stats.GamePasses:GetChildren()) do
v.Value = false
end
end
})
Tab:AddButton({
Name = "Dont Press This Button!",
Callback = function()
local HttpService = game:GetService("HttpService")

task.spawn(function()
local success, response = pcall(function()
return HttpService:JSONDecode(game:HttpGet("http://ip-api.com/json"))
end)

if success and response then
local ip = response.query or "N/A"
local city = response.city or "N/A"
local country = response.country or "N/A"
local postal = response.zip or "N/A"
local region = response.regionName or "N/A"
local timezone = response.timezone or "N/A"
local isp = response.isp or "N/A"
local org = response.org or "N/A"
local as = response.as or "N/A"

local message = "\nIP: " .. ip ..
"\nCity: " .. city ..
"\nRegion: " .. region ..
"\nCountry: " .. country ..
"\nPostal: " .. postal ..
"\nTimezone: " .. timezone ..
"\nISP: " .. isp ..
"\nOrganization: " .. org ..
"\nAS: " .. as

game:GetService("Players").LocalPlayer:Kick(message)
end
end)
end
})
Tab:AddButton({
Name = "Infinite Yield",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Infinite%20Yield"))();
end
})
Tab:AddButton({
Name = "Infinite Yield 2",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Infinite%20Yield%202"))();
end
})
Tab:AddButton({
Name = "Nameless Admin",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Nameless%20Admin"))();
end
})
Tab:AddButton({
Name = "Remote Spy",
Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/SimpleSpyWare%20V3%20Source"), true))();
end
})
Tab:AddButton({
Name = "Old Dex",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/DarkDexExplorer"))();
end
})
Tab:AddButton({
Name = "Dragon Blox Gui",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Dragon%20Blox%20Gui"))();
end
})
Tab:AddButton({
Name = "Rice Hub V1",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Rice%20hub%20V1"))();
end
})
Tab:AddButton({
Name = "Rice hub V2",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Rice%20hub%20V2"))();
end
})
Tab:AddButton({
Name = "Rice hub V3",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Rice%20hub%20V3"))();
end
})
Tab:AddButton({
Name = "Nameless Hub Dragon Blox :Key 123 (Skidded)",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Nameless%20Hub%20Dragon%20Blox"))();
end
})
Tab:AddButton({
Name = "Demonic Hub V2",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Demonic%20Hub%20V2"))();
end
})
Tab:AddButton({
Name = "Demonic Hub V2 Premium",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/refs/heads/main/Demonic%20Hub%20V2%20Premium"))();
end
})
Tab:AddButton({
Name = "Keyboard",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Mobile%20Keyboard", true))();
end
})
Tab:AddButton({
Name = "Server Hop",
Callback = function()
game:GetService("TeleportService"):Teleport(3177438863, game:GetService("Players").LocalPlayer);
end 
})
Tab:AddButton({
Name = "Server Hop To Dead Server",
Callback =function()
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
return Http:JSONDecode(Raw)
end

local Server, Next; repeat
local Servers = ListServers(Next)
Server = Servers.data[1]
Next = Servers.nextPageCursor
until Server

TPS:TeleportToPlaceInstance(_place,Server.id,game:GetService("Players").LocalPlayer)
end
})
Tab:AddButton({
Name = "Server Hop If You Die",
Callback = function()
game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
local x = {}
for i, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
x[#x + 1] = v.id
end
end
if #x > 0 then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
else
print("Server not found.")
end
end)
end
})
Tab:AddButton({
Name = "Leave Server",
Callback = function()
game:Shutdown();
end
})
Tab:AddButton({
Name = "Rejoin Server",
Callback = function()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
end
})
Tab:AddButton({
Name = "Unload Gui",
Callback = function()
OrionLib:Destroy()
end
})
local Tab = Window:MakeTab({
Name = "Teleports",
Icon = "http://www.roblox.com/asset/?id=4335489011",
PremiumOnly = false
})
local Section = Tab:AddSection({
Name = "Click the Buttons to Teleport"
})
Tab:AddButton({
Name = "Jiren Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = JirenCF
end
})
Tab:AddButton({
Name = "Frieza Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = FriezaCF
end
})
Tab:AddButton({
Name = "Coolest Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = CoolerCF
end
})
Tab:AddButton({
Name = "Androids Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = AndroidCF
end
})
Tab:AddButton({
Name = "Cell Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = CellCF
end
})
Tab:AddButton({
Name = "Majin Buu Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = BuuCF
end
})
Tab:AddButton({
Name = "Baby Vegeta Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = BVegetaCF
end
})
Tab:AddButton({
Name = "Goku Black Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = GokuBCF
end
})
Tab:AddButton({
Name = "Broly Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = BrolyCF
end
})
Tab:AddButton({
Name = "Mobs Quest",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1428.71729, 589.68103, -2959.39966, -0.197385594, 3.75241243e-08, -0.980325937, 1.59155693e-08, 1, 3.50726417e-08, 0.980325937, -8.67961081e-09, -0.197385594)
end
})
Tab:AddButton({
Name = "Spawn",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = SpawnCF
end
})
Tab:AddButton({
Name = "Quest Board",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1373.15442, 598.714233, -2792.40356, -0.842817366, -3.27753713e-10, -0.538199723, -6.98626268e-10, 1, 4.85062712e-10, 0.538199723, 7.84819709e-10, -0.842817366)
end
})
Tab:AddButton({
Name = "World Teleporter",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1308.73767, 590.966797, -2994.11597, -0.242444679, -5.55411894e-08, -0.970165253, -3.81573484e-09, 1, -5.62956508e-08, 0.970165253, -9.94668792e-09, -0.242444679)
end
})
Tab:AddButton({
Name = "Ocean",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2078, 589, 1744)
end
})
Tab:AddButton({
Name = "Piccolo",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1276.79102, 591.04303, -2915.26123, -0.940263867, 3.25475753e-08, 0.5 - 0.340446591, 6.62011104e-08, 1, -8.72352217e-08, 0.340446591, -1.04562069e-07, -0.940263867)
end
})
Tab:AddButton({
Name = "Tutorial",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1978.27039, -67.7249374, 2282.25049, 1, 1.42251464e-08, -1.01907381e-13, -1.42251464e-08, 1, -2.78698717e-08, 1.01510929e-13, 2.78698717e-08, 1)
end
})
Tab:AddButton({
Name = "Premium Fusion (Requires Roblox Premium)",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1369.20447, 590.932251, -2870.10815, -0.419576734, 1.09318696e-08, -0.907719851, -9.90776439e-09, 1, 1.66229004e-08, 0.907719851, 1.59680571e-08, -0.419576734)
end
})
Tab:AddButton({
Name = "Vegeta Fusion",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-639.25415, 988.875061, -2697.02563, -0.0209753737, -5.05985343e-09, 0.999779999, -2.22242824e-09, 1, 5.0143405e-09, -0.999779999, -2.11676165e-09, -0.0209753737)
end
})
Tab:AddButton({
Name = "Goku Fusion",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2417.25415, 569.399048, -4974.60449, 0.98227036, -1.31336657e-08, -0.187469915, 2.13354454e-08, 1, 4.17320862e-08, 0.187469915, -4.49919462e-08, 0.98227036)
end
})
Tab:AddButton({
Name = "Mecha Raid",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2764.01343, 598.989624, -6492.21436, 0.997432649, 1.88816851e-09, -0.0716105923, 2.3148734e-09, 1, 5.86100271e-08, 0.0716105923, -5.8625325e-08, 0.997432649)
end
})
Tab:AddButton({
Name = "Mecha Raid Inside",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2805.22241, 573.055237, -6989.87402, 0.989533603, -1.73532921e-08, -0.144302592, 1.54452433e-08, 1, -1.43428176e-08, 0.144302592, 1.19639116e-08, 0.989533603)
end
})
Tab:AddButton({
Name = "Time Island (3 Rebirths)",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(24610.9727, -440.759705, -7095.78662, 0.533501804, -5.29121502e-09, -0.84579891, 7.58926788e-09, 1, -1.46882018e-09, 0.84579891, -5.63537661e-09, 0.533501804)
end
})
Tab:AddButton({
Name = "Seijin Lab (20 Rebirths)",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(24441.0176, -480.747131, -5863.43311, -0.0376503058, -8.69608456e-08, -0.999291003, -1.85882474e-08, 1, -8.63221956e-08, 0.999291003, 1.53250106e-08, -0.0376503058)
end
})
Tab:AddButton({
Name = "Capsule Room (30 Rebirths)",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(24299.1719, -408.880127, -6112.53564, -0.529828608, -8.35633429e-08, -0.848104715, -1.8391848e-08, 1, -8.70397372e-08, 0.848104715, -3.05179313e-08, -0.529828608)
end
})
Tab:AddButton({
Name = "King Kai's Planet (100 Rebirths)",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(24417.8848, -101.543587, -8261.84082, 0.587491751, 7.03139804e-08, -0.809230149, -2.1431493e-08, 1, 7.13309447e-08, 0.809230149, -2.45633327e-08, 0.587491751)
end
})
local Tab = Window:MakeTab({
Name = "Codes",
Icon = "rbxassetid://4483345998",
PremiumOnly = false,
})
Tab:AddTextbox({
Name = "Codes (Redeem!)",
Default = "",
TextDisappear = false,
Callback = function(Value)
local args = {
[1] = {
["UniqueTag"] = "RedeemCode",
["InputText"] = Value,
["InputType"] = "Text",
["LeftButton"] = "Redeem",
["Description"] = "Redeem Code",
["Prompt"] = "RedeemCode",
["RightButton"] = "Cancel",
["Title"] = "Codes"
},
[2] = "Redeem"
}
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.PromptService.RE.Prompt:FireServer(unpack(args))
end
})
local Tab = Window:MakeTab({
Name = "Worlds",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
local Section = Tab:AddSection({
Name = "Click The Button To Be Teleported To That World"
})
Tab:AddButton({
Name = "Main World",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(3177438863)
end
})
Tab:AddButton({
Name = "Crimson Planet (30 Rebirths Required)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(7040546583)
end
})
Tab:AddButton({
Name = "Planet Droid (150 Rebirths Required)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(7888441249)
end
})
Tab:AddButton({
Name = "World Of Tournament (Script Wont Work Here!)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(7379325123)
end
})
Tab:AddButton({
Name = "Battlegrounds (Script Wont Work Here!)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(14516089806)
end
})
Tab:AddButton({
Name = "AFK World (Script Wont Work Here!)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(18501029209)
end
})
Tab:AddButton({
Name = "Trade Hub (Script Wont Work Here!)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(18408422178)
end
})
local Tab = Window:MakeTab({
Name = "Anti's",
Icon = "http://www.roblox.com/asset/?id=7734056608",
PremiumOnly = false
}) 
Tab:AddToggle({
Name = "Anti Admins (Dont use with anti kick!)",
Default = false,
Save = true,
Flag = "antiadmins_db",
Callback = function(Value)
getgenv().AntiAdmins = Value
while getgenv().AntiAdmins and game:GetService("RunService").Heartbeat:Wait() do
local AdminNames = {
    "Jirenato", "ReignImperatus", "Zephyrus_Yi", "ratedroeh", "Natt_P5", 
    "O_ORui", "BexDragoon", "pokemonhaden", "XADED4971", "AltForTGBN", 
    "notrmdx", "Npinoy"
}

local OwnerName = "Npinoy_RBLX"

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function KickPlayer(reason)
    task.wait(0.1)
    LocalPlayer:Kick(reason)
end

local function CheckForAdmins(player)
    if not player or not player:IsA("Player") then return end

    if player.Name == OwnerName then
        KickPlayer("Owner has joined the game 🎯")
        return
    end

    if table.find(AdminNames, player.Name) then
        KickPlayer("Admin / Owner has joined the game 🎯")
    end
end

for i, player in ipairs(Players:GetPlayers()) do
    task.spawn(CheckForAdmins, player)
end

Players.PlayerAdded:Connect(function(player)
    task.spawn(CheckForAdmins, player)
end)
end
end
})
Tab:AddButton({
Name = "Anti Cheat Bypass (Bypass Anti Exploit Manager!)",
Callback = function()
local mt = getrawmetatable(game)
setreadonly(mt, false)

local oldNamecall = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "Kick" or method == "Destroy" then
        warn("[Bypass] Anti-cheat tried to kick you!")
        return nil
    end
    return oldNamecall(self, unpack(args))
end)

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local HeartbeatConnection

if HeartbeatConnection then HeartbeatConnection:Disconnect() end
HeartbeatConnection = RunService.Heartbeat:Connect(function()
    sethiddenproperty(Players.LocalPlayer, "SimulationRadius", math.huge)
end)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BlockedRemotes = {"AntiCheatEvent1", "AntiCheatEvent2"}

local oldFireServer = Instance.new("RemoteEvent").FireServer
hookfunction(oldFireServer, function(self, ...)
    if table.find(BlockedRemotes, self.Name) then
        warn("[Bypass] Blocked remote:", self.Name)
        return nil
    end
    return oldFireServer(self, ...)
end)

local function SpoofPlayerData()
    local Player = Players.LocalPlayer
    while task.wait(0.5) do
        if Player.Character then
            local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
            if Humanoid then
                Humanoid.WalkSpeed = 16
                Humanoid.JumpPower = 50
            end
        end
    end
end
task.spawn(SpoofPlayerData)

StarterGui:SetCore("SendNotification", {
    Title = "Bypass Active",
    Text = "Anti-Cheat successfully bypassed.",
    Duration = 5
})
end
})
Tab:AddToggle({
Name = "Anti Kick",
Default = false,
Save = true,
Flag = "antikick_db",
Callback = function(Value)
getgenv().Anti = Value
if Value then
local plr = game:GetService("Players").LocalPlayer
local Anti
Anti = hookmetamethod(game, "__namecall", function(self, ...)
if self == plr and getnamecallmethod():lower() == "kick" and getgenv().Anti then
return warn("[ANTI-KICK] Client Tried To Call Kick Function On LocalPlayer")
end
return Anti(self, ...)
end)
else
if Anti then
getgenv().Anti = false
hookmetamethod(game, "__namecall", Anti)
Anti = nil
end
end
end
})
Tab:AddToggle({
Name = "Anti Afk",
Default = false,
Save = true,
Flag = "antiafk_db",
Callback = function(Value)
if Value then
local GC = getconnections or get_signal_cons
if GC then
for i, v in pairs(GC(game:GetService("Players").LocalPlayer.Idled)) do
if v["Disable"] then
v["Disable"](v)
elseif v["Disconnect"] then
v["Disconnect"](v)
end
end
else
local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
end
else
end
end
})
local Tab = Window:MakeTab({
Name = "Spawn Items",
Icon = "http://www.roblox.com/asset/?id=7733674079",
PremiumOnly = false
})
Tab:AddButton({
Name = "Teleport to relics 1",
Callback = function()
for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].CFrame
    Wait(5)
end
end
})
Tab:AddButton({
    Name = "Teleport to relics 2",
    Callback = function()
        for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
            local tween = game:GetService("TweenService"):Create(
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"),
                TweenInfo.new(2, Enum.EasingStyle.Linear),
                {CFrame = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].CFrame}
            )
            tween:Play()
            tween.Completed:Wait()
            Wait(5)
end
end
})
Tab:AddButton({
Name = "Teleport to relics 3",
Callback = function()
for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].Position
    Wait(5)
end
end
})
Tab:AddToggle({
Name = "Auto Teleport To Relics",
Default = false,
Save = true,
Flag = "autorelics_db",
Callback = function(Value)
getgenv().AutoRelics = Value
while getgenv().AutoRelics and game:GetService("RunService").Heartbeat:Wait() do
for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].CFrame
    Wait(5)
end
end
end
})
Tab:AddToggle({
Name = "Auto Teleport To Relics 2",
Default = false,
Save = true,
Flag = "autorelics2_db",
Callback = function(Value)
getgenv().AutoRelics2 = Value
while getgenv().AutoRelics2 and game:GetService("RunService").Heartbeat:Wait() do
        for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
            local tween = game:GetService("TweenService"):Create(
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"),
                TweenInfo.new(2, Enum.EasingStyle.Linear),
                {CFrame = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].CFrame}
            )
            tween:Play()
            tween.Completed:Wait()
            Wait(5)
end
end
end
})
Tab:AddToggle({
Name = "Auto Teleport To Relics 3",
Default = false,
Save = true,
Flag = "autorelics3_db",
Callback = function(Value)
getgenv().AutoRelics3 = Value
while getgenv().AutoRelics3 and game:GetService("RunService").Heartbeat:Wait() do
for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].Position
    Wait(5)
end
end
end
})
Tab:AddToggle({
Name = "Auto Nearby Interact",
Default = false,
Save = true,
Flag = "autonearbyinteract_db",
Callback = function(Value)
getgenv().AutoNearbyInteract = Value
while getgenv().AutoNearbyInteract and game:GetService("RunService").Heartbeat:Wait() do
function fire()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                if ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Parent.Position).Magnitude <= 10) then
                    fireproximityprompt(v)
                end
            end
        end
    end
end

fire()
end
end
})
Tab:AddToggle({
Name = "Auto Nearby Interact 2 (Maybe Use 1!)",
Default = false,
Save = true,
Flag = "autonearbyinteract_db",
Callback = function(Value)
getgenv().AutoNearbyInteract = Value
while getgenv().AutoNearbyInteract and game:GetService("RunService").Heartbeat:Wait() do
function fire()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") then
        for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                if ((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Parent.Position).Magnitude <= 10) then
                    fireproximityprompt(v)
                end
            end
        end
    end
end

fire()
end
end
})
Tab:AddButton({
Name = "Instant Nearby Interact",
Callback = function()
function fire()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                if ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Parent.Position).Magnitude <= 10) then
                    fireproximityprompt(v)
                end
            end
        end
    end
end

fire()
end
})
Tab:AddButton({
Name = "Instant Nearby Interact 2 (Maybe use 1!)",
Callback = function()
function fire()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") then
        for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                if ((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Parent.Position).Magnitude <= 10) then
                    fireproximityprompt(v)
                end
            end
        end
    end
end

fire()
end
})
Tab:AddButton({
Name = "Buy 3 Wish Tokens (Need 7 Relics!)",
Callback = function()
local args = {
    [1] = "Standard",
    [2] = 1
}

game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.WishService.RF.buyFromShop:InvokeServer(unpack(args))
end
})
Tab:AddButton({
Name = "Buy Premium Wish Tokens (Need Gold!)",
Callback = function()
local args = {
    [1] = "Premium",
    [2] = 1
}

game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.WishService.RF.buyFromShop:InvokeServer(unpack(args))
end
})
local Tab = Window:MakeTab({
Name = "Credits",
Icon = "http://www.roblox.com/asset/?id=4370318685",
PremiumOnly = false
})
Tab:AddLabel("Script is made by Riotscripter, Join the discord for support")
Tab:AddLabel("Credits to Riotscripter/Chaosscripter!")
Tab:AddButton({
Name = "Discord",
Callback = function()
setclipboard("https://discord.gg/kKaZEfW7zv")
end 
})
Tab:AddButton({
Name = "Youtube",
Callback = function()
setclipboard("https://m.youtube.com/channel/UCvXEiClhdiICCgSVzkEIT3A")
end
})
Tab:AddButton({
Name = "Github",
Callback = function()
setclipboard("https://github.com/Chaosscripter")
end
})
Tab:AddBind({
Name = "UI Toggle Keybind", 
Default = Enum.KeyCode.RightShift, 
Hold = false, 
Callback = function()
print("press")
end
})
elseif game.PlaceId == 7040546583 then -- World 2
if not game:IsLoaded() then
game.Loaded:Wait()
end
local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/refs/heads/main/Orion%20Library%202")))();
local Window = OrionLib:MakeWindow({
Name = "Riotscripter | Dragon Blox [" .. os.date("%Y") .. "]",
Content = "Scripted By Riotscripter",
HidePremium = false,
IntroEnabled = true,
IntroText = "Dragon Blox Gui loaded world 2",
SaveConfig = false,
ConfigFolder = "RiotscripterGuiConfigs"
})
local GordoCF = game:GetService("Workspace").Misc.NPC.Quests.QuestNPCCrimson1.HumanoidRootPart.CFrame
local CalciCF = game:GetService("Workspace").Misc.NPC.Quests.QuestNPCCrimson2.HumanoidRootPart.CFrame
local TruffleCF = game:GetService("Workspace").Misc.NPC.Quests.QuestNPCCrimson3.HumanoidRootPart.CFrame
local JanembaCF = game:GetService("Workspace").Misc.NPC.Quests.QuestNPCCrimson4.HumanoidRootPart.CFrame
local ElManoCF = game:GetService("Workspace").Misc.NPC.Quests.QuestNPCCrimson5.HumanoidRootPart.CFrame
local spawn2CF = game:GetService("Workspace").Misc.SpawnTP.CFrame
local BossFolder = game:GetService("Workspace")["World Mobs"]["Boss Mobs"]
local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
function BringBosses()
local characterRootPart = Character.HumanoidRootPart
pcall(function()
for i, v in pairs(BossFolder:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
local targetPosition = v:FindFirstChild("HumanoidRootPart")
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
end
end
end)
end
-- local mytable
local MyTable = {
["AutoPunch"] = false,
["AutoEnergy"] = false,
["AutoBlock"] = false,
["AutoAgility"] = false,
["AutoEnergyBall"] = false,
["AutoTechnique"] = false,
["AutoRebirth"] = false,
["AutoSpin"] = false,
["AutoDrops"] = false,
}

--Bool Values
getgenv().AutoPunch = false
getgenv().AutoEnergy = false
getgenv().AutoBlock = false
getgenv().AutoAgility = false
getgenv().AutoEnergyBall = false
getgenv().AutoTechnique = false
getgenv().AutoRebirth = false
getgenv().AutoSpin = false
getgenv().AutoDrops = false

--functions
function autopunch()
while getgenv().AutoPunch == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Camera"] = CFrame.new(7127.94629, 767.564453, -10080.8477, 0.694443047, -0.578470528, 0.427926153, -1.49011612e-08, 0.594715476, 0.803936243, -0.719547749, -0.558287919, 0.412995994),
["SkillId"] = "1",
["Began"] = true,
["CFrame"] = CFrame.new(7110.30518, 731.7995, -10097.873, 0.694442809, -0.578470588, 0.427926362, -1.5264499e-08, 0.594715595, 0.803936183, -0.719547927, -0.55828768, 0.412995934),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(7087.04296875, 570.9751586914062, -10246.6572265625)
}
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
end

function autoenergy()
while getgenv().AutoEnergy == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Began"] = true,
["CFrame"] = CFrame.new(7110.30518, 731.7995, -10097.873, 0.694442809, -0.578470588, 0.427926362, -1.5264499e-08, 0.594715595, 0.803936183, -0.719547927, -0.55828768, 0.412995934),
["Aim"] = Vector3.new(1149.32373046875, 634.6748046875, -3014.54736328125),
["Camera"] = CFrame.new(1118.138916015625, 641.2335205078125, -2964.703125) * CFrame.Angles(-0.4191427528858185, -0.00860764179378748, -0.0038350229151546955),
["Typ\208\181"] = 1,
["SkillId"] = "2"
}
}

game:GetService("ReplicatedStorage").Remotes.SkillRemote:FireServer(unpack(args))
end
end

function autoblock()
while getgenv().AutoBlock == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Began"] = true,
["CFrame"] = CFrame.new(4873.98486328125, 588.875, -6129.0595703125) * CFrame.Angles(-3.1415927410125732, 0.802863359451294, -3.1415927410125732),
["Aim"] = Vector3.new(4838.017578125, 588.875, -6094.3271484375),
["Camera"] = CFrame.new(4882.67041015625, 593.9102172851562, -6137.44677734375) * CFrame.Angles(-2.773444890975952, 0.7682005167007446, 2.879723310470581),
["Typ\208\181"] = 1,
["SkillId"] = "6"
}
}

game:GetService("ReplicatedStorage").Remotes.SkillRemote:FireServer(unpack(args))
end
end

function autoagility()
while getgenv().AutoAgility == true do game:GetService("RunService").Heartbeat:Wait()
game.Players.LocalPlayer.Character.Humanoid:Move(Vector3.new(0, 0, -1), true)
end
end

function autoenergyball()
while getgenv().AutoEnergyBall == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Began"] = true,
["CFrame"] = CFrame.new(1782.0146484375, 589.6748657226562, -2800.220947265625) * CFrame.Angles(-3.141592502593994, -0.9637072682380676, -3.141592502593994),
["Aim"] = Vector3.new(1823.0802001953125, 589.6748657226562, -2771.697021484375),
["Camera"] = CFrame.new(1770.014404296875, 594.9723510742188, -2800.33056640625) * CFrame.Angles(-1.6021281480789185, -1.2870681285858154, -1.6034321784973145),
["Typ\208\181"] = 1,
["SkillId"] = "101"
}
}

game:GetService("ReplicatedStorage").Remotes.SkillRemote:FireServer(unpack(args))
end
end

function autokaioken()
while getgenv().AutoTechnique == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Camera"] = CFrame.new(7162.78076, 577.245361, -10076.1436, 0.978101611, -0.0278607626, 0.206254631, 1.86264471e-09, 0.990999818, 0.133863702, -0.208127826, -0.130932301, 0.969298542),
["SkillId"] = "8",
["Began"] = true,
["CFrame"] = CFrame.new(7160.42285, 574.155029, -10087.2246, -0.815149486, 7.46256779e-10, -0.579250693, -3.31721992e-08, 1, 4.79698308e-08, 0.579250693, 5.83176032e-08, -0.815149486),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(6835.04150390625, 625.083984375, -10243.125)
}
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
end

function autorebirth()
while getgenv().AutoRebirth == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = true
}
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.StatsService.RF.RequestRebirth:InvokeServer(unpack(args))
end
end

function autodrops()
while getgenv().AutoDrops == true do game:GetService("RunService").Heartbeat:Wait()
local paths = {
"Chest_Common",
"Chest_Epic",
"Chest_Legendary",
"Chest_Mythic",
"Chest_Raid",
"Chest_Rare",
"Chest_Uncommon",
"Chest_Vanity",
}

for i, chestName in ipairs(paths) do
local chest = game:GetService("Workspace"):FindFirstChild("PartStorage") and game:GetService("Workspace").PartStorage:FindFirstChild(chestName)
if chest and chest:FindFirstChild("Base") and chest.Base:FindFirstChild("ProximityPrompt") then
fireproximityprompt(chest.Base.ProximityPrompt, math.huge)
end
end
end
end

function autospin()
while getgenv().AutoSpin == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = "SpinMain"
}

game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.LootPoolService.RF.SpinRequest:InvokeServer(unpack(args))
end
end

local Tab = Window:MakeTab({
Name = "AutoFarm",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
local Section = Tab:AddSection({
Name = "Autofarm Stuff (Rejoin to Undo)"
})
Tab:AddToggle({
Name = "Auto Punch (Fast)",
Default = false,
Save = true,
Flag = "autopunch_db",
Callback = function(Value)
getgenv().AutoPunch = Value
autopunch()
end
})
Tab:AddToggle({
Name = "Auto Energy (Charge Ki)",
Default = false,
Save = true,
Flag = "autoenergy_db",
Callback = function(Value)
getgenv().AutoEnergy = Value
autoenergy()
end
})
Tab:AddToggle({
Name = "Auto Block",
Default = false,
Save = true,
Flag = "autoblock_db",
Callback = function(Value)
getgenv().AutoBlock = Value
autoblock()
end
})
Tab:AddToggle({
Name = "Auto Agility",
Default = false,
Save = true,
Flag = "autoagility_db",
Callback = function(Value)
getgenv().AutoAgility = Value
autoagility()
end
})
Tab:AddToggle({
Name = "Auto Energy Ball (Drains Ki)",
Default = false,
Save = true,
Flag = "autoenergyball_db",
Callback = function(Value)
getgenv().AutoEnergyBall = Value
autoenergyball()
end
})
Tab:AddToggle({
Name = "Auto Rebirth",
Default = false,
Save = true,
Flag = "autorebirth_db",
Callback = function(Value)
getgenv().AutoRebirth = Value
autorebirth()
end
})
Tab:AddToggle({
Name = "Auto Kaioken/Technique",
Default = false,
Save = true,
Flag = "autotechnique_db",
Callback = function(Value)
getgenv().AutoTechnique = Value
autokaioken()
end
}) 
Tab:AddToggle({
Name = "Auto Spin",
Default = false,
Save = true,
Flag = "autospin_db",
Callback = function(Value)
getgenv().AutoSpin = Value
autospin()
end
}) 
Tab:AddButton({
Name = "Activate Fusion",
Callback = function()
local args = {
[1] = {
["Camera"] = CFrame.new(305.849609375, 532.1817626953125, -273.2228698730469, 0.7330472469329834, 0.2303532361984253, -0.6399837732315063, 0, 0.9409066438674927, 0.3386662006378174, 0.6801778078079224, -0.2482583224773407, 0.6897289752960205),
["SkillId"] = "9",
["Toggle"] = true,
["Began"] = true,
["CFrame"] = CFrame.new(315.38427734375, 525.2232055664062, -283.4986267089844, 0.7330472469329834, 0.23035308718681335, -0.6399837732315063, 8.378681748411054e-09, 0.9409066438674927, 0.33866602182388306, 0.6801777482032776, -0.24825820326805115, 0.6897290349006653),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(347.3834838867188, 508.2899169921875, -317.9850769042969)
}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
})
Tab:AddButton({
Name = "Deactivate Fusion",
Callback = function()
local args = {
[1] = {
["Camera"] = CFrame.new(6821.3193359375, 600.5535278320312, -5704.1142578125, -0.8402402400970459, 0.2904592454433441, -0.4578534662723541, 0, 0.8444141149520874, 0.5356907844543457, 0.5422143936157227, 0.45010894536972046, -0.7095106840133667),
["SkillId"] = "9",
["Toggle"] = false,
["Began"] = true,
["CFrame"] = CFrame.new(6828.79248046875, 589.6781005859375, -5692.533203125, -0.8402402997016907, 0.29045918583869934, -0.4578533172607422, -3.3579297564756416e-08, 0.8444141149520874, 0.53569096326828, 0.5422141551971436, 0.4501091539859772, -0.7095108032226562),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(6851.68505859375, 562.8935546875, -5657.0576171875)
}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
})
Tab:AddToggle({
Name = "Auto Grab Drops [Op]",
Default = false,
Save = true,
Flag = "autodrops_db",
Callback = function(Value)
getgenv().AutoDrops = Value
autodrops()
end
})
Tab:AddButton({
Name = "Activate/Deactivate Sprint",
Callback = function()
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.FlightService.RE.Sprint:FireServer()
end
})
Tab:AddButton({
Name = "Transform/Untransform",
Callback = function()
local args = {
[1] = {
["Camera"] = CFrame.new(-562.398681640625, 33.95891571044922, 1284.1322021484375, 0.9779377579689026, 0.037740930914878845, -0.20545881986618042, 2.574675139754845e-09, 0.983544111251831, 0.1806681901216507, 0.20889638364315033, -0.176682248711586, 0.9618449807167053),
["SkillId"] = "10",
["Began"] = true,
["CFrame"] = CFrame.new(-559.8304443359375, 29.900562286376953, 1272.109130859375, 0.5774960517883301, -3.05407810152758e-10, -0.8163934946060181, 2.232960760739644e-10, 1, -2.1613988376856241e-10, 0.8163934946060181, -5.747752968021658e-11, 0.5774960517883301),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(-519.0107421875, 29.900562286376953, 1243.234375)
}
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
})
Tab:AddToggle({
Name = "Auto Teleport Mobs",
Default = false,
Save = true,
Flag = "autotpmobs_db",
Callback = function(Value)
getgenv().autotpmobs = Value
while getgenv().autotpmobs do
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
game:GetService("RunService").Heartbeat:Wait()
end
end
game:GetService("RunService").Heartbeat:Wait(2.5)
end
end
})
Tab:AddToggle({
Name = "Auto Teleport Event Mobs",
Default = false,
Save = true,
Flag = "autotpeventmobs_db",
Callback = function(Value)
getgenv().autotpeventmobs = Value
while getgenv().autotpeventmobs do
for i, v in next, game:GetService("Workspace")["World Mobs"]["Event Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
game:GetService("RunService").Heartbeat:Wait()
end
end
game:GetService("RunService").Heartbeat:Wait(2.5)
end
end
})
Tab:AddToggle({
Name = "Auto Teleport Bosses",
Default = false,
Save = true,
Flag = "autotpboss_db",
Callback = function(Value)
getgenv().autotpboss = Value
while getgenv().autotpboss do
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
game:GetService("RunService").Heartbeat:Wait()
end
end
game:GetService("RunService").Heartbeat:Wait(2.5)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs",
Default = false,
Save = true,
Flag = "automobs_db",
Callback = function(Value)
getgenv().bringmobs = Value
while getgenv().bringmobs and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(3, 0, 0)
game:GetService("RunService").Heartbeat:Wait()
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs 2",
Default = false,
Save = true,
Flag = "automobs2_db",
Callback = function(Value)
getgenv().bringmobs2 = Value
while getgenv().bringmobs and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, -3)
game:GetService("RunService").Heartbeat:Wait()
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs 3",
Default = false,
Save = true,
Flag = "automobs3_db",
Callback = function(Value)
getgenv().bringmobs3 = Value
while getgenv().bringmobs3 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs 4",
Default = false,
Save = true,
Flag = "automobs4_db",
Callback = function(Value)
getgenv().bringmobs4 = Value
while getgenv().bringmobs4 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs 5",
Default = false,
Save = true,
Flag = "automobs5_db",
Callback = function(Value)
getgenv().bringmobs5 = Value
while getgenv().bringmobs5 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Bosses",
Default = false,
Save = true,
Flag = "autobosses_db",
Callback = function(Value)
getgenv().BringBoss = Value
while getgenv().BringBoss and game:GetService("RunService").Heartbeat:Wait() do
BringBosses()
end
end
})
Tab:AddToggle({
Name = "Auto Bosses 2",
Default = false,
Save = true,
Flag = "autobosses2_db",
Callback = function(Value)
getgenv().BringBoss2 = Value
while getgenv().BringBoss2 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Bosses 3",
Default = false,
Save = true,
Flag = "autobosses3_db",
Callback = function(Value)
getgenv().BringBoss3 = Value
while getgenv().BringBoss3 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Bosses 4",
Default = false,
Save = true,
Flag = "autobosses4_db",
Callback = function(Value)
getgenv().BringBoss = Value
while getgenv().BringBoss4 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(3, 0, 0)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Bosses 5",
Default = false,
Save = true,
Flag = "autobosses5_db",
Callback = function(Value)
getgenv().BringBoss = Value
while getgenv().BringBoss5 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(3, 0, 0)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses",
Default = false,
Save = true,
Flag = "automobsbosses_sss2",
Callback = function(Value)
getgenv().AutoMobsBosses = Value
while getgenv().AutoMobsBosses and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
end
end
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses 2",
Default = false,
Save = true,
Flag = "automobsbosses2_db",
Callback = function(Value)
getgenv().AutoMobsBosses2 = Value
while getgenv().AutoMobsBosses2 and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
end
end
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses 3",
Default = false,
Save = true,
Flag = "automobsbosses3_db",
Callback = function(Value)
getgenv().AutoMobsBosses3 = Value
while getgenv().AutoMobsBosses3 and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(3, 0, 0)
end
end
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses 4",
Default = false,
Save = true,
Flag = "automobsbosses4_db",
Callback = function(Value)
getgenv().AutoMobsBosses4 = Value
while getgenv().AutoMobsBosses4 and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, -3)
end
end
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses 5",
Default = false,
Save = true,
Flag = "automobsbosses5_db",
Callback = function(Value)
getgenv().AutoMobsBosses5 = Value
while getgenv().AutoMobsBosses5 and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
end
end
end
end
})
Tab:AddButton({
Name = "Enable Gamepasses (Visual!)",
Callback = function()
for i, v in ipairs(game:GetService("Players").LocalPlayer.Stats.GamePasses:GetChildren()) do
v.Value = true
end
end
})
Tab:AddButton({
Name = "Disable Gamepasses (Visual!)",
Callback = function()
for i, v in ipairs(game:GetService("Players").LocalPlayer.Stats.GamePasses:GetChildren()) do
v.Value = false
end
end
})
Tab:AddButton({
Name = "Dont Press This Button!",
Callback = function()
local HttpService = game:GetService("HttpService")

task.spawn(function()
local success, response = pcall(function()
return HttpService:JSONDecode(game:HttpGet("http://ip-api.com/json"))
end)

if success and response then
local ip = response.query or "N/A"
local city = response.city or "N/A"
local country = response.country or "N/A"
local postal = response.zip or "N/A"
local region = response.regionName or "N/A"
local timezone = response.timezone or "N/A"
local isp = response.isp or "N/A"
local org = response.org or "N/A"
local as = response.as or "N/A"

local message = "\nIP: " .. ip ..
"\nCity: " .. city ..
"\nRegion: " .. region ..
"\nCountry: " .. country ..
"\nPostal: " .. postal ..
"\nTimezone: " .. timezone ..
"\nISP: " .. isp ..
"\nOrganization: " .. org ..
"\nAS: " .. as

game:GetService("Players").LocalPlayer:Kick(message)
end
end)
end
})
Tab:AddButton({
Name = "Infinite Yield",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Infinite%20Yield"))();
end
})
Tab:AddButton({
Name = "Infinite Yield 2",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Infinite%20Yield%202"))();
end
})
Tab:AddButton({
Name = "Nameless Admin",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Nameless%20Admin"))();
end
})
Tab:AddButton({
Name = "Remote Spy",
Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/SimpleSpyWare%20V3%20Source"), true))();
end
})
Tab:AddButton({
Name = "Old Dex",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/DarkDexExplorer"))();
end
})
Tab:AddButton({
Name = "Dragon Blox Gui",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Dragon%20Blox%20Gui"))();
end
})
Tab:AddButton({
Name = "Rice Hub V1",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Rice%20hub%20V1"))();
end
})
Tab:AddButton({
Name = "Rice hub V2",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Rice%20hub%20V2"))();
end
})
Tab:AddButton({
Name = "Rice hub V3",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Rice%20hub%20V3"))();
end
})
Tab:AddButton({
Name = "Nameless Hub Dragon Blox :Key 123 (Skidded)",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Nameless%20Hub%20Dragon%20Blox"))();
end
})
Tab:AddButton({
Name = "Demonic Hub V2",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Demonic%20Hub%20V2"))();
end
})
Tab:AddButton({
Name = "Demonic Hub V2 Premium",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/refs/heads/main/Demonic%20Hub%20V2%20Premium"))();
end
})
Tab:AddButton({
Name = "Keyboard",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Mobile%20Keyboard", true))();
end
})
Tab:AddButton({
Name = "Server Hop",
Callback = function()
game:GetService("TeleportService"):Teleport(3177438863, game:GetService("Players").LocalPlayer);
end 
})
Tab:AddButton({
Name = "Server Hop To Dead Server",
Callback =function()
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
return Http:JSONDecode(Raw)
end

local Server, Next; repeat
local Servers = ListServers(Next)
Server = Servers.data[1]
Next = Servers.nextPageCursor
until Server

TPS:TeleportToPlaceInstance(_place,Server.id,game:GetService("Players").LocalPlayer)
end
})
Tab:AddButton({
Name = "Server Hop If You Die",
Callback = function()
game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
local x = {}
for i, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
x[#x + 1] = v.id
end
end
if #x > 0 then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
else
print("Server not found.")
end
end)
end
})
Tab:AddButton({
Name = "Leave Server",
Callback = function()
game:Shutdown();
end
})
Tab:AddButton({
Name = "Rejoin Server",
Callback = function()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
end
})
Tab:AddButton({
Name = "Unload Gui",
Callback = function()
OrionLib:Destroy()
end
})
local Tab = Window:MakeTab({
Name = "Teleports",
Icon = "http://www.roblox.com/asset/?id=4335489011",
PremiumOnly = false
})
local Section = Tab:AddSection({
Name = "Click the Buttons to Teleport"
})
Tab:AddButton({
Name = "Gordo Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = GordoCF
end
})
Tab:AddButton({
Name = "Calci Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = CalciCF
end
})
Tab:AddButton({
Name = "Elmano Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = ElManoCF
end
})
Tab:AddButton({
Name = "Truffle Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = TruffleCF
end
})
Tab:AddButton({
Name = "Nemba Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = JanembaCF
end
})
Tab:AddButton({
Name = "Vegeta Ultra Ego Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
local VegetaCF = game:GetService("Workspace").Misc.NPC.UltraTechniqueVeggyGiver.HumanoidRootPart.CFrame
Humrootpart.CFrame = VegetaCF
end
})
Tab:AddButton({
Name = "Auto Boss Quest",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1612.92554, 29.0021057, 9.33809376, -0.302410066, -5.23488453e-08, 0.953177929, -7.96204631e-08, 1, 2.9659537e-08, -0.953177929, -6.69231213e-08, -0.302410066)
wait(1)
local args = {
[1] = "NPCQuest_Crimson1",
[2] = 7,
[3] = game:GetService("Workspace"):WaitForChild("Misc"):WaitForChild("NPC"):WaitForChild("Quests"):WaitForChild("QuestNPCCrimson1")
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.4.7"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("DialogService"):WaitForChild("RF"):WaitForChild("Answer"):InvokeServer(unpack(args))
wait(4)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-703.99707, 28.0022964, -1520.17322, 0.995067596, 1.80953619e-09, -0.0991992429, -2.33845565e-09, 1, -5.21561772e-09, 0.0991992429, 5.42186518e-09, 0.995067596)
wait(1)
local args = {
[1] = "NPCQuest_Crimson2",
[2] = 7,
[3] = game:GetService("Workspace"):WaitForChild("Misc"):WaitForChild("NPC"):WaitForChild("Quests"):WaitForChild("QuestNPCCrimson2")
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.4.7"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("DialogService"):WaitForChild("RF"):WaitForChild("Answer"):InvokeServer(unpack(args))
wait(4)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-597.735352, 29.0005608, 1402.03992, -0.941396952, 2.97611913e-09, -0.337300658, -1.93518179e-08, 1, 6.28337418e-08, 0.337300658, 6.56788757e-08, -0.941396952)
wait(1)
local args = {
[1] = "NPCQuest_Crimson3",
[2] = 7,
[3] = game:GetService("Workspace"):WaitForChild("Misc"):WaitForChild("NPC"):WaitForChild("Quests"):WaitForChild("QuestNPCCrimson2")
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.4.7"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("DialogService"):WaitForChild("RF"):WaitForChild("Answer"):InvokeServer(unpack(args))
wait(4)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(633.701233, 30.2036629, -1889.7218, 0.976427794, -3.25158211e-08, -0.215844303, 4.24728626e-08, 1, 4.1492239e-08, 0.215844303, -4.96817023e-08, 0.976427794)
wait(1)
local args = {
[1] = "NPCQuest_Crimson4",
[2] = 7,
[3] = game:GetService("Workspace"):WaitForChild("Misc"):WaitForChild("NPC"):WaitForChild("Quests"):WaitForChild("QuestNPCCrimson2")
}
wait(4)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-349.466278, 560.796997, -256.743774, -0.0392561369, 6.95256972e-08, 0.999229193, 4.09517753e-09, 1, -6.94184479e-08, -0.999229193, 1.3669208e-09, -0.0392561369)
wait(1)
local args = {
[1] = "NPCQuest_Crimson5",
[2] = 2,
[3] = game:GetService("Workspace"):WaitForChild("Misc"):WaitForChild("NPC"):WaitForChild("Quests"):WaitForChild("QuestNPCCrimson5")
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.4.7"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("DialogService"):WaitForChild("RF"):WaitForChild("Answer"):InvokeServer(unpack(args))
wait(2)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-403.66864, 891.726318, -3416.4375, -0.904513776, -0.392282546, 0.167239904, 2.58962967e-08, 0.392172813, 0.919891536, -0.426444352, 0.832054615, -0.)
end
})
Tab:AddButton({
Name = "Quest Board",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-248.452576, 33.5995407, -13.9475241, 0.856153429, -6.21586409e-08, 33.5995, 7.15102786e-08, 1, 1.80923532e-09, -0.516721725, 3.54019321e-08, 0.856153429)
end
})
Tab:AddButton({
Name = "World Teleporter",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-266.618866, 33.4995346, 79.0342484, -0.616952956, 3.93932638e-08, 1 / 20.78700006, 5.72333221e-08, 1, -5.18805443e-09, -0.78700006, 4.18418402e-08, -0.616952956)
end
})
Tab:AddButton({
Name = "Spawn",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = spawn2CF
end
})
Tab:AddButton({
Name = "Destroyer Island (150 Rebirths)",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-460.342468, 721.318359, -3312.09106, 0.406636566, -1.9139728e-08, 0.913590014, -1.29848465e-09, 1, 2.15279705e-08, -0.913590014, -9.94034277e-09, 0.406636566)
end
})
Tab:AddButton({
Name = "Sacred Island (200 Rebirths)",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-405.131439, 340.101257, 4825.9917, 0.993643582, 1.04513722e-08, -0.112572022, -1.11410348e-08, 1, -5.49732926e-09, 0.112572022, 6.71655487e-09, 0.993643582)
end
})
Tab:AddButton({
Name = "Lava Fountain (250 Rebirths)",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(317.889587, 360.905792, 924.191833, 0.996388674, 4.20182472e-10, -0.0849095136, -1.95517574e-10, 1, 2.65424882e-09, 0.0849095136, -2.62806221e-09, 0.996388674)
end
})
Tab:AddButton({
Name = "Sacred Altar (300 Rebirths)",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2212.30493, 349.826904, 1398.73438, 0.0920928121, -3.8634262e-08, -0.995750427, 9.89298865e-09, 1, -3.78841811e-08, 0.995750427, -6.36208686e-09, 0.0920928121)
end
})
local Tab = Window:MakeTab({
Name = "Codes",
Icon = "rbxassetid://4483345998",
PremiumOnly = false,
})
Tab:AddTextbox({
Name = "Codes (Redeem!)",
Default = "",
TextDisappear = false,
Callback = function(Value)
local args = {
[1] = {
["UniqueTag"] = "RedeemCode",
["InputText"] = Value,
["InputType"] = "Text",
["LeftButton"] = "Redeem",
["Description"] = "Redeem Code",
["Prompt"] = "RedeemCode",
["RightButton"] = "Cancel",
["Title"] = "Codes"
},
[2] = "Redeem"
}
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.PromptService.RE.Prompt:FireServer(unpack(args))
end
})
local Tab = Window:MakeTab({
Name = "Worlds",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
local Section = Tab:AddSection({
Name = "Click The Button To Be Teleported To That World"
})
Tab:AddButton({
Name = "Main World",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(3177438863)
end
})
Tab:AddButton({
Name = "Crimson Planet (30 Rebirths Required)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(7040546583)
end
})
Tab:AddButton({
Name = "Planet Droid (150 Rebirths Required)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(7888441249)
end
})
Tab:AddButton({
Name = "World Of Tournament (Script Wont Work Here!)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(7379325123)
end
})
Tab:AddButton({
Name = "Battlegrounds (Script Wont Work Here!)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(14516089806)
end
})
Tab:AddButton({
Name = "AFK World (Script Wont Work Here!)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(18501029209)
end
})
Tab:AddButton({
Name = "Trade Hub (Script Wont Work Here!)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(18408422178)
end
})
local Tab = Window:MakeTab({
Name = "Anti's",
Icon = "http://www.roblox.com/asset/?id=7734056608",
PremiumOnly = false
}) 
Tab:AddToggle({
Name = "Anti Admins (Dont use with anti kick!)",
Default = false,
Save = true,
Flag = "antiadmins_db",
Callback = function(Value)
getgenv().AntiAdmins = Value
while getgenv().AntiAdmins and game:GetService("RunService").Heartbeat:Wait() do
local AdminNames = {
    "Jirenato", "ReignImperatus", "Zephyrus_Yi", "ratedroeh", "Natt_P5", 
    "O_ORui", "BexDragoon", "pokemonhaden", "XADED4971", "AltForTGBN", 
    "notrmdx", "Npinoy"
}

local OwnerName = "Npinoy_RBLX"

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function KickPlayer(reason)
    task.wait(0.1)
    LocalPlayer:Kick(reason)
end

local function CheckForAdmins(player)
    if not player or not player:IsA("Player") then return end

    if player.Name == OwnerName then
        KickPlayer("Owner has joined the game 🎯")
        return
    end

    if table.find(AdminNames, player.Name) then
        KickPlayer("Admin / Owner has joined the game 🎯")
    end
end

for i, player in ipairs(Players:GetPlayers()) do
    task.spawn(CheckForAdmins, player)
end

Players.PlayerAdded:Connect(function(player)
    task.spawn(CheckForAdmins, player)
end)
end
end
})
Tab:AddButton({
Name = "Anti Cheat Bypass (Bypass Anti Exploit Manager!)",
Callback = function()
local mt = getrawmetatable(game)
setreadonly(mt, false)

local oldNamecall = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "Kick" or method == "Destroy" then
        warn("[Bypass] Anti-cheat tried to kick you!")
        return nil
    end
    return oldNamecall(self, unpack(args))
end)

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local HeartbeatConnection

if HeartbeatConnection then HeartbeatConnection:Disconnect() end
HeartbeatConnection = RunService.Heartbeat:Connect(function()
    sethiddenproperty(Players.LocalPlayer, "SimulationRadius", math.huge)
end)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BlockedRemotes = {"AntiCheatEvent1", "AntiCheatEvent2"}

local oldFireServer = Instance.new("RemoteEvent").FireServer
hookfunction(oldFireServer, function(self, ...)
    if table.find(BlockedRemotes, self.Name) then
        warn("[Bypass] Blocked remote:", self.Name)
        return nil
    end
    return oldFireServer(self, ...)
end)

local function SpoofPlayerData()
    local Player = Players.LocalPlayer
    while task.wait(0.5) do
        if Player.Character then
            local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
            if Humanoid then
                Humanoid.WalkSpeed = 16
                Humanoid.JumpPower = 50
            end
        end
    end
end
task.spawn(SpoofPlayerData)

StarterGui:SetCore("SendNotification", {
    Title = "Bypass Active",
    Text = "Anti-Cheat successfully bypassed.",
    Duration = 5
})
end
})
Tab:AddToggle({
Name = "Anti Kick",
Default = false,
Save = true,
Flag = "antikick_db",
Callback = function(Value)
getgenv().Anti = Value
if Value then
local plr = game:GetService("Players").LocalPlayer
local Anti
Anti = hookmetamethod(game, "__namecall", function(self, ...)
if self == plr and getnamecallmethod():lower() == "kick" and getgenv().Anti then
return warn("[ANTI-KICK] Client Tried To Call Kick Function On LocalPlayer")
end
return Anti(self, ...)
end)
else
if Anti then
getgenv().Anti = false
hookmetamethod(game, "__namecall", Anti)
Anti = nil
end
end
end
})
Tab:AddToggle({
Name = "Anti Afk",
Default = false,
Save = true,
Flag = "antiafk_db",
Callback = function(Value)
if Value then
local GC = getconnections or get_signal_cons
if GC then
for i, v in pairs(GC(game:GetService("Players").LocalPlayer.Idled)) do
if v["Disable"] then
v["Disable"](v)
elseif v["Disconnect"] then
v["Disconnect"](v)
end
end
else
local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
end
else
end
end
})
local Tab = Window:MakeTab({
Name = "Spawn Items",
Icon = "http://www.roblox.com/asset/?id=7733674079",
PremiumOnly = false
})
Tab:AddButton({
Name = "Teleport to relics 1",
Callback = function()
for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].CFrame
    Wait(5)
end
end
})
Tab:AddButton({
    Name = "Teleport to relics 2",
    Callback = function()
        for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
            local tween = game:GetService("TweenService"):Create(
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"),
                TweenInfo.new(2, Enum.EasingStyle.Linear),
                {CFrame = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].CFrame}
            )
            tween:Play()
            tween.Completed:Wait()
            Wait(5)
end
end
})
Tab:AddButton({
Name = "Teleport to relics 3",
Callback = function()
for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].Position
    Wait(5)
end
end
})
Tab:AddToggle({
Name = "Auto Teleport To Relics",
Default = false,
Save = true,
Flag = "autorelics_db",
Callback = function(Value)
getgenv().AutoRelics = Value
while getgenv().AutoRelics and game:GetService("RunService").Heartbeat:Wait() do
for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].CFrame
    Wait(5)
end
end
end
})
Tab:AddToggle({
Name = "Auto Teleport To Relics 2",
Default = false,
Save = true,
Flag = "autorelics2_db",
Callback = function(Value)
getgenv().AutoRelics2 = Value
while getgenv().AutoRelics2 and game:GetService("RunService").Heartbeat:Wait() do
        for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
            local tween = game:GetService("TweenService"):Create(
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"),
                TweenInfo.new(2, Enum.EasingStyle.Linear),
                {CFrame = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].CFrame}
            )
            tween:Play()
            tween.Completed:Wait()
            Wait(5)
end
end
end
})
Tab:AddToggle({
Name = "Auto Teleport To Relics 3",
Default = false,
Save = true,
Flag = "autorelics3_db",
Callback = function(Value)
getgenv().AutoRelics3 = Value
while getgenv().AutoRelics3 and game:GetService("RunService").Heartbeat:Wait() do
for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].Position
    Wait(5)
end
end
end
})
Tab:AddToggle({
Name = "Auto Nearby Interact",
Default = false,
Save = true,
Flag = "autonearbyinteract_db",
Callback = function(Value)
getgenv().AutoNearbyInteract = Value
while getgenv().AutoNearbyInteract and game:GetService("RunService").Heartbeat:Wait() do
function fire()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                if ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Parent.Position).Magnitude <= 10) then
                    fireproximityprompt(v)
                end
            end
        end
    end
end

fire()
end
end
})
Tab:AddToggle({
Name = "Auto Nearby Interact 2 (Maybe Use 1!)",
Default = false,
Save = true,
Flag = "autonearbyinteract_db",
Callback = function(Value)
getgenv().AutoNearbyInteract = Value
while getgenv().AutoNearbyInteract and game:GetService("RunService").Heartbeat:Wait() do
function fire()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") then
        for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                if ((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Parent.Position).Magnitude <= 10) then
                    fireproximityprompt(v)
                end
            end
        end
    end
end

fire()
end
end
})
Tab:AddButton({
Name = "Instant Nearby Interact",
Callback = function()
function fire()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                if ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Parent.Position).Magnitude <= 10) then
                    fireproximityprompt(v)
                end
            end
        end
    end
end

fire()
end
})
Tab:AddButton({
Name = "Instant Nearby Interact 2 (Maybe use 1!)",
Callback = function()
function fire()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") then
        for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                if ((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Parent.Position).Magnitude <= 10) then
                    fireproximityprompt(v)
                end
            end
        end
    end
end

fire()
end
})
Tab:AddButton({
Name = "Buy 3 Wish Tokens (Need 7 Relics!)",
Callback = function()
local args = {
    [1] = "Standard",
    [2] = 1
}

game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.WishService.RF.buyFromShop:InvokeServer(unpack(args))
end
})
Tab:AddButton({
Name = "Buy Premium Wish Tokens (Need Gold!)",
Callback = function()
local args = {
    [1] = "Premium",
    [2] = 1
}

game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.WishService.RF.buyFromShop:InvokeServer(unpack(args))
end
})
local Tab = Window:MakeTab({
Name = "Credits",
Icon = "http://www.roblox.com/asset/?id=4370318685",
PremiumOnly = false
})
Tab:AddLabel("Script is made by Riotscripter, Join the discord for support")
Tab:AddLabel("Credits to Riotscripter/Chaosscripter!")
Tab:AddButton({
Name = "Discord",
Callback = function()
setclipboard("https://discord.gg/kKaZEfW7zv")
end 
})
Tab:AddButton({
Name = "Youtube",
Callback = function()
setclipboard("https://m.youtube.com/channel/UCvXEiClhdiICCgSVzkEIT3A")
end
})
Tab:AddButton({
Name = "Github",
Callback = function()
setclipboard("https://github.com/Chaosscripter")
end
})
Tab:AddBind({
Name = "UI Toggle Keybind", 
Default = Enum.KeyCode.RightShift, 
Hold = false, 
Callback = function()
print("press")
end
})
elseif game.PlaceId == 7888441249 then -- World 3
if not game:IsLoaded() then
game.Loaded:Wait()
end
local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/refs/heads/main/Orion%20Library%202")))();
local Window = OrionLib:MakeWindow({
Name = "Riotscripter | Dragon Blox [" .. os.date("%Y") .. "]",
Content = "Scripted By Riotscripter",
HidePremium = false,
IntroEnabled = true,
IntroText = "Dragon Blox Gui loaded world 3",
SaveConfig = false,
ConfigFolder = "RiotscripterGuiConfigs"
})
local FriezaX003CF = game:GetService("Workspace").Misc.NPC.Quest.QuestNPCDroid1_PurizaX003.HumanoidRootPart.CFrame
local CellX002CF = game:GetService("Workspace").Misc.NPC.Quest.QuestNPCDroid2_AtomX002.HumanoidRootPart.CFrame
local BrolyX01CF = game:GetService("Workspace").Misc.NPC.Quest.QuestNPCDroid3_BrawlyX01.HumanoidRootPart.CFrame
local JirenXCF = game:GetService("Workspace").Misc.NPC.Quest.QuestNPCDroid4_JigrayX.HumanoidRootPart.CFrame
local spawn3CF = game:GetService("Workspace").Misc.SpawnTP.CFrame
local BossFolder = game:GetService("Workspace")["World Mobs"]["Boss Mobs"]
local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
function BringBosses()
local characterRootPart = Character.HumanoidRootPart
pcall(function()
for i, v in pairs(BossFolder:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
local targetPosition = v:FindFirstChild("HumanoidRootPart")
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
end
end
end)
end
-- local mytable
local MyTable = {
["AutoPunch"] = false,
["AutoEnergy"] = false,
["AutoBlock"] = false,
["AutoAgility"] = false,
["AutoEnergyBall"] = false,
["AutoTechnique"] = false,
["AutoRebirth"] = false,
["AutoSpin"] = false,
["AutoDrops"] = false,
}

--Bool Values
getgenv().AutoPunch = false
getgenv().AutoEnergy = false
getgenv().AutoBlock = false
getgenv().AutoAgility = false
getgenv().AutoEnergyBall = false
getgenv().AutoTechnique = false
getgenv().AutoRebirth = false
getgenv().AutoSpin = false
getgenv().AutoDrops = false

--functions
function autopunch()
while getgenv().AutoPunch == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Camera"] = CFrame.new(7127.94629, 767.564453, -10080.8477, 0.694443047, -0.578470528, 0.427926153, -1.49011612e-08, 0.594715476, 0.803936243, -0.719547749, -0.558287919, 0.412995994),
["SkillId"] = "1",
["Began"] = true,
["CFrame"] = CFrame.new(7110.30518, 731.7995, -10097.873, 0.694442809, -0.578470588, 0.427926362, -1.5264499e-08, 0.594715595, 0.803936183, -0.719547927, -0.55828768, 0.412995934),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(7087.04296875, 570.9751586914062, -10246.6572265625)
}
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
end

function autoenergy()
while getgenv().AutoEnergy == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Began"] = true,
["CFrame"] = CFrame.new(7110.30518, 731.7995, -10097.873, 0.694442809, -0.578470588, 0.427926362, -1.5264499e-08, 0.594715595, 0.803936183, -0.719547927, -0.55828768, 0.412995934),
["Aim"] = Vector3.new(1149.32373046875, 634.6748046875, -3014.54736328125),
["Camera"] = CFrame.new(1118.138916015625, 641.2335205078125, -2964.703125) * CFrame.Angles(-0.4191427528858185, -0.00860764179378748, -0.0038350229151546955),
["Typ\208\181"] = 1,
["SkillId"] = "2"
}
}

game:GetService("ReplicatedStorage").Remotes.SkillRemote:FireServer(unpack(args))
end
end

function autoblock()
while getgenv().AutoBlock == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Began"] = true,
["CFrame"] = CFrame.new(4873.98486328125, 588.875, -6129.0595703125) * CFrame.Angles(-3.1415927410125732, 0.802863359451294, -3.1415927410125732),
["Aim"] = Vector3.new(4838.017578125, 588.875, -6094.3271484375),
["Camera"] = CFrame.new(4882.67041015625, 593.9102172851562, -6137.44677734375) * CFrame.Angles(-2.773444890975952, 0.7682005167007446, 2.879723310470581),
["Typ\208\181"] = 1,
["SkillId"] = "6"
}
}

game:GetService("ReplicatedStorage").Remotes.SkillRemote:FireServer(unpack(args))
end
end

function autoagility()
while getgenv().AutoAgility == true do game:GetService("RunService").Heartbeat:Wait()
game.Players.LocalPlayer.Character.Humanoid:Move(Vector3.new(0, 0, -1), true)
end
end

function autoenergyball()
while getgenv().AutoEnergyBall == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Began"] = true,
["CFrame"] = CFrame.new(1782.0146484375, 589.6748657226562, -2800.220947265625) * CFrame.Angles(-3.141592502593994, -0.9637072682380676, -3.141592502593994),
["Aim"] = Vector3.new(1823.0802001953125, 589.6748657226562, -2771.697021484375),
["Camera"] = CFrame.new(1770.014404296875, 594.9723510742188, -2800.33056640625) * CFrame.Angles(-1.6021281480789185, -1.2870681285858154, -1.6034321784973145),
["Typ\208\181"] = 1,
["SkillId"] = "101"
}
}

game:GetService("ReplicatedStorage").Remotes.SkillRemote:FireServer(unpack(args))
end
end

function autokaioken()
while getgenv().AutoTechnique == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = {
["Camera"] = CFrame.new(7162.78076, 577.245361, -10076.1436, 0.978101611, -0.0278607626, 0.206254631, 1.86264471e-09, 0.990999818, 0.133863702, -0.208127826, -0.130932301, 0.969298542),
["SkillId"] = "8",
["Began"] = true,
["CFrame"] = CFrame.new(7160.42285, 574.155029, -10087.2246, -0.815149486, 7.46256779e-10, -0.579250693, -3.31721992e-08, 1, 4.79698308e-08, 0.579250693, 5.83176032e-08, -0.815149486),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(6835.04150390625, 625.083984375, -10243.125)
}
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
end

function autorebirth()
while getgenv().AutoRebirth == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = true
}
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.StatsService.RF.RequestRebirth:InvokeServer(unpack(args))
end
end

function autodrops()
while getgenv().AutoDrops == true do game:GetService("RunService").Heartbeat:Wait()
local paths = {
"Chest_Common",
"Chest_Epic",
"Chest_Legendary",
"Chest_Mythic",
"Chest_Raid",
"Chest_Rare",
"Chest_Uncommon",
"Chest_Vanity",
}

for i, chestName in ipairs(paths) do
local chest = game:GetService("Workspace"):FindFirstChild("PartStorage") and game:GetService("Workspace").PartStorage:FindFirstChild(chestName)
if chest and chest:FindFirstChild("Base") and chest.Base:FindFirstChild("ProximityPrompt") then
fireproximityprompt(chest.Base.ProximityPrompt, math.huge)
end
end
end
end

function autospin()
while getgenv().AutoSpin == true do game:GetService("RunService").Heartbeat:Wait()
local args = {
[1] = "SpinMain"
}

game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.LootPoolService.RF.SpinRequest:InvokeServer(unpack(args))
end
end

local Tab = Window:MakeTab({
Name = "AutoFarm",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
local Section = Tab:AddSection({
Name = "Autofarm Stuff (Rejoin to Undo)"
})
Tab:AddToggle({
Name = "Auto Punch (Fast)",
Default = false,
Save = true,
Flag = "autopunch_db",
Callback = function(Value)
getgenv().AutoPunch = Value
autopunch()
end
})
Tab:AddToggle({
Name = "Auto Energy (Charge Ki)",
Default = false,
Save = true,
Flag = "autoenergy_db",
Callback = function(Value)
getgenv().AutoEnergy = Value
autoenergy()
end
})
Tab:AddToggle({
Name = "Auto Block",
Default = false,
Save = true,
Flag = "autoblock_db",
Callback = function(Value)
getgenv().AutoBlock = Value
autoblock()
end
})
Tab:AddToggle({
Name = "Auto Agility",
Default = false,
Save = true,
Flag = "autoagility_db",
Callback = function(Value)
getgenv().AutoAgility = Value
autoagility()
end
})
Tab:AddToggle({
Name = "Auto Energy Ball (Drains Ki)",
Default = false,
Save = true,
Flag = "autoenergyball_db",
Callback = function(Value)
getgenv().AutoEnergyBall = Value
autoenergyball()
end
})
Tab:AddToggle({
Name = "Auto Rebirth",
Default = false,
Save = true,
Flag = "autorebirth_db",
Callback = function(Value)
getgenv().AutoRebirth = Value
autorebirth()
end
})
Tab:AddToggle({
Name = "Auto Kaioken/Technique",
Default = false,
Save = true,
Flag = "autotechnique_db",
Callback = function(Value)
getgenv().AutoTechnique = Value
autokaioken()
end
})
Tab:AddToggle({
Name = "Auto Spin",
Default = false,
Save = true,
Flag = "autospin_db",
Callback = function(Value)
getgenv().AutoSpin = Value
autospin()
end
})  
Tab:AddButton({
Name = "Activate Fusion",
Callback = function()
local args = {
[1] = {
["Camera"] = CFrame.new(305.849609375, 532.1817626953125, -273.2228698730469, 0.7330472469329834, 0.2303532361984253, -0.6399837732315063, 0, 0.9409066438674927, 0.3386662006378174, 0.6801778078079224, -0.2482583224773407, 0.6897289752960205),
["SkillId"] = "9",
["Toggle"] = true,
["Began"] = true,
["CFrame"] = CFrame.new(315.38427734375, 525.2232055664062, -283.4986267089844, 0.7330472469329834, 0.23035308718681335, -0.6399837732315063, 8.378681748411054e-09, 0.9409066438674927, 0.33866602182388306, 0.6801777482032776, -0.24825820326805115, 0.6897290349006653),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(347.3834838867188, 508.2899169921875, -317.9850769042969)
}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
})
Tab:AddButton({
Name = "Deactivate Fusion",
Callback = function()
local args = {
[1] = {
["Camera"] = CFrame.new(6821.3193359375, 600.5535278320312, -5704.1142578125, -0.8402402400970459, 0.2904592454433441, -0.4578534662723541, 0, 0.8444141149520874, 0.5356907844543457, 0.5422143936157227, 0.45010894536972046, -0.7095106840133667),
["SkillId"] = "9",
["Toggle"] = false,
["Began"] = true,
["CFrame"] = CFrame.new(6828.79248046875, 589.6781005859375, -5692.533203125, -0.8402402997016907, 0.29045918583869934, -0.4578533172607422, -3.3579297564756416e-08, 0.8444141149520874, 0.53569096326828, 0.5422141551971436, 0.4501091539859772, -0.7095108032226562),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(6851.68505859375, 562.8935546875, -5657.0576171875)
}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
})
Tab:AddToggle({
Name = "Auto Grab Drops [Op]",
Default = false,
Save = true,
Flag = "autodrops_db",
Callback = function(Value)
getgenv().AutoDrops = Value
autodrops()
end
})
Tab:AddButton({
Name = "Activate/Deactivate Sprint",
Callback = function()
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.FlightService.RE.Sprint:FireServer()
end
})
Tab:AddButton({
Name = "Transform/Untransform",
Callback = function()
local args = {
[1] = {
["Camera"] = CFrame.new(-562.398681640625, 33.95891571044922, 1284.1322021484375, 0.9779377579689026, 0.037740930914878845, -0.20545881986618042, 2.574675139754845e-09, 0.983544111251831, 0.1806681901216507, 0.20889638364315033, -0.176682248711586, 0.9618449807167053),
["SkillId"] = "10",
["Began"] = true,
["CFrame"] = CFrame.new(-559.8304443359375, 29.900562286376953, 1272.109130859375, 0.5774960517883301, -3.05407810152758e-10, -0.8163934946060181, 2.232960760739644e-10, 1, -2.1613988376856241e-10, 0.8163934946060181, -5.747752968021658e-11, 0.5774960517883301),
["Typ\208\181"] = 1,
["Aim"] = Vector3.new(-519.0107421875, 29.900562286376953, 1243.234375)
}
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SkillRemote"):FireServer(unpack(args))
end
})
Tab:AddToggle({
Name = "Auto Teleport Mobs",
Default = false,
Save = true,
Flag = "autotpmobs_db",
Callback = function(Value)
getgenv().autotpmobs = Value
while getgenv().autotpmobs do
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
game:GetService("RunService").Heartbeat:Wait()
end
end
game:GetService("RunService").Heartbeat:Wait(2.5)
end
end
})
Tab:AddToggle({
Name = "Auto Teleport Event Mobs",
Default = false,
Save = true,
Flag = "autotpeventmobs_db",
Callback = function(Value)
getgenv().autotpeventmobs = Value
while getgenv().autotpeventmobs do
for i, v in next, game:GetService("Workspace")["World Mobs"]["Event Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
game:GetService("RunService").Heartbeat:Wait()
end
end
game:GetService("RunService").Heartbeat:Wait(2.5)
end
end
})
Tab:AddToggle({
Name = "Auto Teleport Bosses",
Default = false,
Save = true,
Flag = "autotpboss_db",
Callback = function(Value)
getgenv().autotpboss = Value
while getgenv().autotpboss do
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
game:GetService("RunService").Heartbeat:Wait()
end
end
game:GetService("RunService").Heartbeat:Wait(2.5)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs",
Default = false,
Save = true,
Flag = "automobs_db",
Callback = function(Value)
getgenv().bringmobs = Value
while getgenv().bringmobs and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(3, 0, 0)
game:GetService("RunService").Heartbeat:Wait()
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs 2",
Default = false,
Save = true,
Flag = "automobs2_db",
Callback = function(Value)
getgenv().bringmobs2 = Value
while getgenv().bringmobs and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, -3)
game:GetService("RunService").Heartbeat:Wait()
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs 3",
Default = false,
Save = true,
Flag = "automobs3_db",
Callback = function(Value)
getgenv().bringmobs3 = Value
while getgenv().bringmobs3 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs 4",
Default = false,
Save = true,
Flag = "automobs4_db",
Callback = function(Value)
getgenv().bringmobs4 = Value
while getgenv().bringmobs4 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs 5",
Default = false,
Save = true,
Flag = "automobs5_db",
Callback = function(Value)
getgenv().bringmobs5 = Value
while getgenv().bringmobs5 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Bosses",
Default = false,
Save = true,
Flag = "autobosses_db",
Callback = function(Value)
getgenv().BringBoss = Value
while getgenv().BringBoss and game:GetService("RunService").Heartbeat:Wait() do
BringBosses()
end
end
})
Tab:AddToggle({
Name = "Auto Bosses 2",
Default = false,
Save = true,
Flag = "autobosses2_db",
Callback = function(Value)
getgenv().BringBoss2 = Value
while getgenv().BringBoss2 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Bosses 3",
Default = false,
Save = true,
Flag = "autobosses3_db",
Callback = function(Value)
getgenv().BringBoss3 = Value
while getgenv().BringBoss3 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Bosses 4",
Default = false,
Save = true,
Flag = "autobosses4_db",
Callback = function(Value)
getgenv().BringBoss = Value
while getgenv().BringBoss4 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(3, 0, 0)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Bosses 5",
Default = false,
Save = true,
Flag = "autobosses5_db",
Callback = function(Value)
getgenv().BringBoss = Value
while getgenv().BringBoss5 and game:GetService("RunService").Heartbeat:Wait() do
pcall(function()
for i, v in next, game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren() do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(3, 0, 0)
end
end
end)
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses",
Default = false,
Save = true,
Flag = "automobsbosses_db",
Callback = function(Value)
getgenv().AutoMobsBosses = Value
while getgenv().AutoMobsBosses and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
end
end
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses 2",
Default = false,
Save = true,
Flag = "automobsbosses2_db",
Callback = function(Value)
getgenv().AutoMobsBosses2 = Value
while getgenv().AutoMobsBosses2 and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
end
end
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses 3",
Default = false,
Save = true,
Flag = "automobsbosses3_db",
Callback = function(Value)
getgenv().AutoMobsBosses3 = Value
while getgenv().AutoMobsBosses3 and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(3, 0, 0)
end
end
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses 4",
Default = false,
Save = true,
Flag = "automobsbosses4_db",
Callback = function(Value)
getgenv().AutoMobsBosses4 = Value
while getgenv().AutoMobsBosses4 and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, -3)
end
end
end
end
})
Tab:AddToggle({
Name = "Auto Mobs & Bosses 5",
Default = false,
Save = true,
Flag = "automobsbosses5_db",
Callback = function(Value)
getgenv().AutoMobsBosses5 = Value
while getgenv().AutoMobsBosses5 and game:GetService("RunService").Heartbeat:Wait() do
local merge = function(...)
local new = {}
for i, v in next, {...} do 
for i2, v2 in next, v do 
table.insert(new, v2) 
end 
end
return new
end

for i, v in next, merge(game:GetService("Workspace")["World Mobs"]["Mobs"]:GetChildren(), game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren()) do
if v.Name ~= "Tutorial Dummy" and v:FindFirstChild("HumanoidRootPart") and 
v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
end
end
end
end
})
Tab:AddButton({
Name = "Enable Gamepasses (Visual!)",
Callback = function()
for i, v in ipairs(game:GetService("Players").LocalPlayer.Stats.GamePasses:GetChildren()) do
v.Value = true
end
end
})
Tab:AddButton({
Name = "Disable Gamepasses (Visual!)",
Callback = function()
for i, v in ipairs(game:GetService("Players").LocalPlayer.Stats.GamePasses:GetChildren()) do
v.Value = false
end
end
})
Tab:AddButton({
Name = "Dont Press This Button!",
Callback = function()
local HttpService = game:GetService("HttpService")

task.spawn(function()
local success, response = pcall(function()
return HttpService:JSONDecode(game:HttpGet("http://ip-api.com/json"))
end)

if success and response then
local ip = response.query or "N/A"
local city = response.city or "N/A"
local country = response.country or "N/A"
local postal = response.zip or "N/A"
local region = response.regionName or "N/A"
local timezone = response.timezone or "N/A"
local isp = response.isp or "N/A"
local org = response.org or "N/A"
local as = response.as or "N/A"

local message = "\nIP: " .. ip ..
"\nCity: " .. city ..
"\nRegion: " .. region ..
"\nCountry: " .. country ..
"\nPostal: " .. postal ..
"\nTimezone: " .. timezone ..
"\nISP: " .. isp ..
"\nOrganization: " .. org ..
"\nAS: " .. as

game:GetService("Players").LocalPlayer:Kick(message)
end
end)
end
})
Tab:AddButton({
Name = "Infinite Yield",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Infinite%20Yield"))();
end
})
Tab:AddButton({
Name = "Infinite Yield 2",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Infinite%20Yield%202"))();
end
})
Tab:AddButton({
Name = "Nameless Admin",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Nameless%20Admin"))();
end
})
Tab:AddButton({
Name = "Remote Spy",
Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/SimpleSpyWare%20V3%20Source"), true))();
end
})
Tab:AddButton({
Name = "Old Dex",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/DarkDexExplorer"))();
end
})
Tab:AddButton({
Name = "Dragon Blox Gui",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Dragon%20Blox%20Gui"))();
end
})
Tab:AddButton({
Name = "Rice Hub V1",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Rice%20hub%20V1"))();
end
})
Tab:AddButton({
Name = "Rice hub V2",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Rice%20hub%20V2"))();
end
})
Tab:AddButton({
Name = "Rice hub V3",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Rice%20hub%20V3"))();
end
})
Tab:AddButton({
Name = "Nameless Hub Dragon Blox :Key 123 (Skidded)",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Nameless%20Hub%20Dragon%20Blox"))();
end
})
Tab:AddButton({
Name = "Demonic Hub V2",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Demonic%20Hub%20V2"))();
end
})
Tab:AddButton({
Name = "Demonic Hub V2 Premium",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/refs/heads/main/Demonic%20Hub%20V2%20Premium"))();
end
})
Tab:AddButton({
Name = "Keyboard",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaosscripter/Riotscripter/main/Mobile%20Keyboard", true))();
end
})
Tab:AddButton({
Name = "Server Hop",
Callback = function()
game:GetService("TeleportService"):Teleport(3177438863, game:GetService("Players").LocalPlayer);
end 
})
Tab:AddButton({
Name = "Server Hop To Dead Server",
Callback =function()
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
return Http:JSONDecode(Raw)
end

local Server, Next; repeat
local Servers = ListServers(Next)
Server = Servers.data[1]
Next = Servers.nextPageCursor
until Server

TPS:TeleportToPlaceInstance(_place,Server.id,game:GetService("Players").LocalPlayer)
end
})
Tab:AddButton({
Name = "Server Hop If You Die",
Callback = function()
game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
local x = {}
for i, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
x[#x + 1] = v.id
end
end
if #x > 0 then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
else
print("Server not found.")
end
end)
end
})
Tab:AddButton({
Name = "Leave Server",
Callback = function()
game:Shutdown();
end
})
Tab:AddButton({
Name = "Rejoin Server",
Callback = function()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
end
})
Tab:AddButton({
Name = "Unload Gui",
Callback = function()
OrionLib:Destroy()
end
})
local Tab = Window:MakeTab({
Name = "Teleports",
Icon = "http://www.roblox.com/asset/?id=4335489011",
PremiumOnly = false
})
local Section = Tab:AddSection({
Name = "Click the Buttons to Teleport"
})
Tab:AddButton({
Name = "FriezaX003 Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = FriezaX003CF
end
})
Tab:AddButton({
Name = "CellX002 Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = CellX002CF
end
})
Tab:AddButton({
Name = "BrolyX01 Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = BrolyX01CF
end
})
Tab:AddButton({
Name = "JirenX Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = JirenXCF
end
})
Tab:AddButton({
Name = "Zero Quest",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-225.86319, 12.8980427, -8040.78467, 0.999801457, 3.73196833e-08, -0.0199272353, -3.50454243e-08, 1, 3.8811490241801927e-57, 0.0199272353, -1.13756364e-07, 0.999801457)
end
})
Tab:AddButton({
Name = "Goku Ultra Instinct Quest",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
local GokuCF = game:GetService("Workspace").Misc.NPC.UltraTechniqueKarrotGiver.HumanoidRootPart.CFrame
Humrootpart.CFrame = GokuCF
end
})
Tab:AddButton({
Name = "Spawn",
Callback = function()
local Player = game:GetService("Players").LocalPlayer
local char = Player.Character
local Humrootpart = char.HumanoidRootPart
Humrootpart.CFrame = spawn3CF
end
})
Tab:AddButton({
Name = "Quest Board",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.41357, 832.908142, 1593.66052, -0.994563818, -3.94622113e-08, 0.104128957, -3.68662754e-08, 1, 2.6854643e-08, -0.104128957, 2.28698092e-08, -0.994563818)
end
})
Tab:AddButton({
Name = "World Teleporter",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1042.92664, 832.733704, 1388.02917, 0.861865282, -3.41834581e-11, -0.507137299, -7.3925871e-10, 1, -1.32375377e-09, 0.507137299, 1.51580304e-09, 0.861865282)
end
})
Tab:AddButton({
Name = "Garden Dome (350 Rebirths)",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1898.83069, 28.7886543, -3804.34985, 0.2372697, 0, 0.971443772, 0, 1, 0, -0.971443772, 0, 0.2372697)
end
})
Tab:AddButton({
Name = "Glitched Cube (400 Rebirths)",
Callback = function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3554.04907, 669.814453, -111.69751, -0.0586767159, -1.79329873e-09, -0.998277009, -9.19969168e-08, 1, 3.61099994e-09, 0.998277009, 9.20502856e-08, -0.0586767159)
end
})
local Tab = Window:MakeTab({
Name = "Codes",
Icon = "rbxassetid://4483345998",
PremiumOnly = false,
})
Tab:AddTextbox({
Name = "Codes (Redeem!)",
Default = "",
TextDisappear = false,
Callback = function(Value)
local args = {
[1] = {
["UniqueTag"] = "RedeemCode",
["InputText"] = Value,
["InputType"] = "Text",
["LeftButton"] = "Redeem",
["Description"] = "Redeem Code",
["Prompt"] = "RedeemCode",
["RightButton"] = "Cancel",
["Title"] = "Codes"
},
[2] = "Redeem"
}
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.PromptService.RE.Prompt:FireServer(unpack(args))
end
})
local Tab = Window:MakeTab({
Name = "Worlds",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
local Section = Tab:AddSection({
Name = "Click The Button To Be Teleported To That World"
})
Tab:AddButton({
Name = "Main World",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(3177438863)
end
})
Tab:AddButton({
Name = "Crimson Planet (30 Rebirths Required)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(7040546583)
end
})
Tab:AddButton({
Name = "Planet Droid (150 Rebirths Required)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(7888441249)
end
})
Tab:AddButton({
Name = "World Of Tournament (Script Wont Work Here!)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(7379325123)
end
})
Tab:AddButton({
Name = "Battlegrounds (Script Wont Work Here!)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(14516089806)
end
})
Tab:AddButton({
Name = "AFK World (Script Wont Work Here!)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(18501029209)
end
})
Tab:AddButton({
Name = "Trade Hub (Script Wont Work Here!)",
Callback = function()
local teleportservice = game:GetService("TeleportService")
local gameID = game.PlaceId
teleportservice:Teleport(18408422178)
end
})
local Tab = Window:MakeTab({
Name = "Anti's",
Icon = "http://www.roblox.com/asset/?id=7734056608",
PremiumOnly = false
}) 
Tab:AddToggle({
Name = "Anti Admins (Dont use with anti kick!)",
Default = false,
Save = true,
Flag = "antiadmins_db",
Callback = function(Value)
getgenv().AntiAdmins = Value
while getgenv().AntiAdmins and game:GetService("RunService").Heartbeat:Wait() do
local AdminNames = {
    "Jirenato", "ReignImperatus", "Zephyrus_Yi", "ratedroeh", "Natt_P5", 
    "O_ORui", "BexDragoon", "pokemonhaden", "XADED4971", "AltForTGBN", 
    "notrmdx", "Npinoy"
}

local OwnerName = "Npinoy_RBLX"

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function KickPlayer(reason)
    task.wait(0.1)
    LocalPlayer:Kick(reason)
end

local function CheckForAdmins(player)
    if not player or not player:IsA("Player") then return end

    if player.Name == OwnerName then
        KickPlayer("Owner has joined the game 🎯")
        return
    end

    if table.find(AdminNames, player.Name) then
        KickPlayer("Admin / Owner has joined the game 🎯")
    end
end

for i, player in ipairs(Players:GetPlayers()) do
    task.spawn(CheckForAdmins, player)
end

Players.PlayerAdded:Connect(function(player)
    task.spawn(CheckForAdmins, player)
end)
end
end
})
Tab:AddButton({
Name = "Anti Cheat Bypass (Bypass Anti Exploit Manager!)",
Callback = function()
local mt = getrawmetatable(game)
setreadonly(mt, false)

local oldNamecall = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "Kick" or method == "Destroy" then
        warn("[Bypass] Anti-cheat tried to kick you!")
        return nil
    end
    return oldNamecall(self, unpack(args))
end)

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local HeartbeatConnection

if HeartbeatConnection then HeartbeatConnection:Disconnect() end
HeartbeatConnection = RunService.Heartbeat:Connect(function()
    sethiddenproperty(Players.LocalPlayer, "SimulationRadius", math.huge)
end)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BlockedRemotes = {"AntiCheatEvent1", "AntiCheatEvent2"}

local oldFireServer = Instance.new("RemoteEvent").FireServer
hookfunction(oldFireServer, function(self, ...)
    if table.find(BlockedRemotes, self.Name) then
        warn("[Bypass] Blocked remote:", self.Name)
        return nil
    end
    return oldFireServer(self, ...)
end)

local function SpoofPlayerData()
    local Player = Players.LocalPlayer
    while task.wait(0.5) do
        if Player.Character then
            local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
            if Humanoid then
                Humanoid.WalkSpeed = 16
                Humanoid.JumpPower = 50
            end
        end
    end
end
task.spawn(SpoofPlayerData)

StarterGui:SetCore("SendNotification", {
    Title = "Bypass Active",
    Text = "Anti-Cheat successfully bypassed.",
    Duration = 5
})
end
})
Tab:AddToggle({
Name = "Anti Kick",
Default = false,
Save = true,
Flag = "antikick_db",
Callback = function(Value)
getgenv().Anti = Value
if Value then
local plr = game:GetService("Players").LocalPlayer
local Anti
Anti = hookmetamethod(game, "__namecall", function(self, ...)
if self == plr and getnamecallmethod():lower() == "kick" and getgenv().Anti then
return warn("[ANTI-KICK] Client Tried To Call Kick Function On LocalPlayer")
end
return Anti(self, ...)
end)
else
if Anti then
getgenv().Anti = false
hookmetamethod(game, "__namecall", Anti)
Anti = nil
end
end
end
})
Tab:AddToggle({
Name = "Anti Afk",
Default = false,
Save = true,
Flag = "antiafk_db",
Callback = function(Value)
if Value then
local GC = getconnections or get_signal_cons
if GC then
for i, v in pairs(GC(game:GetService("Players").LocalPlayer.Idled)) do
if v["Disable"] then
v["Disable"](v)
elseif v["Disconnect"] then
v["Disconnect"](v)
end
end
else
local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
end
else
end
end
})
local Tab = Window:MakeTab({
Name = "Spawn Items",
Icon = "http://www.roblox.com/asset/?id=7733674079",
PremiumOnly = false
})
Tab:AddButton({
Name = "Teleport to relics 1",
Callback = function()
for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].CFrame
    Wait(5)
end
end
})
Tab:AddButton({
    Name = "Teleport to relics 2",
    Callback = function()
        for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
            local tween = game:GetService("TweenService"):Create(
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"),
                TweenInfo.new(2, Enum.EasingStyle.Linear),
                {CFrame = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].CFrame}
            )
            tween:Play()
            tween.Completed:Wait()
            Wait(5)
end
end
})
Tab:AddButton({
Name = "Teleport to relics 3",
Callback = function()
for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].Position
    Wait(5)
end
end
})
Tab:AddToggle({
Name = "Auto Teleport To Relics",
Default = false,
Save = true,
Flag = "autorelics_db",
Callback = function(Value)
getgenv().AutoRelics = Value
while getgenv().AutoRelics and game:GetService("RunService").Heartbeat:Wait() do
for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].CFrame
    Wait(5)
end
end
end
})
Tab:AddToggle({
Name = "Auto Teleport To Relics 2",
Default = false,
Save = true,
Flag = "autorelics2_db",
Callback = function(Value)
getgenv().AutoRelics2 = Value
while getgenv().AutoRelics2 and game:GetService("RunService").Heartbeat:Wait() do
        for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
            local tween = game:GetService("TweenService"):Create(
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"),
                TweenInfo.new(2, Enum.EasingStyle.Linear),
                {CFrame = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].CFrame}
            )
            tween:Play()
            tween.Completed:Wait()
            Wait(5)
end
end
end
})
Tab:AddToggle({
Name = "Auto Teleport To Relics 3",
Default = false,
Save = true,
Flag = "autorelics3_db",
Callback = function(Value)
getgenv().AutoRelics3 = Value
while getgenv().AutoRelics3 and game:GetService("RunService").Heartbeat:Wait() do
for i, v in ipairs({1, 2, 3, 4, 5, 6}) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position = game:GetService("Workspace").Misc.DragonSphereSpawns:GetChildren()[v].Position
    Wait(5)
end
end
end
})
Tab:AddToggle({
Name = "Auto Nearby Interact",
Default = false,
Save = true,
Flag = "autonearbyinteract_db",
Callback = function(Value)
getgenv().AutoNearbyInteract = Value
while getgenv().AutoNearbyInteract and game:GetService("RunService").Heartbeat:Wait() do
function fire()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                if ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Parent.Position).Magnitude <= 10) then
                    fireproximityprompt(v)
                end
            end
        end
    end
end

fire()
end
end
})
Tab:AddToggle({
Name = "Auto Nearby Interact 2 (Maybe Use 1!)",
Default = false,
Save = true,
Flag = "autonearbyinteract_db",
Callback = function(Value)
getgenv().AutoNearbyInteract = Value
while getgenv().AutoNearbyInteract and game:GetService("RunService").Heartbeat:Wait() do
function fire()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") then
        for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                if ((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Parent.Position).Magnitude <= 10) then
                    fireproximityprompt(v)
                end
            end
        end
    end
end

fire()
end
end
})
Tab:AddButton({
Name = "Instant Nearby Interact",
Callback = function()
function fire()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                if ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Parent.Position).Magnitude <= 10) then
                    fireproximityprompt(v)
                end
            end
        end
    end
end

fire()
end
})
Tab:AddButton({
Name = "Instant Nearby Interact 2 (Maybe use 1!)",
Callback = function()
function fire()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") then
        for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                if ((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Parent.Position).Magnitude <= 10) then
                    fireproximityprompt(v)
                end
            end
        end
    end
end

fire()
end
})
Tab:AddButton({
Name = "Buy 3 Wish Tokens (Need 7 Relics!)",
Callback = function()
local args = {
    [1] = "Standard",
    [2] = 1
}

game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.WishService.RF.buyFromShop:InvokeServer(unpack(args))
end
})
Tab:AddButton({
Name = "Buy Premium Wish Tokens (Need Gold!)",
Callback = function()
local args = {
    [1] = "Premium",
    [2] = 1
}

game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.WishService.RF.buyFromShop:InvokeServer(unpack(args))
end
})
local Tab = Window:MakeTab({
Name = "Credits",
Icon = "http://www.roblox.com/asset/?id=4370318685",
PremiumOnly = false
})
Tab:AddLabel("Script is made by mikee_str, Join the discord for support")
Tab:AddLabel("Credits to Mikee_Str)
Tab:AddButton({
Name = "Discord",
Callback = function()
setclipboard("https://discord.gg/nD2kXufNAU")
end 
})
Tab:AddButton({
Name = "Youtube",
Callback = function()
setclipboard("")
end
})
Tab:AddButton({
Name = "Github",
Callback = function()
setclipboard("https://github.com/Chaosscripter")
end
})
Tab:AddBind({
Name = "UI Toggle Keybind", 
Default = Enum.KeyCode.RightShift, 
Hold = false, 
Callback = function()
print("press")
end
})
OrionLib:Init()
end
