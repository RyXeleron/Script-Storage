--i code this bad
local lplr = game.Players.LocalPlayer
local name = lplr.Name
local dname = lplr.DisplayName
local workspace = game.Workspace
local chlplr = lplr.Character.Humanoid
local executor = identifyexecutor() or "unknown"
local id = lplr.UserId
local req = http_request or request or (syn and syn.request)
local HS = game:GetService("HttpService")
local response = HS:JSONDecode(
    req({
    Url = "https://users.roblox.com/v1/users/"..game.Players.LocalPlayer.UserId
})
.Body)
local country = game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(lplr)
local version = "2.6"
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local FPS = 0
local function updateFPS()
	FPS += 1
end
RunService.RenderStepped:Connect(updateFPS)


getgenv().SecureMode = true
local Arrayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Custom%20Field'))()
local espLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Sirius/main/library/esp/esp.lua"))()

local Window = Arrayfield:CreateWindow({
   Name = "Pissware : Universal",
   LoadingTitle = "Hello, "..name.."!",
   LoadingSubtitle = "made by drmr",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Pissware"
   },
})   


local Tab = Window:CreateTab("Home", 6026568198)
local time = Tab:CreateLabel(""..os.date("%A, %B %d, %I:%M:%S %p", os.time()))
spawn(function()
while task.wait() do
time:Set(""..os.date("%A, %B %d, %I:%M:%S %p", os.time()))
end
end)

local Label = Tab:CreateLabel("FPS: "..workspace:GetRealPhysicsFPS())
spawn(function()
while wait(1) do
	Label:Set("FPS: "..FPS)
	FPS = 0
end
end)
local Label = Tab:CreateLabel("Current players: "..#Players:GetPlayers().."/"..Players.MaxPlayers)
spawn(function()
while task.wait() do
Label:Set("Current players: "..#Players:GetPlayers().."/"..Players.MaxPlayers)
end
end)
local Section = Tab:CreateSection(" ")
local Label = Tab:CreateLabel("                                Info for your roblox account")
local Label = Tab:CreateLabel("Name: "..name)
local Label = Tab:CreateLabel("Display Name: "..dname)
local Label = Tab:CreateLabel("User ID "..id)
local Label = Tab:CreateLabel("Account creation date: "..response.created)
local Section = Tab:CreateSection(" ")
local Label = Tab:CreateLabel("                                                  Misc")
local Label = Tab:CreateLabel("Executor: "..executor)
local Label = Tab:CreateLabel("Country: "..country)
local Label = Tab:CreateLabel("Pissware version : V"..version)

local Tab = Window:CreateTab("Character", 6023426915)
local Section = Tab:CreateSection("LocalPlayer")

local Input = Tab:CreateInput({
   Name = "Speed",
   Info = "Increases/decreases your speed, the default walkspeed is 16", -- Speaks for itself, Remove if none.
   PlaceholderText = "Walkspeed",
   NumbersOnly = true, -- If the user can only type numbers.
   CharacterLimit = 15, --max character limit. Remove if none.
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused.
   RemoveTextAfterFocusLost = false,
   Callback = function(v)
   chlplr.WalkSpeed = v
   end,
})

local Input = Tab:CreateInput({
   Name = "Jump",
   Info = "Makes you jump higher/lower, the default JumpPower is 50", -- Speaks for itself, Remove if none.
   PlaceholderText = "JumpPower",
   NumbersOnly = true, -- If the user can only type numbers.
   CharacterLimit = 15, --max character limit. Remove if none.
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused.
   RemoveTextAfterFocusLost = false,
   Callback = function(v)
   chlplr.JumpPower = v
   end,
})
local Input = Tab:CreateInput({
   Name = "Field of View",
   Info = "Makes your FOV higher/lower, the default FOV is 70",
   PlaceholderText = "FOV",
   NumbersOnly = true, 
   CharacterLimit = 15, 
   OnEnter = true, 
   RemoveTextAfterFocusLost = false,
   Callback = function(v)
   game:GetService'Workspace'.Camera.FieldOfView = v
   end,
})

local Section = Tab:CreateSection("Player actions")

local Button = Tab:CreateButton({
   Name = "Refresh character",
   Info = "Refreshes your character",
   Interact = '',
   Callback = function()
   repeat chlplr.Health = 0 task.wait() until chlplr.Health ~= 0
   end,
})

local Button = Tab:CreateButton({
   Name = "Reset character",
   Info = "Resets your character",
   Interact = '',
   Callback = function()
   loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/AnAvaragelilmemer/scripts/main/refresh%20character"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Rejoin",
   Info = "self explaining",
   Interact = '',
   Callback = function()
   game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService('Players').LocalPlayer)
   end,
})

local Button = Tab:CreateButton({
   Name = "Save game",
   Info = "uses saveinstance() to save the game",
   Interact = '',
   Callback = function()
   saveinstance()
   end,
})

local Button = Tab:CreateButton({
   Name = "Leave game",
   Info = "uses game:Shutdown() to leave the game",
   Interact = '',
   Callback = function()
   game:Shutdown()
   end,
})

local Button = Tab:CreateButton({
   Name = "Unlock fps",
   Info = "Unlocks your fps.",
   Interact = '',
   Callback = function()
   setfpscap(999)
   end,
})

local Button = Tab:CreateButton({
   Name = "lock fps",
   Info = "locks your fps.",
   Interact = '',
   Callback = function()
   setfpscap(60)
   end,
})

local Section = Tab:CreateSection("Playerlist")


local Input = Tab:CreateInput({
   Name = "teleport",
   Info = "make sure you put its name instead of display name", -- Speaks for itself, Remove if none.
   PlaceholderText = "player name",
   NumbersOnly = false, 
   CharacterLimit = 30, --max character limit. Remove if none.
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused.
   RemoveTextAfterFocusLost = false,
   Callback = function(value)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game.Players[value].Character.HumanoidRootPart.CFrame * CFrame.new(0,2,1)
   end,
})

local Tab = Window:CreateTab("ESP", 6031075931)

local Section = Tab:CreateSection(" ")

local Toggle = Tab:CreateToggle({
   Name = "Enable",
   CurrentValue = false,
   Flag = "enable", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   espLibrary.options.enabled = Value
   end,
})
spawn(function()
task.wait()
Toggle:Set(true)
task.wait()
Toggle:Set(false)
end)

local Toggle = Tab:CreateToggle({
   Name = "Box",
   CurrentValue = false,
   Flag = "box", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   espLibrary.options.boxes = value
   end,
})

spawn(function()
task.wait()
Toggle:Set(true)
task.wait()
Toggle:Set(false)
end)

local Toggle = Tab:CreateToggle({
   Name = "Filled box",
   CurrentValue = false,
   Flag = "filledbox", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   espLibrary.options.boxFill = value
   end,
})

spawn(function()
task.wait()
Toggle:Set(true)
task.wait()
Toggle:Set(false)
end)

local Toggle = Tab:CreateToggle({
   Name = "Health bar",
   CurrentValue = false,
   Flag = "hpbar", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   espLibrary.options.healthBars = value
   end,
})

spawn(function()
task.wait()
Toggle:Set(true)
task.wait()
Toggle:Set(false)
end)

local Toggle = Tab:CreateToggle({
   Name = "Health Text",
   CurrentValue = false,
   Flag = "hptext", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
    espLibrary.options.healthText = value
   end,
})

spawn(function()
task.wait()
Toggle:Set(true)
task.wait()
Toggle:Set(false)
end)

local Toggle = Tab:CreateToggle({
   Name = "Names",
   CurrentValue = false,
   Flag = "name", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
    espLibrary.options.names = value
   end,
})

spawn(function()
task.wait()
Toggle:Set(true)
task.wait()
Toggle:Set(false)
end)

local Toggle = Tab:CreateToggle({
   Name = "distance",
   CurrentValue = false,
   Flag = "distance", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
    espLibrary.options.distance = value
   end,
})

spawn(function()
task.wait()
Toggle:Set(true)
task.wait()
Toggle:Set(false)
end)

local Toggle = Tab:CreateToggle({
   Name = "Chams",
   CurrentValue = false,
   Flag = "chams", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
    espLibrary.options.chams = value
   end,
})

spawn(function()
task.wait()
Toggle:Set(true)
task.wait()
Toggle:Set(false)
end)

local Toggle = Tab:CreateToggle({
   Name = "Tracers",
   CurrentValue = false,
   Flag = "tracers", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
    espLibrary.options.tracers = value
   end,
})

spawn(function()
task.wait()
Toggle:Set(true)
task.wait()
Toggle:Set(false)
end)

local Toggle = Tab:CreateToggle({
   Name = "OOF arrows",
   CurrentValue = false,
   Flag = "oofarrows", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
    espLibrary.options.outOfViewArrows = value
    espLibrary.options.outOfViewArrowsOutline = value
   end,
})

spawn(function()
task.wait()
Toggle:Set(true)
task.wait()
Toggle:Set(false)
end)

local Section = Tab:CreateSection("Settings",false)

local Toggle = Tab:CreateToggle({
   Name = "Use Team's color",
   CurrentValue = false,
   Flag = "uts", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   espLibrary.options.teamColor = value
   end,
})

spawn(function()
task.wait()
Toggle:Set(true)
task.wait()
Toggle:Set(false)
end)

local Toggle = Tab:CreateToggle({
   Name = "Team check",
   CurrentValue = false,
   Flag = "tc", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   espLibrary.options.teamCheck = value
   end,
})

spawn(function()
task.wait()
Toggle:Set(true)
task.wait()
Toggle:Set(false)
end)


local Section = Tab:CreateSection("due to color pickers on arrayfield are not out yet, please wait!",false)

local Tab = Window:CreateTab("Scripts", 6022668883)

local Section = Tab:CreateSection(" ")

local Button = Tab:CreateButton({
   Name = "Dex V4",
   Info = "A script that ables you to see the explorer!",
   Interact = '',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Infinite yield",
   Info = "The best command line for roblox.",
   Interact = '',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Hydroxide",
   Info = "General purpose pen-testing tool for games on the Roblox engine.",
   Interact = '',
   Callback = function()
   local owner = "Upbolt"
local branch = "revision"

local function webImport(file)
    return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
end

webImport("init")
webImport("ui/main")
   end,
})

local Button = Tab:CreateButton({
   Name = "Domain X",
   Info = "The smartest script hub.",
   Interact = '',
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source',true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "orca",
   Info = "An open source and free script hub, press K to open orca.",
   Interact = '',
   Callback = function()
   loadstring(
  game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua")
)()
   end,
})

local Button = Tab:CreateButton({
   Name = "hitbox expander",
   Info = "expand your hitbox with this script", -- Speaks for itself, Remove if none.
   Interact = 'Universal',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/roburox/s1mple/main/scripts/hitboxexpand"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "turtle spy",
   Interact = 'Universal',
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))()
   end,
})


local Button = Tab:CreateButton({
   Name = "simplity v2",
   Interact = 'Univesal',
   Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/HeyGyt/simplityv2/main/main',true))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Universal fe hub",
   Interact = 'Universal',
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script',true))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Pendulum hub v5",
   Interact = 'Animation hub',
   Callback = function()
   loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Unfair hub",
   Interact = 'Script hub',
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "VG hub",
   Interact = 'Script hub',
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "EZ hub",
   Interact = 'Universal',
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Eclipse hub",
   Interact = 'Universal',
   Callback = function()
   local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
  end,
}) 
local Button = Tab:CreateButton({
   Name = "Ripper hub",
   Interact = 'Blox fruit',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/hajibeza/RIPPER-HUB/main/Bloxfruit"))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Hoho hub",
   Interact = 'script hub',
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "table hub",
   Interact = 'Blox fruit',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AltsegoD/scripts/egoD/tablekhoc.lua"))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Vape v4",
   Interact = 'Bedwars',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Goodwill",
   Interact = 'decaying winter',
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/Aidez/decaying_winter/main/GOODWILL_COMMAND_SCRIPT'),true))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Septex",
   Interact = 'prison life',
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Vynixius - doors",
   Interact = 'Doors',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "plamen6789rock's doors entity spawner",
   Info = "executes plamen6789's script", -- Speaks for itself, Remove if none.
   Interact = 'Doors',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/plamen6789/DoorsEntitySummonerGUI/main/EntityGUI"))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "chaos script",
   Interact = 'CHAOS',
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/1111-ssss/Chaos_Script/main/Chaos_script.txt'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "tomato hub v4",
   Interact = 'FE2',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ImMejor35/Flood-GUI/main/Flood%20GUI%20v4"))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Universal slient aim",
   Interact = 'Combat',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "parvus hub",
   Interact = 'script hub',
   Callback = function()
   loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/AlexR32/Parvus/main/Loader.lua"))()-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Vision hub",
   Info = "has key system", 
   Interact = 'Combat',
   Callback = function()
   loadstring(game:HttpGetAsync 'https://visionhub.dev/loader.lua')()
   end,
})

local Button = Tab:CreateButton({
   Name = "unnamed esp",
   Interact = 'Esp',
   Callback = function()
   pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))() end)-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Fps universal",
   Interact = 'combat',
   Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/scripts/main/fpsuniversal"))()
  end,
}) 

local Tab = Window:CreateTab("Utilies", 6022668955)

local Section = Tab:CreateSection(" ")

local Button = Tab:CreateButton({
   Name = "Copy posistion",
   Callback = function()
    setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
   end,
})

local Button = Tab:CreateButton({
   Name = "Generate Teleport script",
   Callback = function()
   local pos = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
		setclipboard("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new("..pos..")") 
   end,
})

local tweentime = Tab:CreateSlider({
   Name = "Tween time",
   Range = {0, 50},
   Increment = 1,
   Suffix = "seconds",
   CurrentValue = 10,
   Flag = "tweentime", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   tweenTime = Value
   end,
})
--avoiding bugs
spawn(function()
wait()
tweentime:Set(9) 
wait()
tweentime:Set(10)
end)

local Button = Tab:CreateButton({
   Name = "Generate Tween teleport script",
   Callback = function()
   local pos = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
		setclipboard('tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new('..tweenTime..', Enum.EasingStyle.Linear)\ntweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new('..pos..')}):Play()') 
   end,
})


local Button = Tab:CreateButton({
   Name = "Ui libarys link",
   Callback = function()
   setclipboard("https://github.com/drillygzzly/Roblox-UI-Libs")
	Rayfield:Notify({
    Title = "Notification",
    Content = "Sucessfully copied link, paste it into google.",
    Duration = 5,
   })
   end,
})

local Tab = Window:CreateTab("Settings", 6031280882)

local Section = Tab:CreateSection(" ")

local Button = Tab:CreateButton({
   Name = "destroy gui",
   Interact = '',
   Callback = function()
   Rayfield:Destroy()
   end,
})

local Button = Tab:CreateButton({
   Name = "reload Pissware : Universal",
   Interact = '',
   Callback = function()
   espLibrary:Unload()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/games/universal"))()
   end,
})



espLibrary:Load()
if syn then 
syn.queue_on_teleport([[
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/games/universal"))()
]])
else
   queue_on_teleport([[
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/games/universal"))()
]])
end