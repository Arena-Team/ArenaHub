local library = loadstring(game:HttpGet("https://pastebin.com/raw/D6VASX2m"))()

local Window = Library:CreateWindow({
	Title = "Arena X Hub | Fisch",
	Icon = 60347362117
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Choose_Position = nil
local Player = game:GetService("Players")
local LocalPlayer = Player.LocalPlayer
local Char = LocalPlayer.Character
local Humanoid = Char.Humanoid
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GuiService = game:GetService("GuiService")

function TP(p)
	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(p)
end

local Tab1 = Window:CreateTab({
	Title = "Farming Tab",
	Icon = "home"
})

local Section1 = Tab1:CreateSection({
	Title = "\\\\ Fisching //",
	Side = "Left"
})

local Section2 = Tab1:CreateSection({
	Title = "\\\\ Status Zone //",
	Side = "Right"
})

local ChoosePosition = Section1:CreateLabel({
	Title = "[📍] Position : nil"
})

Section1:CreateButton({
Title = "Choose Position",
Callback = function()
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
Choose_Position = LocalPlayer.Character.HumanoidRootPart.CFrame
ChoosePosition:Set("[📍] Position : "..tostring(math.floor(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.X)).." X "..tostring(math.floor(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y)).." Y "..tostring(math.floor(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Z)).." Z")
end
end})

Section1:CreateToggle({
Title = "Auto Fisching",
Value = false,
Callback = function(Value)
_G.AutoCast = Value
autocastposition = Value
wait()
spawn(function()
while autocastposition == true do        
wait()
local player = game.Players.LocalPlayer
if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then                 player.Character.HumanoidRootPart.CFrame = Choose_Position
end
if autocastposition and Teleposi then                                teleportToSavedPosition()
end      
end
end)
spawn(function()
while _G.AutoCast == true do
if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
local Highlight = Instance.new("Highlight")           Highlight.FillColor = Color3.fromRGB(24, 255, 24)
Highlight.OutlineColor = Color3.fromRGB(24,255,24)         		
Highlight.Parent = game.Players.LocalPlayer.Character
end        
local Rod = Char:FindFirstChildOfClass("Tool")
task.wait(.1)
Rod.events.cast:FireServer(100,1)
end
end)
spawn(function()
while Value == false do
if Value == false then
game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
end
end
end)
end})

Section1:CreateToggle({
Title = "Teleport To Choose Position",
Value = false,
Callback = function(Value)
autocastposition = Value
wait()
spawn(function()
while autocastposition == true do        
wait()
local player = game.Players.LocalPlayer
if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then                 player.Character.HumanoidRootPart.CFrame = Choose_Position
end
if autocastposition and Teleposi then                                teleportToSavedPosition()
end      
end
end)
end})

_G.AutoShake = true
_G.AutoReel = true

spawn(function()
while _G.AutoShake == true do        
wait()
task.wait(0.01)
local PlayerGUI = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
local shakeUI = PlayerGUI:FindFirstChild("shakeui")
if shakeUI and shakeUI.Enabled then
local safezone = shakeUI:FindFirstChild("safezone")
if safezone then
local button = safezone:FindFirstChild("button")
if button and button:IsA("ImageButton") and button.Visible then
GuiService.SelectedObject = button                             VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)                              VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
end
end
end
end
end)

spawn(function()
while _G.AutoReel == true do        
wait()
for i,v in pairs(LocalPlayer.PlayerGui:GetChildren()) do
if v:IsA "ScreenGui" and v.Name == "reel"then
if v:FindFirstChild "bar" then
wait(.15)                        ReplicatedStorage.events.reelfinished:FireServer(100,true)
end
end
end
end
end)

spawn(function()
while wait() do
if _G.AutoCast then
pcall(function()
for i,v in pairs(LocalPlayer.Backpack:GetChildren()) do
if v:IsA ("Tool") and v.Name:lower():find("rod") then
equipitem(v.Name)
end
end
end)
end
end
end)

local Isonade = Section2:CreateLabel({
	Title = ".."
})

task.spawn(function()
	while task.wait() do
		pcall(function()
			if game.Workspace.zones.fishing:FindFirstChild("Isonade") or game.Workspace.zones.fishing:FindFirstChild("Isonade") then
				Isonade:Set("🐬 | Isonade : 🟢")
			else
				Isonade:Set("🐬 | Isonade : ❌")
			end
		end)
	end
end)

local Hammerhead = Section2:CreateLabel({
	Title = ".."
})

task.spawn(function()
	while task.wait() do
		pcall(function()
			if game.Workspace.zones.fishing:FindFirstChild("Great Hammerhead Shark") or game.Workspace.zones.fishing:FindFirstChild("Great Hammerhead Shark") then
				Hammerhead:Set("🐡 | Great Hammerhead Shark : 🟢")
			else
				Hammerhead:Set("🐡 | Great Hammerhead Shark : ❌")
			end
		end)
	end
end)

local Great = Section2:CreateLabel({
	Title = ".."
})

task.spawn(function()
	while task.wait() do
		pcall(function()
			if game.Workspace.zones.fishing:FindFirstChild("Great White Shark") or game.Workspace.zones.fishing:FindFirstChild("Great White Shark") then
				Great:Set("🐳 | Whale Shark : 🟢")
			else
				Great:Set("🐳 | Whale Shark : ❌")
			end
		end)
	end
end)

local Serpent = Section2:CreateLabel({
	Title = ".."
})

task.spawn(function()
	while task.wait() do
		pcall(function()
			if game.Workspace.zones.fishing:FindFirstChild("The Depths - Serpent") or game.Workspace.zones.fishing:FindFirstChild("The Depths - Serpent") then
				Serpent:Set("🐛 | The Depths - Serpent : 🟢")
			else
				Serpent:Set("🐛 | The Depths - Serpent : ❌")
			end
		end)
	end
end)

local Megalodon = Section2:CreateLabel({
	Title = ".."
})

task.spawn(function()
	while task.wait() do
		pcall(function()
			if game.Workspace.zones.fishing:FindFirstChild("Megalodon") or game.Workspace.zones.fishing:FindFirstChild("Megalodon") then
				Megalodon:Set("🦈 | Megalodon : 🟢")
			else
				Megalodon:Set("🦈 | Megalodon : ❌")
			end
		end)
	end
end)

local Golden = Section2:CreateLabel({
	Title = ".."
})

task.spawn(function()
	while task.wait() do
		pcall(function()
			if game.Workspace.zones.fishing:FindFirstChild("Golden Tide Pools") or game.Workspace.zones.fishing:FindFirstChild("Golden Tide Pools") then
				Golden:Set("🪔 | Golden Tide Pools : 🟢")
			else
				Golden:Set("🪔 | Golden Tide Pools : ❌")
			end
		end)
	end
end)

local Section2 = Tab1:CreateSection({
	Title = "\\\\ Fisching Zone //",
	Side = "Right"
})

Section2:CreateToggle({
Title = "Auto Find Isonade",
Value = false,
Callback = function(Value)
_G.AutoFindIsonade = Value
end})

       spawn(function()
            pcall(function()
                while wait() do
                    if _G.AutoFindIsonade then
                        for i,v in pairs(game.Workspace.zones.fishing:GetChildren()) do
                            if game.Workspace.zones.fishing:FindFirstChild("Isonade") then

local offset = Vector3.new(25, 140, 25)
                                    TP(CFrame.new(game.Workspace.zones.fishing.Isonade.Position + offset))
                                    end
                                end
                            end
                        end
                    end)
                end)

Section2:CreateToggle({
Title = "Auto Find Great Hammerhead Shark",
Value = false,
Callback = function(Value)
_G.AutoFindGreatHammerheadShark = Value
end})

       spawn(function()
            pcall(function()
                while wait() do
                    if _G.AutoFindGreatHammerheadShark then
                        for i,v in pairs(game.Workspace.zones.fishing:GetChildren()) do
                            if game.Workspace.zones.fishing:FindFirstChild("Great Hammerhead Shark") then

local offset = Vector3.new(0, 135, 0)
                                    TP(CFrame.new(game.Workspace.zones.fishing["Great Hammerhead Shark"].Position + offset))
                                    end
                                end
                            end
                        end
                    end)
                end)

Section2:CreateToggle({
Title = "Auto Find Great White Shark",
Value = false,
Callback = function(Value)
_G.AutoFindGreatWhiteShark = Value
end})

       spawn(function()
            pcall(function()
                while wait() do
                    if _G.AutoFindGreatWhiteShark then
                        for i,v in pairs(game.Workspace.zones.fishing:GetChildren()) do
                            if game.Workspace.zones.fishing:FindFirstChild("Great White Shark") then

local offset = Vector3.new(0, 135, 0)
                                    TP(CFrame.new(game.Workspace.zones.fishing["Great White Shark"].Position + offset))
                                    end
                                end
                            end
                        end
                    end)
                end)

Section2:CreateToggle({
Title = "Auto Find The Depths - Serpent",
Value = false,
Callback = function(Value)
_G.AutoFindTheDepthsSerpent = Value
end})

       spawn(function()
            pcall(function()
                while wait() do
                    if _G.AutoFindTheDepthsSerpent then
                        for i,v in pairs(game.Workspace.zones.fishing:GetChildren()) do
                            if game.Workspace.zones.fishing:FindFirstChild("The Depths - Serpent") then

local offset = Vector3.new(0, 50, 0)
                                    TP(CFrame.new(game.Workspace.zones.fishing["The Depths - Serpent"].Position + offset))
                                    end
                                end
                            end
                        end
                    end)
                end)

Section2:CreateToggle({
Title = "Auto Find Megalodon",
Value = false,
Callback = function(Value)
_G.AutoFindMegalodon = Value
end})

       spawn(function()
            pcall(function()
                while wait() do
                    if _G.AutoFindMegalodon then
                        for i,v in pairs(game.Workspace.zones.fishing:GetChildren()) do
                            if game.Workspace.zones.fishing:FindFirstChild("Megalodon") then

local offset = Vector3.new(0, 50, 0)
                                    TP(CFrame.new(game.Workspace.zones.fishing["Megalodon"].Position + offset))
                                    end
                                end
                            end
                        end
                    end)
                end)

Section2:CreateToggle({
Title = "Auto Find Golden Tide Pools",
Value = false,
Callback = function(Value)
_G.AutoGoldenTidePools = Value
end})

       spawn(function()
            pcall(function()
                while wait() do
                    if _G.AutoGoldenTidePools then
                        for i,v in pairs(game.Workspace.zones.fishing:GetChildren()) do
                            if game.Workspace.zones.fishing:FindFirstChild("Golden Tide Pools") then

local offset = Vector3.new(0, 50, 0)
                                    TP(CFrame.new(game.Workspace.zones.fishing["Megalodon"].Position + offset))
                                    end
                                end
                            end
                        end
                    end)
                end)

local Section1 = Tab1:CreateSection({
Title = "\\\\ Selling //",
Side = "Left"
})

Section1:CreateSlider({
	Title = "Choose Delay Selling",
	TextEnding = " %",
	Min = 1,
	Max = 600,
	Value = 120,
	Callback = function(Value)
        _G.AutoSellDelay = Value
	end})

Section1:CreateToggle({
Title = "Enable Sell Fishing",
Value = false,
Callback = function(Value)
_G.SellAll = Value
spawn(function()
while _G.SellAll == true do        
wait()
game:GetService("ReplicatedStorage").events.SellAll:InvokeServer()
task.wait(_G.AutoSellDelay)
end
end)
end})

local Tab2 = Window:CreateTab({
	Title = "Sub Farming Tab",
	Icon = "thermometer"
})

local Section3 = Tab2:CreateSection({
	Title = "\\\\ Treasure //",
	Side = "Left"
})

Section3:CreateButton({
Title = "Teleport to Jack Marrow",
Callback = function()
TP(CFrame.new(-2824.359, 214.311, 1518.130))
end})

Section3:CreateButton({
Title = "Repair Treasure Map [🗺️]",
Callback = function()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                if v.Name == "Treasure Map" then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    workspace.world.npcs["Jack Marrow"].treasure.repairmap:InvokeServer()
                end
            end
end})

Section3:CreateToggle({
Title = "Auto Keep Treasure",
Value = false,
Callback = function(Value)
_G.AutoCollectTreasure = Value
spawn(function()
    pcall(function()
        while _G.AutoCollectTreasure do wait()
                      for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
                if v.ClassName == "ProximityPrompt" then
                    v.HoldDuration = 0
                end
            end
            for i, v in pairs(workspace.world.chests:GetDescendants()) do
                if v:IsA("Part") and v:FindFirstChild("ChestSetup") then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    for _, v in pairs(workspace.world.chests:GetDescendants()) do
                        if v.Name == "ProximityPrompt" then
                            fireproximityprompt(v)
                        end
                    end
                    task.wait(1)
                end 
            end
        end
    end)
end)
end})

local Section3 = Tab2:CreateSection({
	Title = "\\\\ Appraiser //",
	Side = "Left"
})

Section3:CreateToggle({
Title = "Auto Appraiser\nView [450C$]",
Value = false,
Callback = function(Value)
_G.AutoAppraiser = Value
spawn(function()
while _G.AutoAppraiser == true do        
wait()
workspace.world.npcs.Appraiser.appraiser.appraise:InvokeServer()
end
end)
end})

local Section4 = Tab2:CreateSection({
	Title = "\\\\ Money | Risk //",
	Side = "Right"
})

Section4:CreateButton({
Title = "Give Money | Risk",
Callback = function()
local maxmoney = 10000000
local rep = game:GetService("ReplicatedStorage")
local myplr = rep.playerstats[game.Players.LocalPlayer.Name]
while maxmoney > myplr.Stats.coins.Value do task.wait()
    rep:WaitForChild("packages"):WaitForChild("Net"):WaitForChild("RE/DailyReward/Claim"):FireServer()
end
end})

local Tab3 = Window:CreateTab({
	Title = "Miscellaneou Tab",
	Icon = "file-text"
})

local Section5 = Tab3:CreateSection({
	Title = "\\\\ Local //",
	Side = "Left"
})

Section5:CreateSlider({
	Title = "Choose Walk Speed",
	TextEnding = " %",
	Min = 1,
	Max = 500,
	Value = 16,
	Callback = function(Value) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end})

Section5:CreateSlider({
	Title = "Choose Jump Power",
	TextEnding = " %",
	Min = 1,
	Max = 500,
	Value = 50,
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end})

local Section6 = Tab3:CreateSection({
	Title = "\\\\ Miscellaneou //",
	Side = "Left"
})

Section6:CreateToggle({
Title = "Noclip",
Value = false,
Callback = function(Value)
_G.NoClip = Value
spawn(function()
  if _G.NoClip == true then
  _G.conn = game:GetService("RunService").Stepped:Connect(function()
     for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") then
           v.CanCollide = false    
        end
     end
   end)
  else
   _G.conn:Disconnect()
  end
end)
end})

Section6:CreateToggle({
Title = "Walk On Water",
Value = false,
Callback = function(Value)
		for i,v in pairs(workspace.zones.fishing:GetChildren()) do
			if v.Name == "Ocean" then
				v.CanCollide = Value
			end
		end
end})

Section6:CreateToggle({
Title = "Bypass Radar",
Value = false,
Callback = function(Value)
        for _, v in pairs(game:GetService("CollectionService"):GetTagged("radarTag")) do
			if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
				v.Enabled = Value
			end
		end
end})

function GetPosition()
    local character = game.Players.LocalPlayer.Character
    if not character then
        return {0, 0, 0}  -- Return default position if the character is not found
    end

    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then
        return {0, 0, 0}  -- Return default position if HumanoidRootPart is not found
    end

    return {humanoidRootPart.Position.X, humanoidRootPart.Position.Y, humanoidRootPart.Position.Z}
end

function ExportValue(arg1, arg2)
    if type(arg1) ~= "number" then
        warn("Invalid argument passed to ExportValue")
        return 0  -- Return a default value if the argument is invalid
    end
    return tonumber(string.format("%." .. (arg2 or 1) .. 'f', arg1))
end

local Player = game.Players.LocalPlayer
local PlayerGui = Player and Player.PlayerGui

if not PlayerGui then
    warn("PlayerGui not found!")
    return
end

Section6:CreateToggle({
Title = "Bypass Gps",
Value = false,
Callback = function(Value)
_G.BypassGps = Value
spawn(function()
    while _G.BypassGps do
        wait()

        local XyzClone = game:GetService("ReplicatedStorage").resources.items.items.GPS.GPS.gpsMain.xyz:Clone()
        XyzClone.Parent = PlayerGui:WaitForChild("hud"):WaitForChild("safezone"):WaitForChild("backpack")

        local Pos = GetPosition()
        local StringInput = string.format("%s,%s,%s", ExportValue(Pos[1]), ExportValue(Pos[2]), ExportValue(Pos[3]))
        XyzClone.Text = "<font color='#ff4949'>X</font><font color='#a3ff81'>Y</font><font color='#626aff'>Z</font>: "..StringInput

        local BypassGpsLoop
        BypassGpsLoop = game:GetService("RunService").Heartbeat:Connect(function()
            local Pos = GetPosition()
            StringInput = string.format("%s,%s,%s", ExportValue(Pos[1]), ExportValue(Pos[2]), ExportValue(Pos[3]))
            XyzClone.Text = "<font color='#ff4949'>X</font><font color='#a3ff81'>Y</font><font color='#626aff'>Z</font>: "..StringInput
        end)
        spawn(function()
            while _G.BypassGps do
                wait()
            end

            if XyzClone and XyzClone.Parent then
                XyzClone:Destroy()
            end
            if BypassGpsLoop then
                BypassGpsLoop:Disconnect()
            end
        end)
    end
end)
end})

Section6:CreateToggle({
Title = "Remove Fog",
Value = false,
Callback = function(Value)
if Value == true then
            if game:GetService("Lighting"):FindFirstChild("Sky") then
                game:GetService("Lighting"):FindFirstChild("Sky").Parent = game:GetService("Lighting").bloom
            end
        else
            if game:GetService("Lighting").bloom:FindFirstChild("Sky") then
                game:GetService("Lighting").bloom:FindFirstChild("Sky").Parent = game:GetService("Lighting")
            end
        end
end})

local Section7 = Tab3:CreateSection({
	Title = "\\\\ Players //",
	Side = "Right"
})

local plyser = Section7:CreateLabel({
	Title = ".."
})

    spawn(function()
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                    if i == 15 then
                        plyser:Set("👼 Players 👼 : ".." "..i.." ".."/".." ".."15".." ".."(Max)")
                    elseif i == 1 then
                        plyser:Set("👼 Players 👼 : ".." "..i.." ".."/".." ".."15")
                    else
                        plyser:Set("👼 Players 👼 : ".." "..i.." ".."/".." ".."15")
                    end
                end
            end)
        end
    end)

PlayerList = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
table.insert(PlayerList,v.Name)
end

local TpPlayer

local SelectedPly = Section7:CreateDropdown({
	Title = "Choose Players",
	List = PlayerList,
	Multi = false,
	Value = nil,
	Callback = function(Value)
   TpPlayer = Value
end})

Section7:CreateButton({
Title = "Teleport To Players",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game.Players[TpPlayer].Character.HumanoidRootPart.CFrame * CFrame.new(0,20,1)
end})

Section7:CreateButton({
Title = "Refresh Player List",
Callback = function()
    PlayerList = {}
    SelectedPly:Clear()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do  
        table.insert(PlayerList,v.Name)
    end
end})
