     local Rayfield = nil
	if isfile("Ry/UI/DecayingField.lua") then
		Rayfield = loadstring(readfile("Ry/UI/DecayingField.lua"))()
	else
		Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/RyXeleron/Script-Storage/main/DecayingField.lua"))()
	end

local Window = Rayfield:CreateWindow({
	Name = "⚙ Optioning ⚙",
	LoadingTitle = "⚠ A Warning to User ⚠",
	LoadingSubtitle = "https://dsc.gg/rans 🌠",
	ConfigurationSaving = {
		Enabled = true,
	},
	
        Discord = {
        	Enabled = true,
        	Invite = "RCrVAvAbT2", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "Lucky 🍀",
		Subtitle = "Remade by Ry. Original by.. Ryder",
		Note = "If your mother and grandmother can't find it, it's gone."
	}
})

	coroutine.wrap(function() 
		wait(0.5)
		if not isfile("Ry/AcceptedTerms.txt") then 
			Window:Prompt({
				Title = 'Disclaimer',
				SubTitle = 'Misuse of this script may result in penalties!',
				Content = "I am not responsible for any harm caused by this tool, use at your own risk.",
				Actions = {
					
					Accept = {
						Name = "Ok",
						Callback = function()
							if not isfolder("Ry") then makefolder("Ry") end
							writefile("Ry/AcceptedTerms.txt", "true")
						end,
						
					}
				}
			})
		end 
	
	end)()

local Tab = Window:CreateTab("Optioning", 6022668955)
local SecTab = Window:CreateTab("Other Scripts", 6022668883)
local settingsTab = Window:CreateTab("Settings", 13075268290)

local windowSettings = settingsTab:CreateSection("General Options", false, false, "13080063021")
	
	settingsTab:CreateToggle({
		Name = "Compact Mode",
		CurrentValue = true,
		Flag = "Settings_CompactMode",
		SectionParent = windowSettings,
		Callback = function(value) 
			Rayfield:ToggleOldTabStyle(not value)
		end
	})
	

    settingsTab:CreateButton({
	Name = "Destroy UI",
	Callback = function()
		Rayfield:Destroy()
    end,
 })


local Paragraph = SecTab:CreateParagraph({Title = "<b><font color=\"#d6d265\">Welcome!</font></b>", Content = "Are you looking for another Decaying Winter script? Well there is, choose the script you wan't to execute!"})
local Label = SecTab:CreateLabel("If there isn't the script you wanted to find, we are sorry for the inconvenience.")

local Button = SecTab:CreateButton({
	Name = "SasSledge Free",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/sasquatchhtv/Decayingbitches/main/DW-Script-1.75'),true))()
    end,
 })
local Button = SecTab:CreateButton({
	Name = "SasSledge Premium",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/sasquatchhtv/SasDWPremium/main/Obfuscated'),true))()
    end,
 })
 
local Paragraph = Tab:CreateParagraph({Title = "<b><font color=\"#0091ff\">Wait!</font></b>", Content = "Are you in the right game? If not, click this button to be teleported to Decaying Winter!"})
 local Button = Tab:CreateButton({
	Name = "Teleport",
	Callback = function()
		game:GetService("TeleportService"):Teleport(13438553315)
    end,
 })
local Paragraph = Tab:CreateParagraph({Title = "<b><font color=\"#ff5462\">Warning!</font></b>", Content = "This script may get your account banned! Do you wish to continue?"})
local Label = Tab:CreateLabel("<b><font color=\"#aa00ff\">Continue to execute the core script!</font></b>")

 
local Label = Tab:CreateLabel("<b><font color=\"#00ff66\">Advice: Archive anything you think you're deserved for.</font></b>")

local Button = Tab:CreateButton({
	Name = "Quit",
	Callback = function()
		Rayfield:Destroy()
    end,
 })

local Button = Tab:CreateButton({
	Name = "Continue",
	Callback = function()
	
	Rayfield:Destroy()
	
	if LB_LOADED and not _G.LB_DEBUG == true then
	-- error("Lucky Blessing is already running!", 0)
	return
end

pcall(function() getgenv().LB_LOADED = true end)

COREGUI = game:GetService("CoreGui")
if not game:IsLoaded() then
	local notLoaded = Instance.new("Message")
	notLoaded.Parent = COREGUI
	notLoaded.Text = 'Lucky Blessing is waiting for the game to load'
	game.Loaded:Wait()
	notLoaded:Destroy()
end


--[[
Made By Atlas Studio

 ▄▄▄     ▄▄▄█████▓ ██▓    ▄▄▄        ██████      ██████ ▄▄▄█████▓ █    ██ ▓█████▄  ██▓ ▒█████  
▒████▄   ▓  ██▒ ▓▒▓██▒   ▒████▄    ▒██    ▒    ▒██    ▒ ▓  ██▒ ▓▒ ██  ▓██▒▒██▀ ██▌▓██▒▒██▒  ██▒
▒██  ▀█▄ ▒ ▓██░ ▒░▒██░   ▒██  ▀█▄  ░ ▓██▄      ░ ▓██▄   ▒ ▓██░ ▒░▓██  ▒██░░██   █▌▒██▒▒██░  ██▒
░██▄▄▄▄██░ ▓██▓ ░ ▒██░   ░██▄▄▄▄██   ▒   ██▒     ▒   ██▒░ ▓██▓ ░ ▓▓█  ░██░░▓█▄   ▌░██░▒██   ██░
 ▓█   ▓██▒ ▒██▒ ░ ░██████▒▓█   ▓██▒▒██████▒▒   ▒██████▒▒  ▒██▒ ░ ▒▒█████▓ ░▒████▓ ░██░░ ████▓▒░
 ▒▒   ▓▒█░ ▒ ░░   ░ ▒░▓  ░▒▒   ▓▒█░▒ ▒▓▒ ▒ ░   ▒ ▒▓▒ ▒ ░  ▒ ░░   ░▒▓▒ ▒ ▒  ▒▒▓  ▒ ░▓  ░ ▒░▒░▒░ 
  ▒   ▒▒ ░   ░    ░ ░ ▒  ░ ▒   ▒▒ ░░ ░▒  ░ ░   ░ ░▒  ░ ░    ░    ░░▒░ ░ ░  ░ ▒  ▒  ▒ ░  ░ ▒ ▒░ 
  ░   ▒    ░        ░ ░    ░   ▒   ░  ░  ░     ░  ░  ░    ░       ░░░ ░ ░  ░ ░  ░  ▒ ░░ ░ ░ ▒  
      ░  ░            ░  ░     ░  ░      ░           ░              ░        ░     ░      ░ ░  
                                                                           ░                   
]]

--[[

	Lucky Blessing By Ry © CC0 1.0 Decaying Winter (2023)

	https://github.com/RyAtlasX

]]

--//*--------- CACHES -----------//*

local loadstring, getgenv, setclipboard, tablefind, UserInputService = loadstring, getgenv, setclipboard, table.find, game:GetService("UserInputService")

--//*--------- LOADED CHECKS -----------//*

if LuckyBlessing or LuckyBlesser then
    return
end

--//*--------- ENVIROMENTS -----------//*

getgenv().LuckyBlessing = {}

--//*--------- LOADED MODULES -----------//*

loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Aimbot.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/WallHack.lua"))()

--//*--------- ESP VARIBLES -----------//*

local Aimbot, WallHack = getgenv().LuckyBlessing.Aimbot, getgenv().LuckyBlessing.WallHack
local Parts, Fonts, TracersType = {"Head", "HumanoidRootPart", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg", "UpperTorso", "LeftUpperLeg", "RightFoot", "RightLowerLeg", "LowerTorso", "RightUpperLeg"}, {"UI", "System", "Plex", "Monospace"}, {"Bottom", "Center", "Mouse"}


	local SCRIPT_NAME = "Lucky Blessing 🍀"
    local SCRIPT_VERSION = "| v0.1" -- Hey Ry remember to change it before updating lmao

	
local githubURL = "https://raw.githubusercontent.com/Fardastic/WL/main/wl"
local localPlayer = game.Players.LocalPlayer
local allowedUserIds = {}

-- Function to fetch and parse the GitHub content
local function fetchAndParseGitHub()
    local success, content =
        pcall(
        function()
            return game:HttpGet(githubURL)
        end
    )

    if success then
        -- Parse the content to extract user IDs
        for userId in content:gmatch("%d+") do
            table.insert(allowedUserIds, tonumber(userId))
        end
    else
        warn("Failed to fetch GitHub content")
        player:Kick("Failed to fetch whitelist, try disable VPN / Firewalls?")
    end
end

-- Function to check if a user is allowed
local function isUserAllowed(user)
    if user and user:IsA("Player") then
        for _, userId in ipairs(allowedUserIds) do
            if user.UserId == userId then
                return true
            end
        end
    end
    return false
end

-- Fetch and parse the GitHub content
fetchAndParseGitHub()

local isUserNotAllowed = not isUserAllowed(localPlayer)

-- Additional security measures
if isUserNotAllowed then
warn("User Is Not Authorized")
local playerToKick = game.Players.LocalPlayer

-- Use the :Kick() method to kick the player with a message
playerToKick:Kick("Failed to fetch Github contents. | You are not authorized to perform this action.")
end



        game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "[Ry]: Hello there User! Please know that we are not responsible for any bans, we recommend you to use this on an alternate account, thank you for reading this.";
    Color = Color3.new(0, 255, 169);
    Font = Enum.Font.Code;
    FontSize = Enum.FontSize.Size24;
})

    game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Join Our Server https://dsc.gg/rans1 for more information!";
    Color = Color3.new(169, 255, 0);
    Font = Enum.Font.SciFi;
    FontSize = Enum.FontSize.Size24;
})
    
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Enjoy Your New Lucky Script User!";
    Color = Color3.new(0, 255, 0);
    Font = Enum.Font.Fantasy;
    FontSize = Enum.FontSize.Size24;
})
    
game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Developers:";
                Text = "Ry, Waltuh White, SasSquatch";
                Duration = 6;
            })

game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Welcome to Our Wonderful creation!";
                Text = "Thank you for using the script!!";
                Duration = 6;
            })

game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "if You Enjoy This.";
                Text = "Please leave a like on my Github!";
                Icon = "https://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username=ImCherry511";
                Duration = 6;
            })

wait(3)

game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Lucky Blesser Presents To You:";
                Text = "You are in the Whitelister!";
                Icon = "rbxassetid://2572157833";
                Duration = 10;
            })

    local Rayfield = nil
	if isfile("UI/ArrayField.lua") then
		Rayfield = loadstring(readfile("UI/ArrayField.lua"))()
	else
		Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Decaying%20Field"))()
	end

	-- local Rayfield = (isfile("UI/ArrayField.lua") and loadstring(readfile("UI/ArrayField.lua"))()) or loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafacasari/ArrayField/main/v2.lua"))()
	assert(Rayfield, "Oopps! Rayfield has not been loaded. Maybe try re-joining?") 

	getgenv().SecureMode = true	
	getgenv().DisableArrayfieldAutoLoad = true
	
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
local Lighting = game:GetService("Lighting")

--//*--------- GLOBAL VARIABLES -----------//*
local ScriptIsCurrentlyBusy = false
local Character = nil
local Humanoid = nil
local HumanoidRootPart = nil
local CurrentWorld = ""
local CurrentPosition = nil

local Settings_DisableRendering = true

local Webhook_Enabled = true
local Webhook_URL = "https://discord.com/api/webhooks/1155286687677681775/FsO6yahgtuvGKAUJ-e1WEzeNLJeo6_T0Ffm5PICGqG7Uua1BjcfCtM5DhbMhRQME0kZ0"

LocalPlayer.CharacterAdded:Connect(function(char) 
	Character = char
	Humanoid = Character:WaitForChild("Humanoid")
	HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
end)


--//*--------- CORE SCRIPT -----------//*

local Window = Rayfield:CreateWindow({
	Name = SCRIPT_NAME .. " " .. SCRIPT_VERSION,
	LoadingTitle = "Lucky 🍀",
	LoadingSubtitle = "Made by Ry and remade by Ry?  🌠",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "Ry", -- Create a custom folder for your hub/game
		FileName = "Lucky Blessing" .. tostring(LocalPlayer.UserId)
	},
        Discord = {
        	Enabled = true,
        	Invite = "2cVsQbwtNq", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "Lucky 🍀",
		Subtitle = "Remade by Ry. Original by.. Ry? ",
		Note = "These 'Ry' are diffrent they are just the same name.",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "SPartner"
	}
})

--- Rayfield Old Tab Layout
Rayfield:ToggleOldTabStyle(true)

 Rayfield:Notify({
   Title = "Key System",
   Content = "By Getting The Key System, You accept to our Rules",
   Duration = 6.5,
   Image = 6022668883,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay, i got it",
         Callback = function()
         warn("The user Replied, Okay!")
      end
   },
},
})

 Rayfield:Notify({
   Title = "Note",
   Content = "EVERYTHING HERE IS MODIFIED AND CONFIRMED - MODIFIED BY H.RY - DO NOT ATTEMPT TO SKID",
   Duration = 6.5,
   Image = 11401835376,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay.",
         Callback = function()
         warn("kk")
      end
   },
},
})

 Rayfield:Notify({
   Title = "Note",
   Content = "{(DO NOT GO OVER OR PICK UP 1900 SCRAPS)}",
   Duration = 6.5,
   Image = 11401835376,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Alright, Sure",
         Callback = function()
         warn("kk")
      end
   },
},
})

 Rayfield:Notify({
   Title = "Note",
   Content = "Original by Ry (https://discord.gg/2cVsQbwtNq) Remade by Ry (https://dsc.gg/rans)",
   Duration = 6.5,
   Image = 6023426915,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay, i got it",
         Callback = function()
         warn("The user Replied, Okay!")
      end
   },
},
})



local Tab = Window:CreateTab("Main Tab", 6026568198)

-- local Section = Tab:CreateSection("t")
--// Functions

local windowSettings = Tab:CreateSection("Modified stuff / Slavages")

 Tab:CreateButton({
    Name = "Infinite Stamina",
    SectionParent = windowSettings, -- Section it's parented to
    Callback = function()
        repeat
            task.wait()
        until game.Players.LocalPlayer.PlayerGui.mainHUD.StaminaFrame:FindFirstChild("TextLabel") ~= nil
        
        if game.Players.LocalPlayer.PlayerGui.mainHUD.StaminaFrame == nil then
            return
        end
        
        function GrabMainScript()
            for _, instance in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if instance:IsA("LocalScript") and instance.Name ~= "ClickDetectorScript" then
                    return instance
                end
            end
        end
        
        local func
        local script = GrabMainScript()
        for i, v in pairs(getreg()) do
            if type(v) == "function" and getfenv(v).script then
                if getfenv(v).script == script then
                    local upvalues = getupvalues(v)
                    if
                        tostring(upvalues[3]) ==
                            tostring(game.Players.LocalPlayer.PlayerGui.mainHUD.StaminaFrame:FindFirstChild("TextLabel").Text)
                     then
                        func = v
                    end
                end
            end
        end
        spawn(
            function()
                repeat
                    setupvalue(func, 3, math.huge)
                    task.wait()
                until game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health <= 0
            end
        )
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Dupe Loot | Will eliminate You!",
    SectionParent = windowSettings, -- Section it's parented to
    Callback = function()
        for i = 1,10 do
            task.wait()
            workspace.ServerStuff.deathPlay:FireServer()
            task.wait()
        end
        
    end,
 })

    Tab:CreateButton(
    {
        Name = "Disable Virus",
        SectionParent = windowSettings, -- Section it's parented to
        Callback = function()
            spawn(
                function()
                    for _, instance in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if instance:IsA("LocalScript") and instance.Name ~= "ClickDetectorScript" then
                            repeat
                                mainHandler = getsenv(instance)
                                RunService.Heartbeat:Wait()
                            until mainHandler.afflictstatus ~= nil

                            local upvalue = getupvalues(mainHandler.afflictstatus)
                            _G.serverKey = upvalue[16]
                            _G.playerKey = upvalue[17]
                        end
                    end
                    --// Virus blocking
                    local v1 = require(workspace.ServerStuff.Statistics["S_STATISTICS"])

                    v1.VirusA.dur = math.huge
                    v1.VirusB.dur = math.huge        
                    v1.VirusC.dur = math.huge                     
                end
            )
        end
    }
)

 Tab:CreateButton({
	Name = "Serverhop",
	SectionParent = windowSettings, -- Section it's parented to
	Callback = function()
		game:GetService("TeleportService"):Teleport(13438553315)
    end,
 })
 
 Tab:CreateButton(
    {
        Name = "Inf Auxiliory",
        SectionParent = windowSettings, -- Section it's parented to
        Callback = function()
            local v1 = require(game:GetService("Workspace").ServerStuff.Statistics["AUX_STATISTICS"])

            v1.resp.use_per_night = 200
            
            v1.decoy.use_per_night = 200
            
            v1.knives.use_per_night = 200
            
            v1.ballistic.use_per_night = 200
            
            v1.buffer.use_per_night = 200
            
            v1.holo.use_per_night = 200
            
            v1.ladder.use_per_night = 200
            
            v1.concertina.use_per_night = 200
            
            v1.cauteriser.use_per_night = 200
            
            v1.bottle.use_per_night = 200
            local auxdebounceyes = false
            while auxdebounceyes == false and wait(0.1) do
                if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("mainHUD", 0.2):WaitForChild("UpperLower", 0.2):WaitForChild("auxcount", 0.2) ~= nil then
                    game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("mainHUD", 0.2):WaitForChild("UpperLower", 0.2):WaitForChild("auxcount", 0.2).Visible = false
                    auxdebounceyes = true                 
                end
            end
        end
    }
)

  Tab:CreateButton(
    {
        Name = "No Fog",
        SectionParent = windowSettings, -- Section it's parented to
        Callback = function()
            game.Lighting.FogEnd = 100000
            game.Lighting.FogStart = 0
            game.Lighting.ClockTime = 14
            game.Lighting.Brightness = 2
            game.Lighting.GlobalShadows = false
        end
    }
)
  Tab:CreateButton(
    {
        Name = "Decreased Fog",
        SectionParent = windowSettings, -- Section it's parented to
        Callback = function()
            game.Lighting.FogEnd = 50
            game.Lighting.FogStart = 0
            game.Lighting.ClockTime = 14
            game.Lighting.Brightness = 1
            game.Lighting.GlobalShadows = false
        end
    }
)

-- local Section = Tab:CreateSection("t")
 
  Tab:CreateButton({
    Name = "ESP [M TO REFRESH]",
    SectionParent = windowSettings, -- Section it's parented to
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/bigblackmonkeyboi/scip/main/Decaying-Winter-Esp.lua", true))();
    end,
 })


  Tab:CreateButton({
	Name = "Speed Boost (KeyBind: L)",
	SectionParent = windowSettings, -- Section it's parented to
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ryderfreeman/decaying-winter-old-goodwill/main/script1'))()
    end,
})
local Ess = Tab:CreateSection("Essential")
   Tab:CreateButton({
	Name = "Extra Ability ( R ; Y ; B ; U ; J ; M)",
	SectionParent = Ess,
	Callback = function()

--// Variables
local stuff = game.Workspace.InteractablesNoDel
local gui = game.Players.LocalPlayer.PlayerGui.controlsGui
local localplayer = game.Players.LocalPlayer
local mainHandler = { instance = nil, senv = nil }
local namecall = nil
local waitTable = {}
local tgas = {
        ["throwrating"] = 1,
        ["ability"] = "Can obscure vision.",
        ["blacklisted"] = false,
        ["animset"] = "THRW",
        ["desc"] = "Used by riot police! Yes, we still have those! We have many hired and stationed on site at all time " ..
            "and borrowed some of these!",
        ["weapontype"] = "Item",
        ["name"] = "Riot Grenade",
        ["damagerating"] = {
            [1] = 0,
            [2] = 0
        },
        ["sizerating"] = 4,
        ["icon"] = "2520535457",
        ["woundrating"] = 2
}

--// Functions

function getkey()
    spawn(function()
for _, instance in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if instance:IsA("LocalScript") and instance.Name ~= "ClickDetectorScript" then
        repeat
            mainHandler = getsenv(instance)
            RunService.Heartbeat:Wait()
        until mainHandler.afflictstatus ~= nil

        local upvalue = getupvalues(mainHandler.afflictstatus)
        _G.serverKey = upvalue[16]
        _G.playerKey = upvalue[17]
    end
end
--// Virus blocking
for index, status in pairs(getupvalue(mainHandler.afflictstatus, 1)) do
    if string.match(index, "Virus") ~= nil then
        status.effects.currentduration = math.huge
    end
end
end)
end
--// parry
InputService.InputBegan:Connect(function(input, Typing)
    if Typing then
        return
    end
	if input.KeyCode == Enum.KeyCode.R then
	        for i=1, 10 do
            workspace.ServerStuff.initiateblock:FireServer(_G.serverKey, true)
	        end
	end
end)
--// stun
InputService.InputBegan:Connect(function(input, Typing)
    if Typing then
        return
    end
	if input.KeyCode == Enum.KeyCode.Y then
            local args = {
                [1] = "TGas",
                [2] = 20,
                [3] = game.Workspace.CurrentCamera.CFrame,
                [4] = 1,
                [5] = tgas,
                [6] = 1,
                [8] = _G.serverKey,
                [10] = _G.playerKey
            }

            workspace.ServerStuff.throwWeapon:FireServer(unpack(args))
    end
end)
-- // scan
InputService.InputBegan:Connect(function(input, Typing)
    if Typing then
        return
    end
	if input.KeyCode == Enum.KeyCode.B then
        	workspace.ServerStuff.applyGore:FireServer("scanarea", localplayer.Character, localplayer, {[1] = game.Workspace.CurrentCamera.CFrame})
    	end
end)
--// smoke
InputService.InputBegan:Connect(function(input, Typing)
    if Typing then
        return
    end
	if input.KeyCode == Enum.KeyCode.U then
	    workspace.ServerStuff.dealDamage:FireServer("fireSmoke", workspace.CurrentCamera.CFrame, _G.serverKey, _G.playerKey)
    end
end)
--// heal
InputService.InputBegan:Connect(function(input, Typing)
    if Typing then
        return
    end
	if input.KeyCode == Enum.KeyCode.J then
	    for i=1, 10 do
	        game.Workspace.ServerStuff.dealDamage:FireServer("Regeneration", nil, _G.serverKey, _G.playerKey)
	        wait(0.1)
        end
    end
end)

InputService.InputBegan:Connect(function(input, Typing)
    if Typing then
        return
    end
	if input.KeyCode == Enum.KeyCode.M then
	    for i=1, 1 do
            workspace.ServerStuff.dropAmmo:FireServer("rations", "MRE")
            workspace.ServerStuff.dropAmmo:FireServer("rations", "Bottle")
            workspace.ServerStuff.dropAmmo:FireServer("rations", "Beans")
              workspace.ServerStuff.dropAmmo:FireServer("rations", "Soda")
            wait(0.1)
        end
    end
end)
InputService.InputBegan:Connect(function(input, Typing)
    if Typing then
        return
    end
	if input.KeyCode == Enum.KeyCode.R then
	    for i=1, 10 do
            workspace.ServerStuff.initiateblock:FireServer(_G.serverKey, true)
	    end
	end
end)
local alert = Instance.new("Sound",game:GetService("SoundService"))
alert.SoundId = "rbxassetid://232127604"
--// controlsGui
gui.Enabled = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/scripts/main/decaying%20winter/Announce.lua"))()
function Callback(answer)
    if answer == "Yes" then
        wait(2)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/scripts/main/decaying%20winter/Auto%20Finish.lua"))()
    elseif answer == "No" then
        print("Player rejected.")
    end
end
local Bindable = Instance.new("BindableFunction")
Bindable.OnInvoke = Callback
loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/scripts/main/decaying%20winter/Longer%20Effects.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/scripts/main/decaying%20winter/Passive%20Heal.lua"))()
while true do
    getkey()
    wait(1)
end
    end,
})
local Slider = Tab:CreateSlider({
    Name = "Scrap Giver",
    SectionParent = Ess,
    Range = {1, 1000},
    Increment = 10,
    Suffix = "Amount of Scraps",
    CurrentValue = 10,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
local DropAmount = 100 
local Workspace = game:GetService("Workspace")
local ServerStuff = Workspace.ServerStuff
local dropAmmo = ServerStuff.dropAmmo
dropAmmo:FireServer("scrap", Value)
    end,
 })

  Tab:CreateButton(
        {
            Name = "SOF Nametag (Spectator's Team)",
            SectionParent = Ess,
            Callback = function()
                function Respawn()
                    workspace.ServerStuff.spawnPlayer:FireServer("respawncharacter")
                end

                function Hub()
                    workspace.ServerStuff.spawnPlayer:FireServer("hubbing")
                end

                function Start(arg)
                    if arg == "Normal" then
                        game.Players.LocalPlayer:FindFirstChild("start").Value = "normal"
                    elseif arg == "Ray" then
                        game.Players.LocalPlayer:FindFirstChild("start").Value = "normal"
                    end
                end

                function Spawn(Cords)
                    Respawn()
                    repeat
                        task.wait()
                    until not game.Players.LocalPlayer.Character:FindFirstChild("Outfit")
                    Hub()
                    Start("Normal")
                    repeat
                        task.wait()
                    until game.Players.LocalPlayer.Character:FindFirstChild("Outfit")
                    if Cords == "Match" then
                        game.Players.LocalPlayer.start.Value = "normal"
                        game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame =
                            CFrame.new(18.777990341186523, -2.5860984325408936, -9.264251708984375)
                    elseif Cords == "HubA" then
                        game.Players.LocalPlayer.start.Value = "hubbing"
                        game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame =
                            CFrame.new(-118.72508239746094, -22.03114128112793, 1088.935546875)
                    elseif Cords == "Respawn" then
                        game.Players.LocalPlayer.start.Value = "hubbing"
                        Respawn()
                    elseif Cords == "HubB" then
                        game.Players.LocalPlayer.start.Value = ""
                        game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame =
                            CFrame.new(-118.72508239746094, -22.03114128112793, 1088.935546875)
                    end
                end

                Spawn("Match") --- Match (puts you in match with pvp), HubB (hub with pvp), HubA (hub without pvp), Respawn (puts you back into menu)
            end
        }
    )
    
 Tab:CreateLabel("Dev Notes: Don't put everything too overpowered..")

local modp = Tab:CreateSection("Modified Perks")

 Tab:CreateButton(
        {
            Name = "Left To Die (Damned)",
            SectionParent = modp,
            Callback = function()
                local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["damn"].basestats
                local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["damn"]
                if perks then
                    perk.name = "The Cursed one"
                    perk.desc =
                        "You are strong yes but locked in these chains like a prisoner is there any way to live?.."
                    perk.pros = {"Immune to bleeding", "Extra M1 Damage", "Higher defense"}
                    perk.cons = {"People will dislike you."}
                    perk.activename = "Condemmed for the life you done."
                    perk.activedetails = "You hear the laugh from the Ulaycylon higher up leaving you to die."
                    perks.atkmod = 1200 -- 2 taps any bosses
                    perks.healthmod = 500
                    perks.defmod = 500 -- take 1 dmg per hit except explosion
                    perks.stammod = 2300
                    perks.shovemod = 1950
                    perks.lightatkspeed = 1200
                    perks.heavyatkspeed = 9999
                    perks.recoilmod = 134
                    perks.harvestmod = 100
                    perks.accmod = 100
                    perks.reloadmod = 250
                    perks.noaimmod = false
                    perks.bleed_immune = true
                    perks.mvtmod = 100
                    perks.aegisduration = math.huge
                    perks.aegisdamagetakenmelee = 0
                    perks.aegisrangeddamagemultiplier = 50
                    perks.cooldown = 0
                end
            end
        }
    )
Tab:CreateButton({
	Name = "Modded Damned",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["damn"].basestats
        local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["damn"]
        if perks then
            perk.name = "The Cursed one"
            perk.desc = "You are strong yes but locked in these chains like a prisoner is this any way to live?."
            perk.pros = { "Immune to bleeding","Extra M1 Damage","Higher defense" }
            perk.cons = { "People will dislike you." }
           perk.activename = "Tanziner"
           perk.activedetails = "A man of his word."
           perks.atkmod = 1950 -- 2 taps any bosses
           perks.healthmod = 999999
           perks.defmod = 1500 -- take 1 dmg per hit except explosion
           perks.stammod = 5000
           perks.shovemod = 1950
           perks.lightatkspeed = 1950
            perks.heavyatkspeed = 1950 
            perks.recoilmod = 2000
            perks.harvestmod = 100
            perks.accmod = 1950
             perks.reloadmod = 25000 
             perks.noaimmod = false 
             perks.bleed_immune = true
             perks.mvtmod = 100
             perks.aegisduration = math.huge
             perks.aegisdamagetakenmelee = 0
             perks.aegisrangeddamagemultiplier = 10000
             perks.cooldown = 0
        end
    end,
})

Tab:CreateButton({
	Name = "The Counter (Damned)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["damn"].basestats
        local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["damn"]
        if perks then
            perk.name = "The Counter"
            perk.desc = "Impossible to die."
            perk.pros = { "Immune to bleeding","Extra M1 Damage","Higher defense" }
            perk.cons = { "Literally UnKillable." }
           perk.activename = "Tanziner"
           perk.activedetails = "The Devil."
           perks.atkmod = 1950 -- 2 taps any bosses
           perks.healthmod = 999999
           perks.defmod = 1950 -- take 1 dmg per hit except explosion
           perks.stammod = 5000
           perks.shovemod = 1950
           perks.scavmod = 4000
           perks.lightatkspeed = 1500
            perks.heavyatkspeed = 1500
            perks.recoilmod = 1950
            perks.harvestmod = 1950
            perks.accmod = 1950
             perks.reloadmod = 999999 
             perks.noaimmod = false 
             perks.bleed_immune = true
             perks.mvtmod = 100
             perks.aegisduration = math.huge
             perks.aegisdamagetakenmelee = 0
             perks.aegisrangeddamagemultiplier = 999999
             perks.cooldown = -1950
             explosive_resist = true
             perks.cripple_immune = true
             perks.exhaust_immune = true
             perks.frac_immune = true 
             perks.nomorale = true
             perks.explosivemod = 999999
             perks.grap = false
             perks.bleed_immune = true
             perks.backpack = true
             perks.falldamagemod = true
             perks.craftcostmod = -150 
        end
    end,
})

Tab:CreateButton({
	Name = "Deadlock (Crosslink)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["wire"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["wire"]
    perk.name = "Deadlock"
    perk.desc = "My territory My rule"
    perk.pros = { "Increased melee damage","Increase shove speed","Heavily increase melee swing"};
    perk.cons = {"Do not use guns.","No immunities"}
   perk.activename = "Sentinel nanowires"
   perk.activedetails = "You arent Norwegian meaning no Ahnialation skill issue dawg. (Normal crosslink wires)"
   perks.atkmod = 17.55 -- 2 taps any bosses
   perks.healthmod = 99999
   perks.defmod = 35 -- take 1 dmg per hit except explosion
   perks.stammod = 300
   perks.shovemod = 12
   perks.lightatkspeed = 40
    perks.heavyatkspeed = 45
    perks.recoilmod = -25
    perks.accmod = -35
     perks.reloadmod = -15
     perks.noaimmod = false
     perks.scavmod = 40
     perks.harvestmod = 100
     perks.mvtmod = 25
     explosive_resist = true
     perks.explosivemod = 400
    perks.falldamagemod = true
    perks.craftcostmod = 10
        end
    }
)

Tab:CreateButton(
    {
        Name = "Death Squad (Zealot)",
        SectionParent = modp,
        Callback = function()
            local OldNameCall
            OldNameCall = hookmetamethod(game, "__namecall", function(...)
                local Self,Args=...
                local Args = {Args}
                if getnamecallmethod()=="FireServer" and tostring(Self)=="dealDamage" and Args[1] == "removeaegisturret" then
                    Args[1] = "placeaegisturret"
                    print("placing aegis turret!")
                    return OldNameCall(Self,unpack(Args))
                end
                return OldNameCall(...)
            end)
            local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shield"].basestats
            local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shield"]
                        perk.name = "Death Squad "
                        perk.desc =
                            "Welcome Agent you are drafted as a Death Squad Agent. Do not dissapoint us You will recive punishment upon on failed"
                        perk.pros = {
                            "Increased defense heavily",
                            "Damage with melee heavily increased",
                            "Pray to the god you belive in"
                        }
                        perk.cons = {"The hardsuit takes heavy damage by explosion avoid them."}
                        perk.activename = "Death Squad HardSuit"
                        perk.activedetails =
                            "> DO NOT HARM DEATH SQUAD AGENTS             >ELIMINATE ALL COTESTANTS                                    >PROTECT YOUR OWN EXSISTENCE"
                        perk.activestats.cooldown = 0
                        perks.atkmod = 35 -- 2 taps any bosses
                        perks.healthmod = 135
                        perks.defmod = 1250
                        -- Even tho your beefy explosion still hurt somehow
                        perks.stammod = 200
                        perks.shovemod = 155
                        perks.lightatkspeed = 150
                        perks.heavyatkspeed = 200
                        perks.recoilmod = 500
                        perks.accmod = 690
                        perks.reloadmod = 546
                        perks.noaimmod = false
                        perks.scavmod = 2000
                        perks.harvestmod = 690
                        perks.mvtmod = 100
                        explosive_resist = true
                        perks.cripple_immune = true
                        perks.exhaust_immune = true
                        perks.frac_immune = true
                        perks.nomorale = true
                        perks.explosivemod = 400
                        perks.grap = true
                        perks.bleed_immune = true
                        perks.backpack = true
                        perks.falldamagemod = true
                        perks.craftcostmod = -5
                        perks.aegisduration = math.huge
                        perks.aegisdamagetakenmelee = 0
                        perks.aegisrangeddamagemultiplier = 50
                        perks.cooldown = 0
        end
    }
)
Tab:CreateButton({
	Name = "Mad Lad (Berserker)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["berz"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["berz"]
    perk.name = "Mad Lad"
    perk.desc = "HOW ARE YOU EVEN ALIVE!!?!??!?"
    perk.pros = {"Apparently overdosing 347262657 C.Serum is good","You do stupid amout of power with melee."};
    perk.cons = {"DO NOT USE GUNS AT ALL","Explosive hurt","Imagine shoving lmao"}
   perk.activename = "By Sasquatch_htv"
   perk.activedetails = "Why are you using more SERUM?!?!?! IS 347262657 not ENOUGH"
   perks.atkmod = 450 -- 2 taps any bosses
   perks.healthmod = 135
   perks.defmod = 350-- Even tho your beefy explosion still hurt somehow
   perks.stammod = 590
   perks.shovemod = 10
   perks.lightatkspeed = 140
    perks.heavyatkspeed = 255
    perks.recoilmod = 10
    perks.accmod = 10
     perks.reloadmod = 10
     perks.noaimmod = false
     perks.scavmod = 100
     perks.harvestmod = 100
     perks.mvtmod = 40
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 100
     perks.bleed_immune = true
    perks.backpack = true
    perks.falldamagemod = true
    perks.craftcostmod = 1000
    end,
})
Tab:CreateButton({
	Name = "Fagabond (Vagabond)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["sword"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["sword"]
    perk.name = "Master swords man"
    perk.desc = "Your not a vagabond your the master of it"
    perk.pros = { "More Ammunition.","Speed, No Fall Dmg, No Explosive dmg, and take barely any HP upon shot.","0 Cooldown","Faster Swings"};
    perk.cons = {"There are no downsides, your just OP as hell."}
   perk.activename = "Arbiter.exe"
   perk.activedetails = "No more head priviliges"
   perks.atkmod = 1950 -- 2 taps any bosses
   perks.healthmod = 250
   perks.defmod = 1500 -- take 1 dmg per hit except explosion
   perks.stammod = 5000
   perks.shovemod = 1950
   perks.lightatkspeed = 100
    perks.heavyatkspeed = 1950 
    perks.recoilmod = 2000
    perks.accmod = 1950
     perks.reloadmod = 900
     perks.noaimmod = false
     perks.scavmod = 4000
     perks.harvestmod = 100
     perks.mvtmod = 40
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 400
     perks.grap = true
     perks.bleed_immune = true
    perks.backpack = true
    perks.falldamagemod = true
    perks.craftcostmod = -55 
    end,
})
Tab:CreateButton({
	Name = "The Dark Knight (Drifter)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["drift"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["drift"]
    perk.name = "The Darkest Knight"
    perk.desc = "Keep em coming! the Knight said after taking out the 12th Battallion sent to kill him"
    perk.pros = { "Your great at swordmanship","Defense increased heavily","0 Cooldown","Faster Swings"};
    perk.cons = {"Do not use guns at all"}
   perk.activename = "The blade of Azrael"
   perk.activedetails = "Thrust the blade to their hearts. By Sasquatvh_htv"
   perks.atkmod = 1950 -- 2 taps any bosses
   perks.healthmod = 999999
   perks.defmod = 1950 -- take 1 dmg per hit except explosion
   perks.stammod = 5000
   perks.shovemod = 19
   perks.lightatkspeed = 165
    perks.heavyatkspeed = 163
    perks.recoilmod = 10
    perks.accmod = 10
     perks.reloadmod = 1950
     perks.noaimmod = false
     perks.scavmod = 100
     perks.harvestmod = 100
     perks.mvtmod = 65
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 400
     perks.grap = true
     perks.bleed_immune = true
    perks.backpack = true
    perks.falldamagemod = true
    perks.craftcostmod = -15
for i,v in pairs(getgc(true)) do if type(v) == "table" then if rawget(v,"cooldown") then rawset(v,"cooldown",0) elseif rawget(v,"multicooldown") then rawset(v,"multicooldown",0) end end end
    end,
})

Tab:CreateButton({
	Name = "Modern Ninja (Vagabond)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["sword"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["sword"]
local perkability = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["sword"].kirablade
    perk.name = "Modern Ninja"
    perk.desc = "C̸̖͐a̸̜̾̀n̶̹̈͠ ̵̈́y̶͚͐̒o̶̙͙͂ǘ̵̞̣̕ ̵̱́e̸̩̺̚v̸̂ͅę̶̞̕n̷͖͕͒̚ ̶̣̬́̔s̶̝͖̓ḛ̷̐͗e̴̬̦̿͘ ̷̗̿m̸̟̆̚e̷̟̋͘!̶̯̦̇̾?̷̦͒!̸̫͊̀?̴͉̀̚ Said the Agent cutting the forces one by one without them even know where he is."
    perk.pros = { "More Ammunition.","Speed","No Fall Dmg","Increase defense heavily","Faster Swings"};
    perk.cons = {"Is over when someone can destroy you in One Punch©"}
   perk.activename = "The M̶̥̻̓o̴̟̹͌̚ö̶͕́̈n̴̨̅̐ ̸̱̰͋K̷̭̞͌͠a̷̭̩̽̊ţ̵̍ā̶͈͈n̴̥̊a̷̯̓̽ Slash"
   perk.activedetails = "Slash your enemies with a strike that will turn their flesh to paper."
   perks.atkmod = 150 -- 2 taps any bosses
   perks.healthmod = 250
   perks.defmod = 350 -- take 1 dmg per hit except explosion
   perks.stammod = 5000
   perks.shovemod = 1950
   perks.lightatkspeed = 150
    perks.heavyatkspeed = 125
    perks.recoilmod = 150
    perks.accmod = 199
     perks.reloadmod = 250
     perks.noaimmod = false
     perks.scavmod = 1000
     perks.harvestmod = 100
     perks.mvtmod = 40
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 400
     perks.grap = true
     perks.bleed_immune = true
    perks.backpack = true
    perks.falldamagemod = true
    perks.craftcostmod = 10 
    end,
})

Tab:CreateButton({
	Name = "Tanziner (Zealot dont use with DS)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shield"].basestats
        local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shield"]
        if perks then
            perk.name = "Tanziner"
            perk.desc = "You believe in art of technology."
            perk.pros = { "Immune to bleeding","Extra M1 Damage","Higher defense" }
            perk.cons = { "People will dislike you." }
           perk.activename = "Tanziner"
           perk.activedetails = "A Man from 2093."
           perks.atkmod = 1950 -- 2 taps any bosses
           perks.healthmod = 250
           perks.defmod = 1500 -- take 1 dmg per hit except explosion
           perks.stammod = 5000
           perks.shovemod = 1950
           perks.lightatkspeed = 100
            perks.heavyatkspeed = 1950 
            perks.recoilmod = 2000
            perks.harvestmod = 100
            perks.accmod = 1950
             perks.reloadmod = 250 
             perks.noaimmod = false 
             perks.bleed_immune = true
             perks.mvtmod = 100
             perks.aegisduration = math.huge
             perks.aegisdamagetakenmelee = 0
             perks.aegisrangeddamagemultiplier = 50
             perks.cooldown = 0
        end
    end,
})

Tab:CreateButton({
	Name = "Sledge Queen 2.0 Animation",
	SectionParent = modp,
	Callback = function()
        game.ReplicatedStorage.animationSets.TPanimSets["2H"].equip.AnimationId = "rbxassetid://13483033688"
        game.ReplicatedStorage.animationSets.TPanimSets["2H"].swing.AnimationId = "rbxassetid://13483037212"
        game.ReplicatedStorage.animationSets.TPanimSets["2H"].swing2.AnimationId = "rbxassetid://13483037668"
        game.ReplicatedStorage.animationSets.TPanimSets["2H"].block.AnimationId = "rbxassetid://13483032046"
        game.ReplicatedStorage.animationSets.TPanimSets["2H"].charge.AnimationId = "rbxassetid://13483033047"
        game.ReplicatedStorage.animationSets.TPanimSets["2H"].grapple.AnimationId = "rbxassetid://13483036802"
    end,
})

Tab:CreateButton({
	Name = "Sledge Queen (Arbiter)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shotgun"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shotgun"]
    perk.name = "Arbiter but you are Sledge Queen"
    perk.desc = "One of the most strongest boss in the game"
    perk.pros = { "More Ammunition.","Speed, No Fall Dmg, No Explosive dmg, and take barely any HP upon shot.","0 Cooldown","Faster Swings"};
    perk.cons = {"There are no downsides, your just OP as hell."}
   perk.activename = "Arbiter.exe"
   perk.activedetails = "i dunno."
   perks.atkmod = 1950 -- 2 taps any bosses
   perks.healthmod = 999999
   perks.defmod = 1500 -- take 1 dmg per hit except explosion
   perks.stammod = 5000
   perks.shovemod = 1950
   perks.lightatkspeed = 500
    perks.heavyatkspeed = 1950 
    perks.recoilmod = 1950
    perks.accmod = 1950
     perks.reloadmod = 900
     perks.noaimmod = false
     perks.scavmod = 1950
     perks.harvestmod = 1950
     perks.mvtmod = 200
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 1950
     perks.grap = true
     perks.bleed_immune = true
    perks.backpack = true
    perks.falldamagemod = true
    perks.craftcostmod = -1000 
    end,
})

Tab:CreateButton({
	Name = "Yharon (Immolator)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["fire"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["fire"]
    perk.name = "The Jungle Dragon"
    perk.desc = "The enemy ascended beyond your control; Or was that all your intention?"
    perk.pros = { "NOOO YOU CANT JUST HEAL TO FULL HP WHEN I NEARLY KILL YOU","THIS IS A MESSAGE TO MY MASTER"};
    perk.cons = {"Gotta be honest with you Overheat sucks frfr","Your shit with guns","Do not craft worst mistake of my life"}
   perk.activename = "Terraria calamity momento"
   perk.activedetails = "Script by Sasquatch_htv"
   perks.atkmod = 165 -- 2 taps any bosses
   perks.healthmod = 250
   perks.defmod = 850-- take 1 dmg per hit except explosion
   perks.stammod = 5000
   perks.shovemod = 10
   perks.lightatkspeed = 250
    perks.heavyatkspeed = 25
    perks.recoilmod = 10
    perks.accmod = 1
     perks.reloadmod = 1
     perks.noaimmod = false
     perks.scavmod = 500
     perks.harvestmod = 100
     perks.mvtmod = 40
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 400
     perks.grap = true
     perks.bleed_immune = true
    perks.backpack = true
    perks.falldamagemod = true
    perks.craftcostmod = 999 
    end,
})


 Tab:CreateButton({
	Name = "Devil Hunter Animation",
	SectionParent = modp,
	Callback = function()
	 Rayfield:Notify({
   Title = "Keybinds",
   Content = "V to sit ; G to dash.",
   Duration = 6.5,
   Image = 6023426915,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         warn("Term Accepted")
      end
   },
},
})

     loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Devil%20Hunter.lua'),true))()
    end,
})


Tab:CreateButton({
	Name = "Jericho Animation",
	SectionParent = modp,
	Callback = function()
     loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/J.lua'),true))()
    end,
})

        Tab:CreateButton(
        {
            Name = "Jericho (Arbiter)",
            SectionParent = modp,
            Callback = function()
                local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shotgun"].basestats
                local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shotgun"]
                perk.name = "Agent Jackson 'Jericho' K."
                perk.desc = "you know nothing of the bottomless malice within the human heart"
                perk.pros = {
                    "YOU ARE HIM",
                    "Sharp you'r blade is dull.",
                    "Increased melee damage",
                    "Increased swing speed"
                }
                perk.cons = {"Even tho you are HIM you still cant revived"}
                perk.activename = "Augmentation 'Doom'"
                perk.activedetails =
                    "Why kolderea? It's the cheapest brand I could find, now leave me alone. -Jackson K.(Agent Jericho)"
                perks.atkmod = 135 -- 2 taps any bosses
                perks.healthmod = 250
                perks.defmod = 750 -- take 1 dmg per hit except explosion
                perks.stammod = 100
                perks.shovemod = 100
                perks.lightatkspeed = 135
                perks.heavyatkspeed = 125
                perks.recoilmod = 2000
                perks.accmod = 100
                perks.reloadmod = 100
                perks.noaimmod = false
                perks.scavmod = 1
                perks.harvestmod = 100
                perks.mvtmod = 55
                explosive_resist = true
                perks.cripple_immune = true
                perks.exhaust_immune = true
                perks.frac_immune = true
                perks.nomorale = true
                perks.explosivemod = 400
                perks.grap = true
                perks.bleed_immune = true
                perks.falldamagemod = true
                perks.craftcostmod = -500
            end
        }
    )

    Tab:CreateButton(
    {
        Name = "Elite Mercenary (Survivalist)",
        SectionParent = modp,
        Callback = function()
            local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["survival"].basestats
            local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["survival"]
                        perk.name = "Elite Mercenary"
                        perk.desc =
                            "“The justifications of men who kill should always be heard with skepticism, said the monster.” ― Patrick Ness, A Monster Calls"
                        perk.pros = {
                            "Gain all trait buffs",
                            "Start with all inventory slots",
                            "Start Noruished and Quenched"
                        }
                        perk.cons = {"Huh whats a con?", "I'm afraid, everything has it's own dark side.", "Mercury Infected."}
                        perk.activename = "Mercenary"
                        perk.activedetails =
                            "Your a Mercenary NOT an Agent. Your hired to clear out eden-227 with Agents for one reason They cant find one more Agent to fill in because of what happened last time."
                        perk.activestats.cooldown = 0
                        perks.atkmod = 1950 -- 2 taps any bosses
                        perks.healthmod = 999999
                        perks.defmod = 1950
                        -- Even tho your beefy explosion still hurt somehow
                        perks.stammod = 5000
                        perks.shovemod = 1950
                        perks.lightatkspeed = 500
                        perks.heavyatkspeed = 1950
                        perks.recoilmod = 65
                        perks.accmod = 1900
                        perks.reloadmod = 1900
                        perks.noaimmod = false
                        perks.scavmod = 1950
                        perks.harvestmod = 1950
                        perks.mvtmod = 95
                        explosive_resist = true
                        perks.backpack = true
        end
    }
)


   Tab:CreateButton(
    {
        Name = "Black Death (Executioner)",
        SectionParent = modp,
        Callback = function()
local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["goggles"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["goggles"]
     perk.name = "The black death"
     perk.desc = "“The justifications of men who kill should always be heard with skepticism, said the monster.”― Patrick Ness, A Monster Calls"
     perk.pros = {"Swing and melee damage increased","Increased hip-fire Acruaccy","Crafting increase your salvage","Increase defense slightly"}
     perk.cons = {"Decreased recoil control","Decreased reload time","Cannot aim at all","Unable to scrap"}
     perk.activename = "Death sighting"
     perk.activedetails = "Reape the tears of the victim crys(Same as normal exe goggles but you gain 35 salvage per bounty)"
     perk.activestats.scrap_per_bounty = 35
     perks.atkmod = 1950 -- 2 taps any bosses
     perks.healthmod = 999999
     perks.defmod = 1950 -- take 1 dmg per hit except explosion
     perks.stammod = 5000
      perks.shovemod = 1950
   perks.lightatkspeed = 125
    perks.heavyatkspeed = 1950
    perks.recoilmod = 2000
    perks.accmod = 1950
     perks.noaimmod = false
     perks.scavmod = 4000
     perks.harvestmod = 100
     perks.mvtmod = 90
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 400
     perks.grap = true
     perks.bleed_immune = true
    perks.falldamagemod = true
    perks.craftcostmod = -55
        end
        }
    )

Tab:CreateButton(
        {
            Name = "Solutist (Sovereign)",
            SectionParent = modp,
            Callback = function()
                local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["dagger"]
                perk.name = "S̶͖̆o̶̱͋l̸͈͊û̵̜t̵͙͒i̶̤̚s̴̥̏t̷͈̄"
                perk.desc = "ɎØɄⱤ Ⱡ₳₵₭ Ø₣ ĐłⱠł₲Ɇ₦₵Ɇ ₴Ʉ₥₥₳ⱤłⱫɆ₴ ɎØɄ"
                perk.pros = {"₮Ⱨ₳₦₭₴ ₣ØⱤ ₮ⱧɆ ₣ⱤɆɆ ₭łⱠⱠ", "Guns are cooler than melees", "The anarchy collapse"}
                perk.cons = {"Unable to aim", "You cant do Cold Blooded takedown", "Wheres's the statue?"}
                perk.activename = "By Sasquatch_htv"
                perk.activedetails = "Go play it yourself why you ask me?"

                perk.atkmod = 1950 -- 2 taps any bosses
                perk.healthmod = 99999
                perk.defmod = 1950 -- take 1 dmg per hit except explosion
                perk.stammod = 500
                perk.shovemod = 1950
                perk.lightatkspeed = 100
                perk.heavyatkspeed = 10
                perk.recoilmod = 2000
                perk.accmod = 1950
                perk.reloadmod = 900
                perk.noaimmod = true
                perk.scavmod = 6999
                perk.harvestmod = 100
                perk.mvtmod = 40
                perk.explosive_resist = true
                perk.cripple_immune = true
                perk.exhaust_immune = true
                perk.frac_immune = true
                perk.nomorale = true
                perk.explosivemod = 400
                perk.grap = true
                perk.bleed_immune = true
                perk.backpack = true
                perk.falldamagemod = true
                perk.craftcostmod = -55

                for i, v in pairs(getgc(true)) do
                    if type(v) == "table" then
                        if rawget(v, "cooldown") then
                            rawset(v, "cooldown", 0)
                        elseif rawget(v, "multicooldown") then
                            rawset(v, "multicooldown", 0)
                        end
                    end
                end
            end
        }
    )
        Tab:CreateButton(
        {
            Name = "Thanatos (Apostle Unfinished)",
            SectionParent = modp,
            Callback = function()
                local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shadow"].basestats
                local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shadow"]
                local perkability = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shadow"].drifter
                perk.name = "Thanatos"
                perk.desc =
                    "As they trying to run for their lives you laughed maniacly as you take them out One.. By.. One."
                perk.pros = {"Reaping souls gives health", "Drifting in the ocean all alone"}
                perk.cons = {"No."}
                perk.activename = "Soul Reaoer"
                perk.activedetails =
                    "Steal a soul for as second chance but you will never become a man. My chosen torture makes me stronger. In a life that craves the hunge. A Freedom and a quest for life. Until the end the judgment night"
           perks.atkmod = 1950 -- 2 taps any bosses
           perks.healthmod = 999999
           perks.defmod = 1950 -- take 1 dmg per hit except explosion
           perks.stammod = 5000
           perks.shovemod = 1950
           perks.lightatkspeed = 500
            perks.heavyatkspeed = 500 
            perks.recoilmod = 1950
            perks.harvestmod = 1950
            perks.accmod = 1950
             perks.reloadmod = 999999 
             perks.noaimmod = false 
             perks.bleed_immune = true
             perks.mvtmod = 90
             perks.aegisduration = math.huge
             perks.aegisdamagetakenmelee = 0
             perks.aegisrangeddamagemultiplier = 999999
             perks.cooldown = -1950
             explosive_resist = true
             perks.cripple_immune = true
             perks.exhaust_immune = true
             perks.frac_immune = true 
             perks.nomorale = true
             perks.explosivemod = 999999
             perks.grap = false
             perks.bleed_immune = true
             perks.backpack = true
             perks.falldamagemod = true
             perks.craftcostmod = -150 
            end
        }
    )
    local Button = Tab:CreateButton({
	Name = "RIS Medic (Lazarus)",
	SectionParent = modp,
	Callback = function()
      local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["lazarus"].basestats
     local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["lazarus"]
     local perkability = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["lazarus"]
    perk.name = "R.I.S World War Medic"
    perk.desc = "When the patient woke up his skeleton was missing and the doctor was never heard ever again *laughs hystericly* and that's how I lost my medical liscene."
    perk.pros = { "Hurting is more rewarding than hurting","Increase swing speed","Faster movemnt speed","heavily increased hip fire accruacy"};
    perk.cons = {"Bad recoil control","guns hurt you alot more","HEAVY IS DEAD"}
   perk.activename = "TROPIK NCU DEVICE"
   perk.activedetails = "Somewhere before the exploration of Eden-227. The R.I.S found the location of the Servo factory and sent Scouts to steal as much they can. Which was a huge success and they found the TROPIK NCU DEVICE"
   perks.atkmod = 1950 -- 2 taps any bosses
   perks.healthmod = 999999
   perks.defmod = 1950 -- take 1 dmg per hit except explosion
   perks.stammod = 5000
   perks.shovemod = 1950
   perks.lightatkspeed = 125
    perks.heavyatkspeed = 1950
    perks.recoilmod = 2000
    perks.accmod = 1950
     perks.noaimmod = false
     perks.scavmod = 4000
     perks.harvestmod = 100
     perks.mvtmod = 90
     perks.backpack = true
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 400
     perks.grap = true
     perks.bleed_immune = true
    perks.falldamagemod = true
    perks.craftcostmod = -55
        end
    }
)

    local Button = Tab:CreateButton({
	Name = "Semi-Godmode (Lazarus / Kick Risk / Made by Snowy)",
	SectionParent = modp,
	Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/ID/main/Semi"))()
        end
    }
)


local Button = Tab:CreateButton({
	Name = "Bulldozer (Riskrunner)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["gunner"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["gunner"]
    perk.name = "The bulldozer"
    perk.desc = "You are up agaisnt the wall and I'M THE FUCKING WALL"
    perk.pros = { "Increased melee damage","Heavily HEAVILY increase defense"};
    perk.cons = {"Slower movement speed.","Slower swing speed","Unable to aim"}
   perk.activename = "Vulcan minigun"
   perk.activedetails = "Give up! And maybe I won't stuff a mudhole in your ass!"
   perks.atkmod = 45 -- 2 taps any bosses
   perks.healthmod = 250
   perks.defmod = 900 -- take 1 dmg per hit except explosion
   perks.stammod = 345
   perks.lightatkspeed = -25
   perks.heavyatkspeed = -25
    perks.recoilmod = -100
    perks.accmod = -199
    perks.reloadmod = -1000
     perks.noaimmod = false
     perks.scavmod = 4000
     perks.harvestmod = 100
     perks.mvtmod = -15
     explosive_resist = true
     perks.cripple_immune = true
     perks.nomorale = true
     perks.explosivemod = 400
     perks.grap = true
    perks.craftcostmod = -55
        end
    }
)
Tab:CreateButton({
	Name = "GunSlinger (Artilist)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["revolver"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["revolver"]
    perk.name = "Gunslinger of death"
    perk.desc = "You may not see them but you already dead without knowing"
    perk.pros = { "Your an expert of gunsmanship","Slightly increased defense","You shall die!"};
    perk.cons = {"Your shit with melee","Dont shove,Dont craft","Do not die."}
   perk.activename = "Rayleigh"
   perk.activedetails = "Shoot lmao      By Sasquatch_htv"
   perks.atkmod = 10 -- 2 taps any bosses
   perks.healthmod = 250
   perks.defmod = 135 -- take 1 dmg per hit except explosion
   perks.stammod = 100
   perks.shovemod = 10
   perks.lightatkspeed = 100
    perks.heavyatkspeed = 100
    perks.recoilmod = 1250
    perks.accmod = 100
     perks.reloadmod = 350
     perks.noaimmod = false
     perks.scavmod = 4000
     perks.harvestmod = 5000
     perks.mvtmod = 65
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 400
     perks.grap = true
     perks.bleed_immune = true
    perks.backpack = true
    perks.falldamagemod = true
    perks.craftcostmod = 599 
    end,
})

Tab:CreateButton({
	Name = "Hivemaster (Hivemind)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["hive"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["hive"]
    perk.name = "hivemaster"
    perk.desc = "The whimpers of the victim crys are just one of many"
    perk.pros = { "The Jack of all trades","Your Hivemind will support you.","Slay all."};
    perk.cons = {"Unlike the rest your weaker"}
   perk.activename = "The hive"
   perk.activedetails = "Reap their souls before they takes your."
   perks.atkmod = 175 -- 2 taps any bosses
   perks.healthmod = 75
   perks.defmod = 1950 -- take 1 dmg per hit except explosion
   perks.stammod = 900
   perks.shovemod = 1950
   perks.lightatkspeed = 300
    perks.heavyatkspeed = 275
    perks.recoilmod = 2000
    perks.accmod = 1950
     perks.reloadmod = 900
     perks.noaimmod = false
     perks.scavmod = 4000
     perks.harvestmod = 100
     perks.mvtmod = 40
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 400
     perks.grap = true
     perks.bleed_immune = true
    perks.backpack = true
    perks.falldamagemod = true
    perks.craftcostmod = -55 
    end,
})


Tab:CreateButton({
	Name = "The Mother Nature. (Hivemind)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["hive"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["hive"]
    perk.name = "The Mother Of Nature."
    perk.desc = "You are technically The Monther Of Nature (Earth)."
    perk.pros = { "Annoying","Moss","Bees","Too Green"};
    perk.cons = {"Trashes","Polutee","Humans", "Structures"}
   perk.activename = "Nature"
   perk.activedetails = "Greenie!!! :D"
   perks.atkmod = 1950 -- 2 taps any bosses
   perks.healthmod = 999999
   perks.defmod = 1950 -- take 1 dmg per hit except explosion
   perks.stammod = 5000
   perks.shovemod = 1950
   perks.lightatkspeed = 1950
    perks.heavyatkspeed = 1950
    perks.recoilmod = 1250
    perks.accmod = 1950
     perks.reloadmod = 350
     perks.noaimmod = false
     perks.scavmod = 4000
     perks.harvestmod = 5000
     perks.mvtmod = 120
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 1950
     perks.grap = true
     perks.bleed_immune = true
    perks.backpack = true
    perks.falldamagemod = true
    perks.craftcostmod = -599 
    end,
})

local Button = Tab:CreateButton({
	Name = "Sniped (Blitzer)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["ranger"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["ranger"]
    perk.name = "Sniped (Sniper / Ranger)"
    perk.desc = "Hire this guy for 2000$!!!"
    perk.pros = { "Your an expert of Sniping","Slightly better aim","You shall also die!"};
    perk.cons = {"Snipe (Obviously)","Kill Itself,Dead","Scam"}
   perk.activename = "Sniped"
   perk.activedetails = "Another goddamn sniper. - Ry"
   perks.atkmod = 1950 -- 2 taps any bosses
   perks.healthmod = 999999
   perks.defmod = 1950 -- take 1 dmg per hit except explosion
   perks.stammod = 5000
   perks.shovemod = 1950
   perks.lightatkspeed = 1950
    perks.heavyatkspeed = 1950
    perks.recoilmod = 1250
    perks.accmod = 1950
     perks.reloadmod = 350
     perks.noaimmod = false
     perks.scavmod = 4000
     perks.harvestmod = 5000
     perks.mvtmod = 120
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 400
     perks.grap = true
     perks.bleed_immune = true
    perks.backpack = true
    perks.falldamagemod = true
    perks.craftcostmod = -599 
    end,
})

local Button = Tab:CreateButton({
	Name = "The traffic worker (Crosslink)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["wire"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["wire"]
    perk.name = "The Traffic Worker"
    perk.desc = "What a long day working in public!"
    perk.pros = { "Wires.","I LIEK ELECTRIC","Town."};
    perk.cons = {"Work (Too Obvious)","Ice Creams","Always work."}
   perk.activename = "Traffic"
   perk.activedetails = "MUHAHAHAHAHAH. - Ry"
   perks.atkmod = 1950 -- 2 taps any bosses
   perks.healthmod = 999999
   perks.defmod = 1950 -- take 1 dmg per hit except explosion
   perks.stammod = 5000
   perks.shovemod = 1950
   perks.lightatkspeed = 1950
    perks.heavyatkspeed = 1950
    perks.recoilmod = 1250
    perks.accmod = 1950
     perks.reloadmod = 350
     perks.noaimmod = false
     perks.scavmod = 4000
     perks.harvestmod = 5000
     perks.mvtmod = 120
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 1950
     perks.grap = true
     perks.bleed_immune = true
    perks.backpack = true
    perks.falldamagemod = true
    perks.craftcostmod = -599 
    end,
})


local Button = Tab:CreateButton({
	Name = "The Rock (Immolator)",
	SectionParent = modp,
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["fire"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["fire"]
    perk.name = "The Rock."
    perk.desc = "Always look at the internet and O_o SUSUS"
    perk.pros = { "pro.","cringe destroyer","also orphan"};
    perk.cons = {"reset everything","love cock","memer"}
   perk.activename = "Rock"
   perk.activedetails = "MUHAHAHAHAHAH. - Ry"
   perks.atkmod = 1950 -- 2 taps any bosses
   perks.healthmod = 999999
   perks.defmod = 1950 -- take 1 dmg per hit except explosion
   perks.stammod = 5000
   perks.shovemod = 1950
   perks.lightatkspeed = 1950
    perks.heavyatkspeed = 1950
    perks.recoilmod = 1250
    perks.accmod = 1950
     perks.reloadmod = 350
     perks.noaimmod = false
     perks.scavmod = 4000
     perks.harvestmod = 5000
     perks.mvtmod = 120
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 1950
     perks.grap = true
     perks.bleed_immune = true
    perks.backpack = true
    perks.falldamagemod = true
    perks.craftcostmod = -599 
    end,
})

function getkey()
    spawn(function()
for _, instance in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if instance:IsA("LocalScript") and instance.Name ~= "ClickDetectorScript" then
        repeat
            mainHandler = getsenv(instance)
            RunService.Heartbeat:Wait()
        until mainHandler.afflictstatus ~= nil

        local upvalue = getupvalues(mainHandler.afflictstatus)
        _G.serverKey = upvalue[16]
        _G.playerKey = upvalue[17]
    end
end
--// Virus blocking
for index, status in pairs(getupvalue(mainHandler.afflictstatus, 1)) do
    if string.match(index, "Virus") ~= nil then
        status.effects.currentduration = math.huge
    end
end
end)
end

Tab:CreateLabel("Craftable Items")

local Guns = Tab:CreateSection("Guns")

  local Button =
        Tab:CreateButton(
        {
            Name = "Spawn AWP",
            SectionParent = Guns,
            Callback = function()
                local workbench = workspace.Interactables:FindFirstChild("Workbench")
                game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
                local args = {
                    [1] = workspace.Interactables.Workbench,
                    [2] = "workbenchblueprintAWMSniper"
                }

                game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
                wait(1.7)
                local args = {
                    [1] = workspace.Interactables.Workbench,
                    [2] = "workbench"
                }

                game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            end
        }
    )

 local Button =
        Tab:CreateButton(
        {
            Name = "Spawn ScarL",
            SectionParent = Guns,
            Callback = function()
                local workbench = workspace.Interactables:FindFirstChild("Workbench")
                game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
                local args = {
                    [1] = workspace.Interactables.Workbench,
                    [2] = "workbenchblueprintScarL"
                }

                game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
                wait(1.7)
                local args = {
                    [1] = workspace.Interactables.Workbench,
                    [2] = "workbench"
                }

                game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            end
        }
    )

    local Button =
        Tab:CreateButton(
        {
            Name = "Spawn ScarH",
            SectionParent = Guns,
            Callback = function()
                local workbench = workspace.Interactables:FindFirstChild("Workbench")
                game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
                local args = {
                    [1] = workspace.Interactables.Workbench,
                    [2] = "workbenchblueprintSubScar"
                }

                game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
                wait(1.7)
                local args = {
                    [1] = workspace.Interactables.Workbench,
                    [2] = "workbench"
                }

                game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            end
        }
    )

    local Button =
        Tab:CreateButton(
        {
            Name = "Spawn Hi Capa",
            SectionParent = Guns,
            Callback = function()
                local workbench = workspace.Interactables:FindFirstChild("Workbench")
                game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
                local args = {
                    [1] = workspace.Interactables.Workbench,
                    [2] = "workbenchblueprintSTIPistol"
                }

                game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
                wait(1.7)
                local args = {
                    [1] = workspace.Interactables.Workbench,
                    [2] = "workbench"
                }

                game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            end
        }
    )

local Button = Tab:CreateButton({
    Name = "Spawn Modded Pistol",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintMPistol",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 
 local Button = Tab:CreateButton({
    Name = "Spawn AK74",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintSubAK",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Spawn SKS",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintSKS",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })


 local Button = Tab:CreateButton({
    Name = "Spawn MCX",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintSubMCX",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Spawn MPX",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintSubMPX",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Spawn FAMAS",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintFAMAS",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 
 local Button = Tab:CreateButton({
    Name = "Spawn AS Val",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintASVal",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 
 local Button = Tab:CreateButton({
    Name = "Spawn Tommy Gun",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintTSMG",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 

 local Button = Tab:CreateButton({
    Name = "Spawn Deagle (MARKVII)",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintDeagle",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 local Button = Tab:CreateButton({
    Name = "Spawn RSASS",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintRSASS",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 local Button = Tab:CreateButton({
    Name = "Spawn UMP",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintUMP",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 
 local Button = Tab:CreateButton({
    Name = "Spawn M60",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintSubLMG",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 
 local Button = Tab:CreateButton({
    Name = "Spawn REDEEMER",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintMRVolver",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

Tab:CreateButton(
    {
        Name = "Spawn Benelli",
        SectionParent = Guns,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintBenelli"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)
Tab:CreateButton(
    {
        Name = "Spawn IZM",
        SectionParent = Guns,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintSUPSniper"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)

Tab:CreateButton({
    Name = "Spawn Intervention / Sniper",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintIntSniper",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

Tab:CreateButton({
    Name = "Spawn M249",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintFNLMG",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

  local Button = Tab:CreateButton({
    Name = "Spawn AKM",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintSUPAK",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })


  local Button = Tab:CreateButton({
    Name = "Spawn Milbow",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintCPBow",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

Tab:CreateButton({
    Name = "Spawn AA12",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintAAShotgun",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

Tab:CreateButton({
    Name = "Spawn Vector",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintSubVector",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 
Tab:CreateButton(
    {
        Name = "Spawn Avtomat",
        SectionParent = Guns,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintAvto"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)

Tab:CreateButton({
    Name = "Spawn KSG",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintKSG",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 
Tab:CreateButton({
    Name = "Spawn AJM",
    SectionParent = Guns,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintAJM",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

local stims = Tab:CreateSection("Stim Options")

   local Button = Tab:CreateButton({
    Name = "Spawn Hemostatic Stim",
    SectionParent = stims,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintAdrStim",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

  local Button = Tab:CreateButton({
    Name = "Spawn Orange Stim",
    SectionParent = stims,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintSStim",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

  local Button = Tab:CreateButton({
    Name = "Spawn Blue Stim",
    SectionParent = stims,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintSPDStim",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

  local Button = Tab:CreateButton({
    Name = "Spawn Green Stim",
    SectionParent = stims,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintDEFStim",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })


  local Button = Tab:CreateButton({
    Name = "Spawn Red Stim",
    SectionParent = stims,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintHStim",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

  local Button = Tab:CreateButton({
    Name = "Spawn Purple Stim",
    SectionParent = stims,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintDStim",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

  local Button = Tab:CreateButton({
    Name = "Spawn Used Stim (Useless)",
    SectionParent = stims,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintTStim",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })


local melee = Tab:CreateSection("Melee Options")

Tab:CreateButton({
    Name = "Spawn Decimator",
    SectionParent = melee,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintRBHammer",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

Tab:CreateButton(
    {
        Name = "Spawn Reikgon Hand",
        SectionParent = melee,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintTHand"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)

Tab:CreateButton({
    Name = "Spawn Maria",
    SectionParent = melee,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintNailedB",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

Tab:CreateButton({
    Name = "Spawn Exe sword",
    SectionParent = melee,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintExecSword",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

Tab:CreateButton({
    Name = "Spawn Fire axe",
    SectionParent = melee,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintFAxe",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

 
Tab:CreateButton({
    Name = "Spawn BllHook",
    SectionParent = melee,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintBHook",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

Tab:CreateButton({
    Name = "Bad Bat",
    SectionParent = melee,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintBadBat",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })


Tab:CreateButton({
    Name = "Spawn Firerier Axe",
    SectionParent = melee,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintDFAxe",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

Tab:CreateButton(
    {
        Name = "Spawn Great Sword",
        SectionParent = melee,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintGSword"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)

Tab:CreateButton(
    {
        Name = "Spawn Estoc",
        SectionParent = melee,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintESword"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)

Tab:CreateButton(
    {
        Name = "Spawn Specalist Knife (Karambit)",
        SectionParent = melee,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintKaramB"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)

Tab:CreateButton(
    {
        Name = "Spawn Halberd",
        SectionParent = melee,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintHBerd"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)

Tab:CreateButton({
    Name = "Spawn Frying Pan (L4D2 Moment)",
    SectionParent = melee,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintFPan",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

Tab:CreateButton({
    Name = "Spawn SClaw",
    SectionParent = melee,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintSClaw",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
    Tab:CreateButton(
    {
        Name = "Spawn HyperLame",
        SectionParent = melee,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintHyperlame"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)

    Tab:CreateButton(
    {
        Name = "Spawn Brass Knuckles",
        SectionParent = melee,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintBKnuckles"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)


  local Button = Tab:CreateButton({
    Name = "Spawn Sledgehammer *BONK*",
    SectionParent = melee,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintSHammer",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 
local Heal = Tab:CreateSection("Healing Options")

 local Button = Tab:CreateButton({
    Name = "Spawn Advanced IFAK",
    SectionParent = Heal,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintFAid",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

  local Button = Tab:CreateButton({
    Name = "Spawn Pain killers",
    SectionParent = Heal,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintPKillers",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 
  local Button = Tab:CreateButton({
    Name = "Spawn Crude Bandage",
    SectionParent = Heal,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintCRBandage",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

  local Button = Tab:CreateButton({
    Name = "Spawn Armor",
    SectionParent = Heal,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintAPack",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

 
  local Button = Tab:CreateButton({
    Name = "Spawn Backpack",
    SectionParent = Heal,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintBPack",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })

 
Tab:CreateButton({
    Name = "Spawn AntiB / Pain Killers v2",
    SectionParent = Heal,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintIbuP",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 
Tab:CreateButton(
    {
        Name = "Spawn Splint",
        SectionParent = Heal,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintSplint"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)
 
 Tab:CreateButton(
        {
            Name = "Spawn Tourni",
            SectionParent = Heal,
            Callback = function()
                local workbench = workspace.Interactables:FindFirstChild("Workbench")
                game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
                local args = {
                    [1] = workspace.Interactables.Workbench,
                    [2] = "workbenchblueprintTourni"
                }

                game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
                wait(1.7)
                local args = {
                    [1] = workspace.Interactables.Workbench,
                    [2] = "workbench"
                }

                game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            end
        }
    )

local Throw = Tab:CreateSection("Throwable Items")
 
Tab:CreateButton({
    Name = "Spawn Tear Gas",
    SectionParent = Throw,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintTGas",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 
 Tab:CreateButton({
    Name = "Spawn Caltrops",
    SectionParent = Throw,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintTCaltrop",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })


        Tab:CreateButton(
        {
            Name = "Spawn M67 Grenade",
            SectionParent = Throw,
            Callback = function()
                local workbench = workspace.Interactables:FindFirstChild("Workbench")
                game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
                local args = {
                    [1] = workspace.Interactables.Workbench,
                    [2] = "workbenchblueprintMGrenade"
                }

                game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
                wait(1.7)
                local args = {
                    [1] = workspace.Interactables.Workbench,
                    [2] = "workbench"
                }

                game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            end
        }
    )

        Tab:CreateButton(
        {
            Name = "Spawn Molotov",
            SectionParent = Throw,
            Callback = function()
                local workbench = workspace.Interactables:FindFirstChild("Workbench")
                game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
                local args = {
                    [1] = workspace.Interactables.Workbench,
                    [2] = "workbenchblueprintMolo"
                }

                game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
                wait(1.7)
                local args = {
                    [1] = workspace.Interactables.Workbench,
                    [2] = "workbench"
                }

                game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            end
        }
    )

Tab:CreateButton(
    {
        Name = "Spawn Steel Snares",
        SectionParent = Throw,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintSSnare"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)
Tab:CreateButton(
    {
        Name = "Spawn Proximity Mine",
        SectionParent = Throw,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintPMine"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)
Tab:CreateButton(
    {
        Name = "Spawn Punji",
        SectionParent = Throw,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintPTrap"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)
 Tab:CreateButton(
    {
        Name = "Spawn Remote Explosive",
        SectionParent = Throw,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintRExplosive"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)

Tab:CreateButton(
    {
        Name = "Spawn Hunting Axe",
        SectionParent = Throw,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintTAxe"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)

Tab:CreateButton(
    {
        Name = "Spawn Impact Grenade",
        SectionParent = Throw,
        Callback = function()
            local workbench = workspace.Interactables:FindFirstChild("Workbench")
            game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbenchblueprintImpN"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
            wait(1.7)
            local args = {
                [1] = workspace.Interactables.Workbench,
                [2] = "workbench"
            }

            game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        end
    }
)


Tab:CreateButton({
    Name = "Spawn Dynamite",
    SectionParent = Throw,
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintDynamite",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })


local Tab = Window:CreateTab("Rations / Ammo", 13075651575)

local Rat = Tab:CreateSection("MAKE SURE YOU HAVE ATLEAST 50 AMMO OF THE AMMO YOUR SPAWNING!")


Tab:CreateButton(
    {
        Name = "Spawn Light Ammo",
        SectionParent = Rat,
        Callback = function()
            local args = {
                [1] = "Light",
                [2] = 150,
                [3] = false
            }

            workspace:WaitForChild("ServerStuff"):WaitForChild("dropAmmo"):FireServer(unpack(args))
        end
    }
)

Tab:CreateButton(
    {
        Name = "Spawn Heavy Ammo",
        SectionParent = Rat,
        Callback = function()
            local args = {
                [1] = "Heavy",
                [2] = 150,
                [3] = false
            }

            workspace:WaitForChild("ServerStuff"):WaitForChild("dropAmmo"):FireServer(unpack(args))
        end
    }
)

Tab:CreateButton(
    {
        Name = "Spawn Short Ammo",
        SectionParent = Rat,
        Callback = function()
            local args = {
                [1] = "Short",
                [2] = 150,
                [3] = false
            }

            workspace:WaitForChild("ServerStuff"):WaitForChild("dropAmmo"):FireServer(unpack(args))
        end
    }
)

Tab:CreateButton(
    {
        Name = "Spawn Long Ammo",
        SectionParent = Rat,
        Callback = function()
            local args = {
                [1] = "Long",
                [2] = 150,
                [3] = false
            }

            workspace:WaitForChild("ServerStuff"):WaitForChild("dropAmmo"):FireServer(unpack(args))
        end
    }
)
Tab:CreateButton(
    {
        Name = "Spawn Medium Ammo",
        SectionParent = Rat,
        Callback = function()
            local args = {
                [1] = "Medium",
                [2] = 150,
                [3] = false
            }

            workspace:WaitForChild("ServerStuff"):WaitForChild("dropAmmo"):FireServer(unpack(args))
        end
    }
)
Tab:CreateButton(
    {
        Name = "Spawn Small Ammo",
        SectionParent = Rat,
        Callback = function()
            local args = {
                [1] = "Small",
                [2] = 150,
                [3] = false
            }

            workspace:WaitForChild("ServerStuff"):WaitForChild("dropAmmo"):FireServer(unpack(args))
        end
    }
)
Tab:CreateButton(
    {
        Name = "Spawn Shell Ammo",
        SectionParent = Rat,
        Callback = function()
            local args = {
                [1] = "Shells",
                [2] = 150,
                [3] = false
            }

            workspace:WaitForChild("ServerStuff"):WaitForChild("dropAmmo"):FireServer(unpack(args))
        end
    }
)

local Foods = Tab:CreateSection("Foods")

 local Button = Tab:CreateButton({
    Name = "Spawn Ration: MRE",
    SectionParent = Foods,
    Callback = function()
        game:GetService("Workspace").ServerStuff.dropAmmo:FireServer("rations", "MRE")
    end,
 })
 
  local Button = Tab:CreateButton({
    Name = "Spawn Ration: Beans",
    SectionParent = Foods,
    Callback = function()
        game:GetService("Workspace").ServerStuff.dropAmmo:FireServer("rations", "Beans")
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Spawn Ration: Bottle",
    SectionParent = Foods,
    Callback = function()
        game:GetService("Workspace").ServerStuff.dropAmmo:FireServer("rations", "Bottle")
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Spawn Ration: Soda",
    SectionParent = Foods,
    Callback = function()
        game:GetService("Workspace").ServerStuff.dropAmmo:FireServer("rations", "Soda")
    end,
 })



 local Tab = Window:CreateTab("Others / Fun", 6023426915)


 local Troll = Tab:CreateSection("Trolling Options", true, true, "13080063021")


Tab:CreateButton({
    Name = "Teleport SledgeQueen",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/bigblackmonkeyboi/scip/main/Sledgequeentp.lua", true))();
        
    end,
 })
Tab:CreateButton({
    Name = "Teleport ALL Scavengers",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/bigblackmonkeyboi/scip/main/tp-all-enemy-to-you-in-dw.lua", true))();
        
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Server Crasher 2.0 (Spam click the button)",
    Callback = function()
        for i = 10,100 do
            task.wait()
            workspace.ServerStuff.deathPlay:FireServer()
            task.wait()
        end
        
    end,
 })



 local modify = Tab:CreateSection("In-Game Modifier", 13075651575)


 local Button = Tab:CreateButton({
    Name = "Main Menu",
    Callback = function()
        function Respawn()
            workspace.ServerStuff.spawnPlayer:FireServer("respawncharacter")
        end 
        
        function Hub()
            workspace.ServerStuff.spawnPlayer:FireServer("hubbing")
        end    
        
        function Start(arg)
            if arg == "Normal" then
                game.Players.LocalPlayer:FindFirstChild("start").Value = "normal"
            elseif arg == "Ray" then
                game.Players.LocalPlayer:FindFirstChild("start").Value = "normal"
            end    
        end
        
        function Spawn(Cords)
            Respawn()
            repeat task.wait() until not game.Players.LocalPlayer.Character:FindFirstChild("Outfit")
            Hub()
            Start("Normal")
            repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Outfit")
            if Cords == "Match" then
                game.Players.LocalPlayer.start.Value = "normal"
                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(18.777990341186523, -2.5860984325408936, -9.264251708984375)
            elseif Cords == "HubA" then
                game.Players.LocalPlayer.start.Value = "hubbing"
                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-118.72508239746094, -22.03114128112793, 1088.935546875)
            elseif Cords == "Respawn" then
                game.Players.LocalPlayer.start.Value = "hubbing"
                Respawn()
            elseif Cords == "HubB" then
                game.Players.LocalPlayer.start.Value = ""
                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-118.72508239746094, -22.03114128112793, 1088.935546875)
            end
        end
        
        Spawn("Respawn") --- Match (puts you in match with pvp), HubB (hub with pvp), HubA (hub without pvp), Respawn (puts you back into menu)
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Control Scav interface (lag)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IncorrectDecisions/silver-octo-adventure/main/DW%20Control%20GUI.lua"))()
    end,
 })
 local Button = Tab:CreateButton({
    Name = "Hanger Thoughts (Keybind: B)",
    Callback = function()
        local uis = game:GetService("UserInputService")

uis.InputBegan:Connect(function(input,gameprocess)
    if gameprocess == true then return end

    if input.KeyCode == Enum.KeyCode.B then
workspace.ServerStuff.applyGore:FireServer("hangerPopup", game.Players.LocalPlayer.Character.PrimaryPart, nil)
workspace.ServerStuff.applyGore:FireServer("hangerPopup", game.Players.LocalPlayer.Character.PrimaryPart, nil)
workspace.ServerStuff.applyGore:FireServer("hangerPopup", game.Players.LocalPlayer.Character.PrimaryPart, nil)
workspace.ServerStuff.applyGore:FireServer("hangerPopup", game.Players.LocalPlayer.Character.PrimaryPart, nil)
workspace.ServerStuff.applyGore:FireServer("hangerPopup", game.Players.LocalPlayer.Character.PrimaryPart, nil)
workspace.ServerStuff.applyGore:FireServer("hangerPopup", game.Players.LocalPlayer.Character.PrimaryPart, nil)
end
end)
    end,
 })


 
  local Button = Tab:CreateButton({
    Name = "Executor Functions Tester (Check Console After Clicking)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Exect%20Tester.lua", true))();
    end,
 })


 local Button = Tab:CreateButton({
    Name = "Music / Theme Songs",
    Callback = function()
        
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        
        local Window = Library.CreateLib("Sounds", "Serpent")
        
        
        -- Tabs --
        
        local Songs = Window:NewTab("Holdout")
        local Gamemode = Window:NewTab("Gamemode")
        local Theme = Window:NewTab("Theme")
        local Events = Window:NewTab("Events")
        local Traps = Window:NewTab("Trigger")
        local Boss = Window:NewTab("Gabriel")
        local Emperor = Window:NewTab("Emperor")
        local Ilija = Window:NewTab("Ilija")
        local AGENT = Window:NewTab("AGENT")
        local Shadow = Window:NewTab("Reikgon")
        local Settings = Window:NewTab("Settings")
        
        -- Local --
        
        local Play = game:GetService("Workspace").ServerStuff.playAudio
        
        -- Holdout --
        
        local Holdpot = Songs:NewSection("Boss Themes")
        
        Holdpot:NewButton("Medieval", "Knights Theme", function()
        Play:FireServer({"songs", "holdout_bosses"}, "medieval", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Boss Themes";
        Text = "Playing - Knights Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Holdpot:NewButton("Zealot", "Zealot Theme", function()
        Play:FireServer({"songs", "holdout_bosses"}, "zealot", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Boss Themes";
        Text = "Playing - Zealot Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        Holdpot:NewButton("Sickler", "Sickler Theme", function()
        Play:FireServer({"songs", "holdout_bosses"}, "sickler", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Boss Themes";
        Text = "Playing - Sickler Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        Holdpot:NewButton("Sledge", "Sledge Queen Theme", function()
        Play:FireServer({"songs", "holdout_bosses"}, "sledge", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Boss Themes";
        Text = "Playing - Sledge Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        Holdpot:NewButton("Yosef", "Yosef Theme", function()
        Play:FireServer({"songs", "holdout_bosses"}, "yosef", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Boss Themes";
        Text = "Playing - Yosef Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        Holdpot:NewButton("Rhyer", "Rhyer Theme", function()
        Play:FireServer({"songs", "holdout_bosses"}, "rhyer", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Boss Themes";
        Text = "Playing - Rhyer Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        Holdpot:NewButton("Bad", "Bad Business Theme", function()
        Play:FireServer({"songs", "holdout_bosses"}, "bad", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Boss Themes";
        Text = "Playing - Bad Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        -- Theme --
        
        local Theme = Theme:NewSection("Theme")
        
        Theme:NewButton("Scavfinal", "ScavFinal Theme", function()
        Play:FireServer({"songs"}, "scavfinal", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Theme";
        Text = "Playing - Scavfinal Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Theme:NewButton("Scavwars", "Scavwars Theme", function()
        Play:FireServer({"songs"}, "scavwar", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Theme";
        Text = "Playing - Scavwars Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Theme:NewButton("Final", "This shit Dope", function()
        Play:FireServer({"songs"}, "final", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Theme";
        Text = "Playing - Final Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Theme:NewButton("End Credits", "Ending Credits Theme", function()
        Play:FireServer({"songs"}, "unused2", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Theme";
        Text = "Playing - End Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Theme:NewButton("Unused", "Unused Theme", function()
        Play:FireServer({"songs"}, "unused1", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Theme";
        Text = "Playing - Unused Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        -- Gamemode --
        
        local Mode = Gamemode:NewSection("Random Themes")
        
        Mode:NewButton("Juggernaut", "Juggernaut", function()
        Play:FireServer({"gamemode"}, "juggernaut", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Random";
        Text = "Playing - Juggernaut";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Mode:NewButton("Bloodrush", "Bloodrush", function()
        Play:FireServer({"gamemode"}, "bloodrush", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Random";
        Text = "Playing - Bloodrush";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Mode:NewButton("GamemodeA", "GamemodeA", function()
        Play:FireServer({"gamemode"}, "gamemodeA", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Random";
        Text = "Playing - GamemodeA";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Mode:NewButton("GamemodeB", "GamemodeB", function()
        Play:FireServer({"gamemode"}, "gamemodeB", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Random";
        Text = "Playing - GamemodeB";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Mode:NewButton("GamemodeC", "GamemodeC", function()
        Play:FireServer({"gamemode"}, "gamemodeC", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Random";
        Text = "Playing - GamemodeC";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Mode:NewButton("Horn", "Horn", function()
        Play:FireServer({"gamemode"}, "horn", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Random";
        Text = "Playing - Horn";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        -- Events --
        
        local Event = Events:NewSection("Events Sounds")
        
        Event:NewButton("KillSwitch", "KillSwitch", function()
        Play:FireServer({"events", "survevents"}, "killswitch", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Events";
        Text = "Playing - KillSwitch";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Event:NewButton("Flareraid", "Flareraid", function()
        Play:FireServer({"events", "survevents"}, "flareraid", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Events";
        Text = "Playing - Flareraid";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Event:NewButton("Bloodrush", "Bloodrush", function()
        Play:FireServer({"events", "survevents"}, "bloodrush", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Events";
        Text = "Playing - Bloodrush";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Event:NewButton("Thunder", "Thunder", function()
        Play:FireServer({"events", "survevents"}, "thunder", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Events";
        Text = "Playing - Thunder";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Event:NewButton("Exotic", "Exotic", function()
        Play:FireServer({"events", "survevents"}, "exotic", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Events";
        Text = "Playing - Exotic";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Event:NewButton("Monte", "Monte", function()
        Play:FireServer({"events", "survevents"}, "monte", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Events";
        Text = "Playing - Monte";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        -- Traps --
        
        local Tr = Traps:NewSection("Trigger Sounds")
        
        Tr:NewButton("Flare", "Flare Trap", function()
        Play:FireServer({"world_item"}, "trap_flare1", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Trigger";
        Text = "Triggering - Flare";
        Icon = "rbxassetid://6833114846";
        Duration = 1;
        })
        end)
        
        Tr:NewButton("Flare2", "Flare Trap2", function()
        Play:FireServer({"world_item"}, "trap_flare2", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Trigger";
        Text = "Triggering - Flare2";
        Icon = "rbxassetid://6833114846";
        Duration = 1;
        })
        end)
        
        Tr:NewButton("Dynamite", "Dynamite Trap", function()
        Play:FireServer({"world_item"}, "trap_fuse", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Trigger";
        Text = "Triggering - Flare";
        Icon = "rbxassetid://6833114846";
        Duration = 1;
        })
        end)
        
        Tr:NewButton("Firebomb", "Firebomb", function()
        Play:FireServer({"world_item"}, "firebomb", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Trigger";
        Text = "Triggering - Firebomb";
        Icon = "rbxassetid://6833114846";
        Duration = 1;
        })
        end)
        
        -- Boss --
        
        local Boss = Boss:NewSection("Voicelines")
        
        Boss:NewDropdown("Taunt", "Taunt", {"taunt_1", "taunt_2", "taunt_3", "taunt_4", "taunt_5", "taunt_6", "taunt_7", "taunt_8", "taunt_9"}, function(Select)
        Play:FireServer({"ai", "boss"}, Select, workspace)
        end)
        
        Boss:NewDropdown("Hurt", "Hurt", {"hurt_1", "hurt_2", "hurt_3", "hurt_4"}, function(Hurt)
        Play:FireServer({"ai", "boss"}, Hurt, workspace)
        end)
        
        Boss:NewButton("Big Hurt", "Totally Moaning", function()
        Play:FireServer({"ai", "boss"}, "big_hurt", workspace)
        end)
        
        Boss:NewButton("Intro", "Introduction", function()
        Play:FireServer({"ai", "boss"}, "intro_1", workspace)
        end)
        
        Boss:NewButton("Intro2", "Introduction2", function()
        Play:FireServer({"ai", "boss"}, "intro_2", workspace)
        end)
        
        Boss:NewButton("Gameover", "Gameover", function()
        Play:FireServer({"ai", "boss"}, "game_over1", workspace)
        end)
        
        Boss:NewButton("Gameover2", "Gameover2", function()
        Play:FireServer({"ai", "boss"}, "game_over2", workspace)
        end)
        
        Boss:NewButton("Behold", "Behold Power of An Angels", function()
        Play:FireServer({"ai", "boss"}, "behold", workspace)
        end)
        
        Boss:NewButton("Enough", "Enough", function()
        Play:FireServer({"ai", "boss"}, "enough", workspace)
        end)
        
        Boss:NewButton("Woes", "Woes", function()
        Play:FireServer({"ai", "boss"}, "woes", workspace)
        end)
        
        -- Emperor --
        
        local Emp = Emperor:NewSection("Voicelines")
        
        Emp:NewDropdown("Begin", "Begin", {"begin1", "begin2", "begin3"}, function(begin)
        Play:FireServer({"events", "emperor"}, begin, workspace)
        end)
        
        Emp:NewDropdown("Blocked", "Blocked", {"blocked1", "blocked2", "blocked3", "blocked4", "blocked5"}, function(blocked)
        Play:FireServer({"events", "emperor"}, blocked, workspace)
        end)
        
        Emp:NewDropdown("Chatter", "Chatter", {"chatter1", "chatter2", "chatter3", "chatter4", "chatter5"}, function(chat)
        Play:FireServer({"events", "emperor"}, chat, workspace)
        end)
        
        Emp:NewDropdown("Confirm", "Confirm", {"confirm1", "confirm2", "confirm3", "confirm4", "confirm5"}, function(confirm)
        Play:FireServer({"events", "emperor"}, confirm, workspace)
        end)
        
        Emp:NewDropdown("Lowhealth", "Lowhealth", {"lowhealth1", "lowhealth2", "lowhealth3"}, function(low)
        Play:FireServer({"events", "emperor"}, low, workspace)
        end)
        
        -- Ilija --
        
        local Ilija = Ilija:NewSection("Voicelines")
        
        Ilija:NewDropdown("Arrive", "Arrive", {"arrive1", "arrive2", "arrive3"}, function(Arrive)
        Play:FireServer({"voices", "ilija", "arrive"}, Arrive, workspace)
        end)
        
        Ilija:NewDropdown("Quip", "Quip", {"quip1", "quip2", "quip3", "quip4", "quip5"}, function(Quip)
        Play:FireServer({"voices", "ilija", "quip"}, Quip, workspace)
        end)
        
        Ilija:NewDropdown("End", "End", {"end1", "end2", "end3"}, function(End)
        Play:FireServer({"voices", "ilija", "end"}, End, workspace)
        end)
        
        Ilija:NewDropdown("Reload", "Reload", {"reload1", "reload2", "reload3", "reload4", "reload5", "reload6", "reload7", "reload8", "reload9"}, function(Reload)
        Play:FireServer({"voices", "ilija", "reload"}, Reload, workspace)
        end)
        
        Ilija:NewDropdown("Shot", "Shot", {"shot1", "shot2", "shot3", "shot4", "shot5", "shot6", "shot7", "shot8", "shot9", "shot10", "shot11"}, function(Shot)
        Play:FireServer({"voices", "ilija", "shot"}, Shot, workspace)
        end)
        
        -- AGENT --
        
        local Agen = AGENT:NewSection("AGENT Voicelines")
        
        Agen:NewDropdown("Stormenter", "Stormenter", {"storm1", "storm2"}, function(storm)
        Play:FireServer({"AGENT", "stormenter"}, storm, workspace)
        end)
        
        Agen:NewDropdown("Stormleave", "Stormleave", {"storm1", "storm2"}, function(storm2)
        Play:FireServer({"AGENT", "stormleave"}, storm2, workspace)
        end)
        
        Agen:NewDropdown("hostile", "hostile", {"hostile1", "hostile2", "hostile3", "hostile4", "hostile5", "hostile6", "hostile7", "hostile8"}, function(hostile)
        Play:FireServer({"AGENT", "hostile"}, hostile, workspace)
        end)
        
        Agen:NewDropdown("Heavy", "Heavy", {"heavy1", "heavy2"}, function(heavy)
        Play:FireServer({"AGENT", "heavy"}, heavy, workspace)
        end)
        
        Agen:NewDropdown("Join", "Join", {"join1", "join2", "join3"}, function(join)
        Play:FireServer({"AGENT", "join"}, join, workspace)
        end)
        
        Agen:NewDropdown("Left", "Left", {"left1", "left2", "left3"}, function(left)
        Play:FireServer({"AGENT", "left"}, left, workspace)
        end)
        
        Agen:NewDropdown("Down", "Down", {"down1", "down2"}, function(down)
        Play:FireServer({"AGENT", "down"}, down, workspace)
        end)
        
        Agen:NewDropdown("Hvt", "Hvt", {"hvt1", "hvt2", "hvt3"}, function(hvt)
        Play:FireServer({"AGENT", "hvt"}, hvt, workspace)
        end)
        
        Agen:NewDropdown("Lowhealth", "Lowhealth", {"lowhealth1", "lowhealth2", "lowhealth3"}, function(low)
        Play:FireServer({"AGENT", "lowhealth"}, low, workspace)
        end)
        
        Agen:NewDropdown("Echo Start", "Echo Start", {"start1", "start2"}, function(storm)
        Play:FireServer({"AGENT", "echo_start"}, storm, workspace)
        end)
        
        -- Shadow --
        
        local Shadow = Shadow:NewSection("Reikgon Voices")
        
        Shadow:NewButton("Sickler Scream", "Alert", function()
        Play:FireServer({"shadow"}, "alert", workspace)
        end)
        
        Shadow:NewButton("Chainbreak", "Chainbreak", function()
        Play:FireServer({"shadow"}, "chainbreak", workspace)
        end)
        
        Shadow:NewButton("Sickler Theme", "Sickler Provoked Theme", function()
        Play:FireServer({"shadow"}, "sickler_song", workspace)
        end)
        
        Shadow:NewButton("Sickler Crying", "Sickler Idle", function()
        Play:FireServer({"shadow"}, "sickler_idle", workspace)
        end)
        
        Shadow:NewDropdown("Sickler", "Sickler Voice", {"sickler_noise1", "sickler_noise2", "sickler_noise3"}, function(sickler)
        Play:FireServer({"shadow"}, sickler, workspace)
        end)
        
        Shadow:NewLabel("Skinner")
        
        Shadow:NewDropdown("Skinner", "Skinner Voice", {"skinner_noise1", "skinner_noise2", "skinner_noise3", "skinner_noise4", "skinner_noise5"}, function(skinner)
        Play:FireServer({"shadow"}, skinner, workspace)
        end)
        
        Shadow:NewLabel("Hanger")
        
        Shadow:NewDropdown("Hanger Alert", "Hanger Alert", {"alert1", "alert2", "alert3"}, function(hanger)
        Play:FireServer({"shadow", "hang"}, hanger, workspace)
        end)
        
        Shadow:NewButton("Influence", "influence", function()
        Play:FireServer({"shadow", "hang"}, "influence1", workspace)
        end)
        
        Shadow:NewButton("Influence2", "influence2", function()
        Play:FireServer({"shadow", "hang"}, "influence2", workspace)
        end)
        
        Shadow:NewButton("Cast", "Possessed Sound", function()
        Play:FireServer({"shadow", "hang"}, "cast", workspace)
        end)
        
        Shadow:NewButton("Resist", "Out of Possessed", function()
        Play:FireServer({"shadow", "hang"}, "resist", workspace)
        end)
        
        Shadow:NewLabel("Hidden")
        
        Shadow:NewButton("Attack", "Hidden Attack Sound", function()
        Play:FireServer({"events", "hiddenB"}, "attack", workspace)
        end)
        
        Shadow:NewDropdown("Voicelines", "Taunt", {"taunt1", "taunt2", "taunt3", "taunt4"}, function(hidden)
        Play:FireServer({"events", "hiddenB"}, hidden, workspace)
        end)
        
        -- Settings --
        
        local Set = Settings:NewSection("Settings")
        
        Set:NewKeybind("UI", "UI Keybind", Enum.KeyCode.RightShift, function()
            Library:ToggleUI()
        end)
    end,
 })

local settingsTab = Window:CreateTab("Settings", 13075268290)

local Wind0wSettings = settingsTab:CreateSection("General Options", false, false, "13080063021")
	
	local UIKeybind = settingsTab:CreateSection("Hide/Unhide UI Keybind",false)
   local Keybind = settingsTab:CreateKeybind({
   Name = "UI Keybind",
   SectionParent = Wind0wSettings,
   CurrentKeybind = "Insert",
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
		SectionParent = Wind0wSettings,
		CurrentValue = false,
		Flag = "Settings_CompactMode",
        SectionParent = Wind0wSettings,
		Callback = function(value) 
			Rayfield:ToggleOldTabStyle(not value)
		end
	})
	
	settingsTab:CreateToggle({
		Name = "Enable Rendering",
		SectionParent = Wind0wSettings,
		CurrentValue = true,
		Flag = "Settings_DisableRendering",
		SectionParent = windowSettings,
		Callback = function(value) 
			game:GetService("RunService"):Set3dRenderingEnabled(value)
		end
	})

    settingsTab:CreateButton({
	Name = "Destroy UI",
	SectionParent = Wind0wSettings,
	Callback = function()
		Rayfield:Destroy()
    end,
 })

    settingsTab:CreateButton({
	Name = "Unlock Fps",
	SectionParent = Wind0wSettings,
	Callback = function()
		setfpscap(1000)
    end,
 })

local Net = settingsTab:CreateSection("Netless", false, false, "rbxthumb://type=Asset&id=5107182114&w=150&h=1501")

  local Button = settingsTab:CreateButton({
	Name = "Toggle Netless",
	SectionParent = Net,
	Callback = function()
	 for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
     if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
      game:GetService("RunService").Heartbeat:connect(function()
      v.Velocity = Vector3.new(0,35,0)
      wait(0.5)
     end)
    end
  end

    game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Notification";
	Text = "Netless activated";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
    Duration = 16;
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/netless.txt'),true))()
	end,
 })
 
 
 local FTab = Window:CreateTab("Facts Tab", 13075637275)

local windowSettings = FTab:CreateSection("Facts")

local Paragraph = FTab:CreateParagraph({Title = "The Black Death (also known as the Pestilence, the Great Mortality or the Plague)", Content = "Was a bubonic plague pandemic occurring in Western Eurasia and North Africa from 1346 to 1353. It is the most fatal pandemic recorded in human history, causing the deaths of 75–200 million people, peaking in Europe from 1347 to 1351. Bubonic plague is caused by the bacterium Yersinia pestis spread by fleas, but during the Black Death it probably also took a secondary form, spread by person-to-person contact via aerosols, causing pneumonic plague. The Black Death was the beginning of the second plague pandemic. The plague created religious, social and economic upheavals, with profound effects on the course of European history. The origin of the Black Death is disputed. Genetic analysis points to the evolution of Yersinia pestis in the Tian Shan mountains on the border between Kyrgyzstan and China 2,600 years ago. The immediate territorial origins of the Black Death and its outbreak remains unclear with some pointing towards Central Asia, China, the Middle East, and Europe. The pandemic was reportedly first introduced to Europe during the siege of the Genoese trading port of Kaffa in Crimea by the Golden Horde army of Jani Beg in 1347. From Crimea, it was most likely carried by fleas living on the black rats that travelled on Genoese ships, spreading through the Mediterranean Basin and reaching North Africa, Western Asia, and the rest of Europe via Constantinople, Sicily, and the Italian Peninsula. There is evidence that once it came ashore, the Black Death mainly spread from person-to-person as pneumonic plague, thus explaining the quick inland spread of the epidemic, which was faster than would be expected if the primary vector was rat fleas causing bubonic plague. In 2022, it was discovered that there was a sudden spread may not have been due to Mongol conquests in the 14th century, as previously speculated."})

local Paragraph = FTab:CreateParagraph({Title = "The Vietnam War (also known by other names)", Content = "was a conflict in Vietnam, Laos, and Cambodia from 1 November 1955 to the fall of Saigon on 30 April 1975. It was the second of the Indochina Wars and was officially fought between North Vietnam and South Vietnam. The north was supported by the Soviet Union, China, and other communist states, while the south was supported by the United States and other anti-communist allies. The war is widely considered to be a Cold War-era proxy war. It lasted almost 20 years, with direct U.S. involvement ending in 1973. The conflict also spilled over into neighboring states, exacerbating the Laotian Civil War and the Cambodian Civil War, which ended with all three countries officially becoming communist states by 1976. With the defeat of the French Union in the First Indochina War and its acceptance of military withdrawal from Vietnam pursuant to the Geneva peace agreement on Vietnam that took effect on 23 July 1954, the country gained the independence from France but was divided into two military gathering areas: the Viet Minh took control of North Vietnam, while the U.S. assumed financial and military support for the South Vietnamese state. The Viet Cong (VC), a South Vietnamese common front under the direction of the north, initiated a guerrilla war in the south. The People's Army of Vietnam (PAVN), also known as the North Vietnamese Army (NVA), engaged in more conventional warfare with U.S. and Army of the Republic of Vietnam (ARVN). North Vietnam invaded Laos in 1958, establishing the Ho Chi Minh Trail to supply and reinforce the VC. By 1963, the north had sent 40,000 soldiers to fight in the south. involvement increased under President John F. Kennedy, from just under a thousand military advisors in 1959 to 23,000 by 1964. Following the Gulf of Tonkin incident in August 1964, the U.S. Congress passed a resolution that gave President Lyndon B. Johnson broad authority to increase U.S. military presence in Vietnam, without a formal declaration of war. Johnson ordered the deployment of combat units for the first time, and dramatically increased the number of American troops to 184,000.[62] U.S. and South Vietnamese forces relied on air superiority and overwhelming firepower to conduct search and destroy operations, involving ground forces, artillery, and airstrikes. The U.S. also conducted a large-scale strategic bombing campaign against North Vietnam and continued significantly building up its forces, despite little progress being made. In 1968, North Vietnamese forces launched the Tet Offensive; though it was a military defeat for them, it became a political victory, as it caused U.S. domestic support for the war to fade. By the end of the year, the VC held little territory and were sidelined by the PAVN. In 1969, North Vietnam declared the Provisional Revolutionary Government of the Republic of South Vietnam. Operations crossed national borders, and the U.S. bombed North Vietnamese supply routes in Laos and Cambodia. The 1970 deposing of the Cambodian monarch, Norodom Sihanouk, resulted in a PAVN invasion of the country (at the request of the Khmer Rouge), and then a U.S.-ARVN counter-invasion, escalating the Cambodian Civil War. After the election of Richard Nixon in 1969, a policy of 'Vietnamization' began, which saw the conflict fought by an expanded ARVN, while U.S. forces withdrew in the face of increasing domestic opposition. U.S. ground forces had largely withdrawn by early 1972, and their operations were limited to air support, artillery support, advisors, and materiel shipments. The Paris Peace Accords of January 1973 saw all U.S. forces withdrawn, accords were broken almost immediately, and fighting continued for two more years. Phnom Penh fell to the Khmer Rouge on 17 April 1975, while the 1975 spring offensive saw the Fall of Saigon to the PAVN on 30 April, marking the end of the war. North and South Vietnam were reunified on 2 July the following year."})

 
local RCH = Tab:CreateSection("Raccoon Hub Modifier Misc")

 local Button = Tab:CreateButton({
	Name = " FE Physics Gun",
	SectionParent = RCH,
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/FE%20Physics%20Gun.lua'),true))()
	end,
 })

 local Button = Tab:CreateButton({
	Name = " VAPE V4",
	SectionParent = RCH,
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/VAPE%20V4%20%5Bbedwar%5D"))()
    end,
 })

local Button = Tab:CreateButton({
	Name = " Proton Free / Proton Admin",
	SectionParent = RCH,
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Proton%20Free.lua'))()
	end,
 })

local Button = Tab:CreateButton({
	Name = " Infinite Yield v5.9.3",
	SectionParent = RCH,
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
 })

MiscTab:CreateButton({
	Name = " Nameless Admin",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Nameless%20Admin.lua"))()
	end,
 })

local Button = Tab:CreateButton({
	Name = " CMD X v1.9.9F",
	SectionParent = RCH,
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/CMD-X'))()
	end,
 })

local Button = Tab:CreateButton({
	Name = " Localscript Anti Kick",
	SectionParent = RCH,
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Anti-Kick/main/Anti%20Kick.lua"))()
	end,
 })

 local Button = Tab:CreateButton({
	Name = " Anti Fling",
	SectionParent = RCH,
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/AntiFling"))()
	end,
 })

 local Button = Tab:CreateButton({
	Name = " Hydroxide",
	SectionParent = RCH,
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Hydroxide"))()
    end,
 })
 local Button = Tab:CreateButton({
	Name = " Orca v1.1.1",
	SectionParent = RCH,
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Orca"))()
    end,
 })
 local Button = Tab:CreateButton({
	Name = " Domain X v1.96",
	SectionParent = RCH,
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/fortnitemodder/DomainX/main/Source"))()
    end,
 })
 
 local Button = Tab:CreateButton({
	Name = " Eclipse Hub v0.88",
	SectionParent = RCH,
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/Eclipse%20hub.lua"))()
    end,
 })

 	local Button = MiscTab:CreateButton({
   Name = " FE Front Flip",
   SectionParent = RCH,
   Callback = function()
   loadstring(game:HttpGet('https://pastebin.com/raw/8vFCxMWT'))() -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
	Name = " FE invis tool",
	SectionParent = RCH,
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/invis2tool.lua'))() -- The function that takes place when the button is pressed
	end,
 })

local Button = MiscTab:CreateButton({
	Name = " Ry's Enhancer v0.1",
	SectionParent = RCH,
	Callback = function()
 Rayfield:Notify({
   Title = "Crashing!",
   Content = "If you are on Windows 7 or lower RAM, this could crash your game.",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         warn("DIE!!!!!")
      end
   },
},
})
 Rayfield:Notify({
   Title = "Experience",
   Content = "Use RoShade for a better experience. Click this button and the link will be copied into your clipboard",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Install RoShade",
         Callback = function()
         setclipboard("https://roshade.com/")
      end
   },
},
})
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/FUCKING%20SHADERS"))()
    end,
 })

local Button = Tab:CreateButton({
	Name = " RTX | Shader",
	SectionParent = RCH,
	Callback = function()
 Rayfield:Notify({
   Title = "Crashing!",
   Content = "If you are on Windows 7 or lower RAM, this could crash your game.",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
 Rayfield:Notify({
   Title = "Experience",
   SectionParent = RCH,
   Content = "Use RoShade for a better experience. Click this button and the link will be copied into your clipboard",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Install RoShade",
         Callback = function()
         setclipboard("https://roshade.com/")
      end
   },
},
})
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/RTX.lua"))()
    end,
 })

	local Button = Tab:CreateButton({
   Name = " Self Moderator",
   SectionParent = RCH,
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Fake%20Self%20Ban.lua'))() -- The function that takes place when the button is pressed
   end,
})

 local Button = MiscTab:CreateButton({
	Name = " Dabbing Animation",
	SectionParent = RCH,
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Dab-8883"))()
	end,
 })
  local Button = MiscTab:CreateButton({
	Name = " Ball Rolling Animation | Patched",
	SectionParent = RCH,
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Ball-Roll-8881"))()
	end,
 })
	local Button = MiscTab:CreateButton({
   Name = " Fast animations",
   SectionParent = RCH,
   Callback = function()
   loadstring(game:HttpGet('https://pastebin.com/raw/8DKHE7sd'))() -- The function that takes place when the button is pressed
   end,
})

MiscTab:CreateButton({
	Name = " Proximity Prompt Bypass",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Proximity%20Prompt%20bypass.lua"))()
	end,
 })
MiscTab:CreateButton({
	Name = " Resizable Chat (Default chat only)",
	Callback = function()
		local ChatSettings = require(game:GetService("Chat").ClientChatModules.ChatSettings)

        ChatSettings.WindowDraggable = true --allows the chat to be dragged around the screen
        ChatSettings.WindowResizable = true --allows you to resize the chat by dragging the corner

        repeat wait() until game:IsLoaded()
        local c =game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Chat"):FindFirstChildWhichIsA("Frame");c.Active = true;c.Draggable=true
        local ChatSettings = require(game:GetService("Chat").ClientChatModules.ChatSettings)
        ChatSettings.WindowResizable = true
	end,
 })

    end,
 })