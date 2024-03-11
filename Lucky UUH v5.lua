
    local Rayfield = nil
	if isfile("UI/DecayingField.lua") then
		Rayfield = loadstring(readfile("UI/ArrayField.lua"))()
	else
		Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/RyXeleron/Script-Storage/main/DecayingField.lua"))()
	end

	-- local Rayfield = (isfile("UI/DecayingField.lua") and loadstring(readfile("UI/DecayingField.lua"))()) or loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafacasari/ArrayField/main/v2.lua"))()
	assert(Rayfield, "Oopps! Rayfield has not been loaded. Maybe try re-joining?") 

	getgenv().SecureMode = true	
	getgenv().DisableRayfieldAutoLoad = true
	
-- Detect if the script has executed by AutoExec
local AutoExecuted = false
if not game:IsLoaded() then AutoExecuted = true end

repeat task.wait() until game.PlaceId ~= nil
if not game:IsLoaded() then game.Loaded:Wait() end

--//-------------- SERVICES ----------------//*
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local HttpService = game:GetService("HttpService")
local InputService = game:GetService('UserInputService')
local RunService = game:GetService('RunService')
local ContentProvider = game:GetService("ContentProvider")

--//*--------- GLOBAL VARIABLES -----------//*
local ScriptIsCurrentlyBusy = false
local Character = nil
local Humanoid = nil
local HumanoidRootPart = nil
local CurrentWorld = ""
local CurrentPosition = nil

local Settings_DisableRendering = true

local Webhook_Enabled = true
local Webhook_URL = "https://discord.com/api/webhooks/1145966672386212001/3KTyfzQRQMHXSKXKMSZgjUnuQdK5m2Y4hv3N7CM65gy4u_l8ra2PvsIaeLlIsdKDREn8"

LocalPlayer.CharacterAdded:Connect(function(char) 
	Character = char
	Humanoid = Character:WaitForChild("Humanoid")
	HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
end)

--//*--------- CORE SCRIPT -----------//*

local Window = Rayfield:CreateWindow({
   Name = "UUH V5",
   LoadingTitle = "UUH V5",
   LoadingSubtitle = "by bread/glucose",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Ry", -- Create a custom folder for your hub/game
      FileName = "Raccoon Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Raccoon Hub", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
      Actions = {
            [1] = {
                Text = 'Click here to copy the key link <--',
                OnPress = function()
                    print('Pressed')
                end,
                }
            },
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


Rayfield:ToggleOldTabStyle(true)

local Tab = Window:CreateTab("Master", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Section Example",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element
-- for master HBE
getgenv().HitboxX = 5
getgenv().HitboxY = 5
getgenv().HitboxZ = 5
-- for humanoidrootpart HBE
getgenv().HRPHitboxX = 5
getgenv().HRPHitboxY = 5
getgenv().HRPHitboxZ = 5
-- for head HBE... wait why am i telling you this, its literally in the name. Wait no why are you reading this, if you read this your gay and in love with pastries
getgenv().HeadHitboxX = 5
getgenv().HeadHitboxY = 5
getgenv().HeadHitboxZ = 5
getgenv().HitboxTransparency = 0.95

getgenv().HitboxStatus = false
getgenv().TeamCheck = false
getgenv().FriendCheck = false
getgenv().TargetPart = false
local Toggle = Tab:CreateToggle({
   Name = "Enable/Disable Hitboxes",
   CurrentValue = false,
   Flag = "HBEMain", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HitboxStatus = Value
    game:GetService('RunService').RenderStepped:connect(function()
		if HitboxStatus == true and getgenv().TargetPart == false and TeamCheck == false and FriendCheck == false then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
        elseif HitboxStatus == true and getgenv().TargetPart == false and TeamCheck == false and FriendCheck == true then
            for i,v in next, game:GetService('Players'):GetPlayers() do
                for i2,v2 in pairs(game:GetService('Players'):GetChildren()) do
                    if v.Name ~= game:GetService('Players').LocalPlayer.Name and not v2:IsFriendsWith(game:GetService('Players').LocalPlayer.UserId) then
                        pcall(function()
                            v.Character.HumanoidRootPart.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
                            v.Character.HumanoidRootPart.Transparency = HitboxTransparency
                            v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
                            v.Character.HumanoidRootPart.Material = "Neon"
                            v.Character.HumanoidRootPart.CanCollide = false
                        end)
                    end
                end
			end
        elseif HitboxStatus == true and getgenv().TargetPart == false and TeamCheck == true and FriendCheck == false then
            for i,v in next, game:GetService('Players'):GetPlayers() do
				if game:GetService('Players').LocalPlayer.Team ~= v.Team then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
        elseif HitboxStatus == true and getgenv().TargetPart == false and TeamCheck == true and FriendCheck == true then
            for i,v in next, game:GetService('Players'):GetPlayers() do
				if game:GetService('Players').LocalPlayer.Team ~= v.Team and not game:GetService('Players'):IsFriendsWith(UserId) then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		else
		    for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(2,2,1)
						v.Character.HumanoidRootPart.Transparency = 1
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
						v.Character.HumanoidRootPart.Material = "Plastic"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		end
	end)
	-- TORSO HITBOX PART
	
	-- HEAD HITBOX PART
 game:GetService('RunService').RenderStepped:connect(function()
		if HitboxStatus == true and getgenv().TargetPart == true and TeamCheck == false and FriendCheck == false then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.Head.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
						v.Character.Head.Transparency = HitboxTransparency
						v.Character.Head.BrickColor = BrickColor.new("Really black")
						v.Character.Head.Material = "Neon"
						v.Character.Head.CanCollide = false
					end)
				end
			end
        elseif HitboxStatus == true and getgenv().TargetPart == true and TeamCheck == false and FriendCheck == true then
            for i,v in next, game:GetService('Players'):GetPlayers() do
                for i2,v2 in pairs(game:GetService('Players'):GetChildren()) do
                    if v.Name ~= game:GetService('Players').LocalPlayer.Name and not v2:IsFriendsWith(game:GetService('Players').LocalPlayer.UserId) then
                        pcall(function()
                            v.Character.Head.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
                            v.Character.Head.Transparency = HitboxTransparency
                            v.Character.Head.BrickColor = BrickColor.new("Really black")
                            v.Character.Head.Material = "Neon"
                            v.Character.Head.CanCollide = false
                        end)
                    end
                end
			end
        elseif HitboxStatus == true and getgenv().TargetPart == true and TeamCheck == true and FriendCheck == false then
            for i,v in next, game:GetService('Players'):GetPlayers() do
				if game:GetService('Players').LocalPlayer.Team ~= v.Team then
					pcall(function()
						v.Character.Head.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
						v.Character.Head.Transparency = HitboxTransparency
						v.Character.Head.BrickColor = BrickColor.new("Really black")
						v.Character.Head.Material = "Neon"
						v.Character.Head.CanCollide = false
					end)
				end
			end
        elseif HitboxStatus == true and getgenv().TargetPart == true and TeamCheck == true and FriendCheck == true then
            for i,v in next, game:GetService('Players'):GetPlayers() do
				if game:GetService('Players').LocalPlayer.Team ~= v.Team and not game:GetService('Players'):IsFriendsWith(UserId) then
					pcall(function()
						v.Character.Head.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
						v.Character.Head.Transparency = HitboxTransparency
						v.Character.Head.BrickColor = BrickColor.new("Really black")
						v.Character.Head.Material = "Neon"
						v.Character.Head.CanCollide = false
					end)
				end
			end
		else
		    for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.Head.Size = Vector3.new(2,2,1)
						v.Character.Head.Transparency = 1
						v.Character.Head.BrickColor = BrickColor.new("Medium stone grey")
						v.Character.Head.Material = "Plastic"
						v.Character.Head.CanCollide = false
					end)
				end
			end
		end
	end)	
	-- HEAD HITBOX PART
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "HRP/Head (for toggle above)",
   CurrentValue = false,
   Flag = "TargetPart1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().TargetPart = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Highlight ESP",
   CurrentValue = true,
   Flag = "Highlight1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
getgenv().enabled = Value --Toggle on/off
loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/Highlight-ESP.lua"))()

local c = workspace.CurrentCamera
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local rs = game:GetService("RunService")

local function esp(p,cr)
	local h = cr:WaitForChild("Humanoid")
	local hrp = cr:WaitForChild("Head")

	local text = Drawing.new("Text")
	text.Visible = false
	text.Center = true
	text.Outline = false 
	text.Font = 3
	text.Size = 16.16
	text.Color = Color3.new(170,170,170)

	local conection
	local conection2
	local conection3

	local function dc()
		text.Visible = false
		text:Remove()
		if conection then
			conection:Disconnect()
			conection = nil 
		end
		if conection2 then
			conection2:Disconnect()
			conection2 = nil 
		end
		if conection3 then
			conection3:Disconnect()
			conection3 = nil 
		end
	end

	conection2 = cr.AncestryChanged:Connect(function(_,parent)
		if not parent then
			dc()
		end
	end)

	conection3 = h.HealthChanged:Connect(function(v)
		if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
			dc()
		end
	end)

	conection = rs.RenderStepped:Connect(function()
		local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
		if hrp_onscreen and ESPName == true then
			text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y - 27)
			text.Text = p.DisplayName.." (@"..p.Name..")"
			text.Visible = true
		else
			text.Visible = false
		end
	end)
end

local function p_added(p)
	if p.Character then
		esp(p,p.Character)
	end
	p.CharacterAdded:Connect(function(cr)
		esp(p,cr)
	end)
end

for i,p in next, ps:GetPlayers() do 
	if p ~= lp then
		p_added(p)
	end
end

ps.PlayerAdded:Connect(p_added)
end,
})

getgenv().HRPStatus = false
local Toggle = Tab:CreateToggle({
   Name = "Off/On HumanoidRootPart HBE",
   CurrentValue = false,
   Flag = "HBEHRP", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HitboxStatus = Value
    game:GetService('RunService').RenderStepped:connect(function()
		if HRPStatus == true and TeamCheck == false and FriendCheck == false then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
        elseif HRPStatus == true and TeamCheck == false and FriendCheck == true then
            for i,v in next, game:GetService('Players'):GetPlayers() do
                for i2,v2 in pairs(game:GetService('Players'):GetChildren()) do
                    if v.Name ~= game:GetService('Players').LocalPlayer.Name and not v2:IsFriendsWith(game:GetService('Players').LocalPlayer.UserId) then
                        pcall(function()
                            v.Character.HumanoidRootPart.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
                            v.Character.HumanoidRootPart.Transparency = HitboxTransparency
                            v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
                            v.Character.HumanoidRootPart.Material = "Neon"
                            v.Character.HumanoidRootPart.CanCollide = false
                        end)
                    end
                end
			end
        elseif HRPStatus == true and TeamCheck == true and FriendCheck == false then
            for i,v in next, game:GetService('Players'):GetPlayers() do
				if game:GetService('Players').LocalPlayer.Team ~= v.Team then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
        elseif HRPStatus == true and TeamCheck == true and FriendCheck == true then
            for i,v in next, game:GetService('Players'):GetPlayers() do
				if game:GetService('Players').LocalPlayer.Team ~= v.Team and not game:GetService('Players'):IsFriendsWith(UserId) then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		else
		    for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(2,2,1)
						v.Character.HumanoidRootPart.Transparency = 1
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
						v.Character.HumanoidRootPart.Material = "Plastic"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		end
	end)
end})
getgenv().HeadStatus = false
local Toggle = Tab:CreateToggle({
   Name = "Off/On Head HBE",
   CurrentValue = false,
   Flag = "HBEHead", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HitboxStatus = Value
    game:GetService('RunService').RenderStepped:connect(function()
		if HeadStatus == true and TeamCheck == false and FriendCheck == false then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.Head.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
						v.Character.Head.Transparency = HitboxTransparency
						v.Character.Head.BrickColor = BrickColor.new("Really black")
						v.Character.Head.Material = "Neon"
						v.Character.Head.CanCollide = false
					end)
				end
			end
        elseif HeadStatus == true and TeamCheck == false and FriendCheck == true then
            for i,v in next, game:GetService('Players'):GetPlayers() do
                for i2,v2 in pairs(game:GetService('Players'):GetChildren()) do
                    if v.Name ~= game:GetService('Players').LocalPlayer.Name and not v2:IsFriendsWith(game:GetService('Players').LocalPlayer.UserId) then
                        pcall(function()
                            v.Character.Head.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
                            v.Character.Head.Transparency = HitboxTransparency
                            v.Character.Head.BrickColor = BrickColor.new("Really black")
                            v.Character.Head.Material = "Neon"
                            v.Character.Head.CanCollide = false
                        end)
                    end
                end
			end
        elseif HeadStatus == true and TeamCheck == true and FriendCheck == false then
            for i,v in next, game:GetService('Players'):GetPlayers() do
				if game:GetService('Players').LocalPlayer.Team ~= v.Team then
					pcall(function()
						v.Character.Head.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
						v.Character.Head.Transparency = HitboxTransparency
						v.Character.Head.BrickColor = BrickColor.new("Really black")
						v.Character.Head.Material = "Neon"
						v.Character.Head.CanCollide = false
					end)
				end
			end
        elseif HeadStatus == true and TeamCheck == true and FriendCheck == true then
            for i,v in next, game:GetService('Players'):GetPlayers() do
				if game:GetService('Players').LocalPlayer.Team ~= v.Team and not game:GetService('Players'):IsFriendsWith(UserId) then
					pcall(function()
						v.Character.Head.Size = Vector3.new(HitboxX, HitboxY, HitboxZ)
						v.Character.Head.Transparency = HitboxTransparency
						v.Character.Head.BrickColor = BrickColor.new("Really black")
						v.Character.Head.Material = "Neon"
						v.Character.Head.CanCollide = false
					end)
				end
			end
		else
		    for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.Head.Size = Vector3.new(2,2,1)
						v.Character.Head.Transparency = 1
						v.Character.Head.BrickColor = BrickColor.new("Medium stone grey")
						v.Character.Head.Material = "Plastic"
						v.Character.Head.CanCollide = false
					end)
				end
			end
		end
	end)
end})
local Toggle = Tab:CreateToggle({
   Name = "Team Check",
   CurrentValue = false,
   Flag = "Team1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().TeamCheck = Value
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Friend Check (useless if you have no friends))",
   CurrentValue = false,
   Flag = "Friend1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().FriendCheck = Value
   end,
})

local Section = Tab:CreateSection("Hitbox Sizes",false) 

local Slider = Tab:CreateSlider({
   Name = "Master Hitbox Size",
   Range = {0, 10},
   Increment = 0.1,
   Suffix = "Studs",
   CurrentValue = 6,
   Flag = "HBEMaster", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HitboxX = Value
   getgenv().HitboxY = Value
   getgenv().HitboxZ = Value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Master HRP Size",
   Range = {0, 10},
   Increment = 0.1,
   Suffix = "Studs",
   CurrentValue = 6,
   Flag = "HBEHRP", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HRPHitboxX = Value
   getgenv().HRPHitboxY = Value
   getgenv().HRPHitboxZ = Value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Master Head Size",
   Range = {0, 10},
   Increment = 0.1,
   Suffix = "Studs",
   CurrentValue = 6,
   Flag = "HBEHead", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HeadHitboxX = Value
   getgenv().HeadHitboxY = Value
   getgenv().HeadHitboxZ = Value
   end,
})

local Section = Tab:CreateSection("Master XYZ Settings")
local Slider = Tab:CreateSlider({
   Name = "Hitbox Size (X)",
   Range = {0, 10},
   Increment = 0.1,
   Suffix = "Studs",
   CurrentValue = 6,
   Flag = "MasterX", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HitboxX = Value
   end,
})
local Slider = Tab:CreateSlider({
   Name = "Hitbox Size (Y)",
   Range = {0, 10},
   Increment = 0.1,
   Suffix = "Studs",
   CurrentValue = 6,
   Flag = "MasterY", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HitboxY = Value
   end,
})
local Slider = Tab:CreateSlider({
   Name = "Hitbox Size (Z)",
   Range = {0, 10},
   Increment = 0.1,
   Suffix = "Studs",
   CurrentValue = 6,
   Flag = "MasterZ", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HitboxZ = Value
   end,
})

local Section = Tab:CreateSection("HRP XYZ Settings")
local Slider = Tab:CreateSlider({
   Name = "Hitbox Size (X)",
   Range = {0, 10},
   Increment = 0.1,
   Suffix = "Studs",
   CurrentValue = 6,
   Flag = "HRPX", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HRPHitboxX = Value
   end,
})
local Slider = Tab:CreateSlider({
   Name = "Hitbox Size (Y)",
   Range = {0, 10},
   Increment = 0.1,
   Suffix = "Studs",
   CurrentValue = 6,
   Flag = "HRPY", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HRPHitboxY = Value
   end,
})
local Slider = Tab:CreateSlider({
   Name = "Hitbox Size (Z)",
   Range = {0, 10},
   Increment = 0.1,
   Suffix = "Studs",
   CurrentValue = 6,
   Flag = "HRPZ", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HRPHitboxZ = Value
   end,
})

local Section = Tab:CreateSection("Head XYZ Settings")
local Slider = Tab:CreateSlider({
   Name = "Hitbox Size (X)",
   Range = {0, 10},
   Increment = 0.1,
   Suffix = "Studs",
   CurrentValue = 6,
   Flag = "HeadX", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HeadHitboxX = Value
   end,
})
local Slider = Tab:CreateSlider({
   Name = "Hitbox Size (Y)",
   Range = {0, 10},
   Increment = 0.1,
   Suffix = "Studs",
   CurrentValue = 6,
   Flag = "HeadY", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HeadHitboxY = Value
   end,
})
local Slider = Tab:CreateSlider({
   Name = "Hitbox Size (Z)",
   Range = {0, 10},
   Increment = 0.1,
   Suffix = "Studs",
   CurrentValue = 6,
   Flag = "HeadY", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HeadHitboxZ = Value
   end,
})

local Section = Tab:CreateSection("Transparency Settings",false) 

local Slider = Tab:CreateSlider({
   Name = "Hitbox Transparency",
   Range = {0, 1},
   Increment = 0.05,
   Suffix = "/1",
   CurrentValue = 0.95,
   Flag = "HBETrans", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().HitboxTransparency = Value
   end,
})

getgenv().filluseteamcolor = true --Toggle fill color using player team color on/off
getgenv().outlineuseteamcolor = true --Toggle outline color using player team color on/off
getgenv().fillcolor = Color3.new(0, 0, 0) --Change fill color, no need to edit if using team color
getgenv().outlinecolor = Color3.new(1, 1, 1) --Change outline color, no need to edit if using team color
getgenv().filltrans = 0.9 --Change fill transparency
getgenv().outlinetrans = 0 --Change outline transparency

local Slider = Tab:CreateSlider({
   Name = "Fill Transparency",
   Range = {0, 1},
   Increment = 0.05,
   Suffix = "/1",
   CurrentValue = 1,
   Flag = "FillTrans", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().filltrans = Value
   end,
})
local Slider = Tab:CreateSlider({
   Name = "Outline Transparency",
   Range = {0, 1},
   Increment = 0.05,
   Suffix = "/1",
   CurrentValue = 0,
   Flag = "OutlineTrans", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().outlinetrans = Value
   end,
})

local Tab = Window:CreateTab("Quick TP", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Quick TP Settings",false) 
getgenv().tpstudZ = 3
getgenv().tpstudY = 0
local Keybind = Tab:CreateKeybind({
   Name = "TP Keybind",
   CurrentKeybind = "H",
   HoldToInteract = false,
   Flag = "TPKeybind", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Keybind)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, tpstudY, -tpstudZ);
   end,
})
local Slider = Tab:CreateSlider({
   Name = "Studs Horizontal",
   Range = {0, 20},
   Increment = 1,
   Suffix = "Studs",
   CurrentValue = 3,
   Flag = "TPDistance1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().tpstudZ = Value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Studs Vertical",
   Range = {0, 20},
   Increment = 1,
   Suffix = "Studs",
   CurrentValue = 3,
   Flag = "TPDistance2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().tpstudY = Value
   end,
})

local Tab = Window:CreateTab("More Settings", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Master Inputs",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element|
local Input = Tab:CreateInput({
   Name = "Input HBE Size (X)",
   PlaceholderText = "n of studs",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   getgenv().HitboxX = tonumber(Text)
   end,
})

local Input = Tab:CreateInput({
   Name = "Input HBE Size (Y)",
   PlaceholderText = "n of studs",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   getgenv().HitboxY = tonumber(Text)
   end,
})

local Input = Tab:CreateInput({
   Name = "Input HBE Size (Z)",
   PlaceholderText = "n of studs",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   getgenv().HitboxZ = tonumber(Text)
   end,
})

local Section = Tab:CreateSection("HRP Inputs",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element

local Input = Tab:CreateInput({
   Name = "Input HRP Size (X)",
   PlaceholderText = "n of studs",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   getgenv().HRPHitboxX = tonumber(Text)
   end,
})

local Input = Tab:CreateInput({
   Name = "Input HRP Size (Y)",
   PlaceholderText = "n of studs",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   getgenv().HRPHitboxY = tonumber(Text)
   end,
})

local Input = Tab:CreateInput({
   Name = "Input HRP Size (Z)",
   PlaceholderText = "n of studs",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   getgenv().HRPHitboxZ = tonumber(Text)
   end,
})

local Section = Tab:CreateSection("Head Inputs",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element

local Input = Tab:CreateInput({
   Name = "Input Head Size (X)",
   PlaceholderText = "n of studs",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   getgenv().HeadHitboxX = tonumber(Text)
   end,
})

local Input = Tab:CreateInput({
   Name = "Input Head Size (Y)",
   PlaceholderText = "n of studs",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   getgenv().HeadHitboxY = tonumber(Text)
   end,
})

local Input = Tab:CreateInput({
   Name = "Input Head Size (Z)",
   PlaceholderText = "n of studs",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   getgenv().HeadHitboxZ = tonumber(Text)
   end,
})

local Section = Tab:CreateSection("QuickTP Inputs",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element

local Input = Tab:CreateInput({
   Name = "Input Studs Forward/Backward",
   PlaceholderText = "n of studs",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   getgenv().tpstudZ = tonumber(Text)
   end,
})

local Input = Tab:CreateInput({
   Name = "Input Studs Up/Down",
   PlaceholderText = "n of studs",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   getgenv().tpstudY = tonumber(Text)
   end,
})

local Section = Tab:CreateSection("Transparency Inputs",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element

local Input = Tab:CreateInput({
   Name = "Input HBE Transparency",
   PlaceholderText = "/1",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   getgenv().HitboxTransparency = tonumber(Text)
   end,
})

local Input = Tab:CreateInput({
   Name = "Input Fill Transparency",
   PlaceholderText = "/1",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   getgenv().filltrans = tonumber(Text)
   end,
})

local Input = Tab:CreateInput({
   Name = "Input Outline Transparency",
   PlaceholderText = "/1",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   getgenv().outlinetrans = tonumber(Text)
   end,
})
-- end of advanced settings

local Tab = Window:CreateTab("Other Scripts", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "fates esp (Silent aim & Aimbot)",
   Interact = 'Click',
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/fatesc/fates-esp/main/main.lua'))()
   end,
})
   

local Button = Tab:CreateButton({
   Name = "Exunys' AirHub",
   Interact = 'Click',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "Relkzz's Adonis Bypass",
   Interact = 'Click',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/RelkzzRebranded/Bypassed---OBFUSCATED..../main/Adonis%20BYPASS.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "FPS Booster",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/NNnhpUXh"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "CPU Saver",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/uAEkADgv"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "BetterBypasser",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/rUGkhzVe"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "Autoclicker (keybind-V ; mouselock-N)",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/uAEkADgv"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "literally ancient ESP (from 2015)",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/XaMxeqWn"))()
   end,
})

local settingsTab = Window:CreateTab("UI Settings", 13075268290)

local windowSettings = settingsTab:CreateSection("General Options", false, false, "13080063021")
	
	local UIKeybind = settingsTab:CreateSection("Hide/Unhide UI Keybind",false)
   local Keybind = settingsTab:CreateKeybind({
   Name = "UI Keybind",
   CurrentKeybind = "K",
   HoldToInteract = false,
   Flag = "Keybind1", 
   SectionParent = UIKeybind, -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Keybind)
   if Hidden then
            Hidden = false
            Unhide()
        else
            if not SearchHided then spawn(CloseSearch) end
            Hidden = true
            Hide()
        end

   end,
})
	
	settingsTab:CreateToggle({
		Name = "Compact Mode",
		CurrentValue = false,
		Flag = "Settings_CompactMode",
		SectionParent = windowSettings,
		Callback = function(value) 
			Rayfield:ToggleOldTabStyle(not value)
		end
	})
	
	settingsTab:CreateToggle({
		Name = "Enable Rendering",
		CurrentValue = true,
		Flag = "Settings_DisableRendering",
		SectionParent = windowSettings,
		Callback = function(value) 
			game:GetService("RunService"):Set3dRenderingEnabled(value)
		end
	})

    settingsTab:CreateButton({
	Name = "Destroy UI",
	Callback = function()
		Rayfield:Destroy()
    end,
 })

    settingsTab:CreateButton({
	Name = "Unlock Fps",
	Callback = function()
		setfpscap(1000)
    end,
 })

local windowSettings = settingsTab:CreateSection("Netless", false, false, "rbxthumb://type=Asset&id=5107182114&w=150&h=1501")

  local Button = settingsTab:CreateButton({
	Name = "Toggle Netless",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/netless.txt'),true))()
	end,
 })
 
 

RayField:LoadConfiguration()