local SCRIPT_VERSION = " v1.2.3 " -- Hey Ry remember to change it before updating lmao

    game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "[System]: Hello there User! Please know that we are not responsible for any bans, we recommend you to use this on an alternate account, thank you for reading this.";
    Color = Color3.new(0, 255, 169);
    Font = Enum.Font.SourceSansBold;
    FontSize = Enum.FontSize.Size24;
})

    game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "[System]: Join Our Server https://dsc.gg/rans for more information!";
    Color = Color3.new(169, 255, 0);
    Font = Enum.Font.SourceSansBold;
    FontSize = Enum.FontSize.Size24;
})

--[[

	Atlas Studio By Ry © CC0 1.0 Universal (2023)

	https://github.com/Atlas-Developers

]]
    
    local Rayfield = nil
	if isfile("Ry/UI/DecayingField.lua") then
		Rayfield = loadstring(readfile("Ry/UI/DecayingField.lua"))()
	else
		Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/RyXeleron/Script-Storage/main/DecayingField.lua"))()
	end

	-- local Rayfield = (isfile("UI/DecayingField.lua") and loadstring(readfile("UI/DecayingField.lua"))()) or loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafacasari/ArrayField/main/v2.lua"))()
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
    Name = "Raccoon Hub v1.2.3 ",
    LoadingTitle = "Raccoon Hub v1.2.3 is loading..",
    LoadingSubtitle = "By Ry and you! ",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = "Ry", -- Create a custom folder for your hub/game
       FileName = "Raccoon Hub" .. tostring(LocalPlayer.UserId)
    },
    Discord = {
       Enabled = true,
       Invite = "RCrVAvAbT2",
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Raccoon Hub v1.2.3 ",
       Subtitle = "Key System",
       Note = "Join the discord (dsc.gg/rans) for the key.",
       FileName = "Ry",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "SPartner"
    }
 })

Rayfield:ToggleOldTabStyle(true)

	
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

 Rayfield:Notify({
   Title = "Key System",
   Content = "By Getting The Key System, You accept to our Rules",
   Duration = 6.5,
   Image = 6022668883,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay, i got it",
         Callback = function()
         print("The user Replied, Okay!")
      end
   },
},
})

  Rayfield:Notify({
   Title = "Welcome to Raccoon Hub v1.2.3!",
   Content = "Much Love ❤. - Ry. Aloha Konichiwa!",
   Duration = 6.5,
   Image = 6022668955,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Thanks!",
         Callback = function()
         print("The user Replied, Okay!")
      end
   },
},
})
 Rayfield:Notify({
	Title = "Notification",
	Content = "Hey! Thanks for choosing Raccoon Hub, i put lots of efforts in this. Enjoy!",
	Duration = 6.5,
	Image = 11401835376,
	Actions = { -- Notification Buttons
	   Ignore = {
		  Name = "Okay!",
		  Callback = function()
		  warn("hehe~")
	   end
	},
 },
 })
 Rayfield:Notify({
   Title = "Warning!",
   Content = "Some of these script may crash your game or won't work. Thank you for using the hub",
   Duration = 6.5,
   Image = 6023426915,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Noted!",
         Callback = function()
         print("The user Replied, Okay!")
      end
   },
},
})

warn("Please Support me i put alot of efforts in this.")
warn("<3")

 local ScriptsTab = Window:CreateTab("Main Scripts", 6026568198) -- Title, Image
 local HubsTab = Window:CreateTab("Main Hubs", 13014546637) 
 local MiscTab = Window:CreateTab("Misc", 6023426915) 
 local PlayerTab = Window:CreateTab("Utilities", 6022668955) 
 local RandomTab = Window:CreateTab("2nd Scripts Tab", 6022668883) 
 local ExpTab = Window:CreateTab("Experimental", 13075651575) 
 local ChangeTab = Window:CreateTab("Changelogs", 13075637275) 
 local SupportTab = Window:CreateTab("Support Us!", 11401835376) 
 local CreditTab = Window:CreateTab("Credits", 6031075931) 
 local ControlTab = Window:CreateTab("Controls", 13075622619) 
 local HelpTab = Window:CreateTab("❓ Help") 
 local settingsTab = Window:CreateTab("Settings", "13075268290", true)
 

settingsTab:CreateSection("General Options", false, false, "13080063021")
	
	local UIKeybind = settingsTab:CreateSection("Hide/Unhide UI Keybind",false)
   local Keybind = settingsTab:CreateKeybind({
   Name = "UI Keybind",
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

settingsTab:CreateSection("Netless", false, false, "5107182114")

settingsTab:CreateButton({
	Name = "Toggle Netless",
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
 
local Paragraph = ExpTab:CreateParagraph({Title = "<b><font color=\"##ff0000\">Warning!</font></b>", Content = "These are Experimental feature. it may crashes your game."})
local Paragraph = ExpTab:CreateParagraph({Title = "<b><font color=\"#ffffff\">Dev Note:</font></b>", Content = "' = might break | '' = will break"})

ExpTab:CreateButton({
	Name = " Backdoors K4 | V8 | '",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua"))()
    end,
 })

CreditTab:CreateLabel("~ 💖 <b><font color=\"#eb4034\">Main Credits 💖</font></b> ~")
CreditTab:CreateParagraph({Title = "<b><font color=\"#34eb64\">Modified ArrayField (Lucky Blessing)</font></b>", Content = "By <b><font color=\"#a010e3\">Ry (only me myself)</font></b> and no one else!"})
CreditTab:CreateParagraph({Title = "<b><font color=\"#3734eb\">ArrayField</font></b>", Content = "<b><font color=\"#ac35c4\">By Arrays and Rafa</font></b>."})
CreditTab:CreateParagraph({Title = "<b><font color=\"#3578c4\">Original Rayfield</font></b>", Content = "By <b><font color=\"#3578c4\">Shlexware and Sirius</font></b>."})
CreditTab:CreateParagraph({Title = "<b><font color=\"#fa2d3b\">Original Atlas Hub</font></b>", Content = "inspired by <b><font color=\"#2ddbfa\">Goobie / The Pepsi Hub</font></b>."})
CreditTab:CreateParagraph({Title = "<b><font color=\"#9d00ff\">Resurganced Frights Doors Script</font></b>", Content = "By <b><font color=\"#ff1c1c\">Team Atlas</font></b>."})
CreditTab:CreateParagraph({Title = "<b><font color=\"#9d00ff\">Resync Fling, Aimbot, ESP</font></b>", Content = "By <b><font color=\"#2ddbfa\">Sploinky</font></b> a developer of <b><font color=\"#2ddbfa\">The Pepsi Hub</font></b>."})
CreditTab:CreateParagraph({Title = "<b><font color=\"#9d00ff\">Raccoon Hub</font></b>", Content = "By <b><font color=\"#9d00ff\">Ry</font></b>."})
CreditTab:CreateParagraph({Title = "<b><font color=\"#ff4a4a\">[OLD | Original] Atlas Hub and Rayfield Atlas Hub</font></b>", Content = "By <b><font color=\"#9d00ff\">Ry</font></b>."})
CreditTab:CreateParagraph({Title = "<b><font color=\"#ff1c1c\">Atlas X</font></b>", Content = "By <b><font color=\"#ffcf70\">Wello</font></b>."})

SupportTab:CreateLabel("<b><font color=\"#75ff70\">Please paste one of these links in you browser</font></b>")

SupportTab:CreateLabel("<b><font color=\"#75ff70\">Follow us on Github or join our server will helps alot!</font></b>")

SupportTab:CreateLabel("~ <b><font color=\"#9d00ff\">Raccoon Hub</font></b> ~")
SupportTab:CreateButton({
	Name = "♥ Join our server! ♥",
	Callback = function()
	coroutine.wrap(function() 
		wait(0.5)
			Window:Prompt({
				Title = 'Notification',
				SubTitle = 'https://dsc.gg/rans',
				Content = "The link has been copied to your clipboard",
				Actions = {

					Accept = {
						Name = "Continue",
						Callback = function()
	                    	setclipboard("https://dsc.gg/rans")
						end,
						
					}
				}
			})
	end)()
    end,
 })

SupportTab:CreateButton({
	Name = "💖 Our GitHub 💖",
	Callback = function()
	coroutine.wrap(function() 
		wait(0.5)
			Window:Prompt({
				Title = 'Notification',
				SubTitle = 'https://github.com/RyAtlasX',
				Content = "The link has been copied to your clipboard",
				Actions = {

					Accept = {
						Name = "Continue",
						Callback = function()              	
		                    setclipboard("https://github.com/RyAtlasX")
						end,
						
					}
				}
			})
	end)()
    end,
 })

SupportTab:CreateLabel("~ <b><font color=\"#ff1c1c\">Atlas Development</font></b> ~")

SupportTab:CreateButton({
	Name = "🖤 Atlas Dev Github 🖤",
	Callback = function()
	coroutine.wrap(function() 
		wait(0.5)
			Window:Prompt({
				Title = 'Notification',
				SubTitle = 'https://github.com/atlas-developers',
				Content = "The link has been copied to your clipboard",
				Actions = {

					Accept = {
						Name = "Continue",
						Callback = function()
		                    setclipboard("https://github.com/atlas-developers")
						end,
						
					}
				}
			})
	end)()

    end,
 })

SupportTab:CreateButton({
	Name = "🌐 Atlas v5 website 🌐",
	Callback = function()
	coroutine.wrap(function() 
		wait(0.5)
			Window:Prompt({
				Title = 'Notification',
				SubTitle = 'https://atlasv5.vercel.app/',
				Content = "The link has been copied to your clipboard",
				Actions = {

					Accept = {
						Name = "Continue",
						Callback = function()
	                     	setclipboard("https://atlasv5.vercel.app/")
						end,
						
					}
				}
			})
	end)()
    end,
 })

SupportTab:CreateButton({
	Name = "✔ Atlas Discord Server ✔",
	Callback = function()
	coroutine.wrap(function() 
		wait(0.5)
			Window:Prompt({
				Title = 'Notification',
				SubTitle = 'https://discord.gg/atlasrbx',
				Content = "The link has been copied to your clipboard",
				Actions = {

					Accept = {
						Name = "Continue",
						Callback = function()
		                	setclipboard("https://discord.gg/atlasrbx")
						end,
						
					}
				}
			})
	end)()

    end,
 })

SupportTab:CreateButton({
	Name = "👑 Atlas Youtube 👑",
	Callback = function()
	
	coroutine.wrap(function() 
		wait(0.5)
			Window:Prompt({
				Title = 'Notification',
				SubTitle = 'https://www.youtube.com/@atlas.roblox/featured',
				Content = "The link has been copied to your clipboard",
				Actions = {

					Accept = {
						Name = "Continue",
						Callback = function()
							setclipboard("https://www.youtube.com/@atlas.roblox/featured")
						end,
						
					}
				}
			})
	end)()
    end,
 })

CreditTab:CreateLabel("~ 💖 <b><font color=\"#fdff70\">Special Thanks To</font></b> 💖 ~")

CreditTab:CreateParagraph({Title = "<b><font color=\"#ffa070\">Wello and Kaminari</font></b>", Content = "<b><font color=\"#ffffff\">Testing scripts!</font></b>"})

CreditTab:CreateParagraph({Title = "<b><font color=\"#5574ed\">Gooble</font></b>", Content = "<b><font color=\"#00d0ff\">For inspiring!</font></b>"})

CreditTab:CreateParagraph({Title = "<b><font color=\"#5574ed\">Suno</font></b>", Content = "<b><font color=\"#ff00fb\">Supporting!</font></b>"})

CreditTab:CreateParagraph({Title = "<b><font color=\"#ff7700\">And others</font></b>", Content = "<b><font color=\"#00ffb7\">kking, Louismoonj, ScripterCat for motivating us!</font></b>"})

RandomTab:CreateParagraph({Title = "<b><font color=\"#ff0000\">Warning!</font></b>", Content = "Some of these scripts may get you banned! especially Arsenal."})

RandomTab:CreateButton({
	Name = " Resurganced Frights | Doors",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Resurganced%20Frights.lua"))()
    end,
 })

RandomTab:CreateButton({
	Name = " Ry's Evade Gui",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Evade%20Gui.lua"))()
    end,
 })

RandomTab:CreateButton({
	Name = " Ry's Decaying Winter Gui",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/xxxxx.lua"))()
    end,
 })

RandomTab:CreateButton({
	Name = " Ry's PSX Gui",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/PSX%20SCRIPT.lua"))()
    end,
 })

RandomTab:CreateButton({
	Name = " Ry's PSX MailBox Stealer | Requires Backdoor / Serverside",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/PSX%20mailbox%20stealer.lua"))()
    end,
 })

RandomTab:CreateButton({
	Name = " Legends of Speed | Auto Orbs",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/2008.lua"))()
    end,
 })

RandomTab:CreateButton({
	Name = " TNG Hub Blox Fruits",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/TNG%20Hub"))()
    end,
 })

RandomTab:CreateButton({
	Name = " Break In Story | OP",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Break%20In%20Story.lua"))()
    end,
 })

RandomTab:CreateButton({
	Name = " Ability Wars",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Ab%20wars2"))()
    end,
 })

RandomTab:CreateButton({
	Name = " Arm Wrestling Simulator",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Arm%20wrestling%20Sim.lua"))()
    end,
 })

RandomTab:CreateButton({
	Name = " Muscle Legends | V.G",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Atlas_hub/main/Muscle-Legends.txt"))()
    end,
 })
RandomTab:CreateButton({
	Name = " VAPE v4 | Bedwars",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/VAPE%20V4%20%5Bbedwar%5D"))()
    end,
 })
RandomTab:CreateButton({
	Name = " Infamy | GUI",
	Callback = function()
 Rayfield:Notify({
   Title = "Key",
   Content = "Direct key link of Infamy GUI has been copied to you clipboard.",
   Duration = 6.5,
   Image = 6023426915,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
          setclipboard("1.kelprepl.repl.co/getkey/Infamy_GUI")
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Infamy.GUI.lua"))()
    end,
 })

RandomTab:CreateButton({
	Name = " Piano Auto Player | richie0866 | One Time Use",
	Callback = function()
 Rayfield:Notify({
   Title = "How to use script:",
   Content = "workspace > create folder name 'midi' > add a midi file or find it on the internet then put it that a folder.",
   Duration = 6.5,
   Image = 6023426915,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Auto_player.piano"))()
    end,
 })

RandomTab:CreateButton({
	Name = " Arsenal Scripts | 2 Hubs included",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/test/main/Arsenal%20scripts1"))()
    end,
 })
RandomTab:CreateButton({
	Name = " Vynixu Scripts | Doors",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/test/main/Doors2"))()
    end,
 })

RandomTab:CreateButton({
	Name = " Vynixu MM2",
	Callback = function()
		loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
    end,
 })

MiscTab:CreateParagraph({Title = "FE Misc Scripts", Content = "Everything here is FE and don't worry about bugs or glitches."})

MiscTab:CreateButton({
	Name = " Proximity Prompt Bypass",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Proximity%20Prompt%20bypass.lua"))()
	end,
 })


RandomTab:CreateButton({
	Name = " Rainbow Bubble Chat (Default only)",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Resurganced%20Frights.lua"))()
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

MiscTab:CreateButton({
	Name = " 2016 Animations",
	Callback = function()
			 loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/FE/main/2016anims", true))(true)
	end,
 })

MiscTab:CreateButton({
	Name = " 2016 GUIs",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/2016r.lua"))()
	end,
 })

MiscTab:CreateButton({
	Name = " 2007 Animations",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/2007%20animation.txt"))()
	end,
 })

MiscTab:CreateButton({
	Name = " 2007 Cursor",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/2007%20cursor.txt"))()
	end,
 })

MiscTab:CreateButton({
	Name = " Dabbing Animation",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Dab-8883"))()
	end,
 })
MiscTab:CreateButton({
	Name = " Ball Rolling Animation | Patched",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Ball-Roll-8881"))()
	end,
 })
MiscTab:CreateButton({
   Name = " Fast animations",
   Callback = function()
   loadstring(game:HttpGet('https://pastebin.com/raw/8DKHE7sd'))() -- The function that takes place when the button is pressed
   end,
})

MiscTab:CreateButton({
   Name = " Walk on Walls",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/walks%20on%20walls'))() -- The function that takes place when the button is pressed
   end,
})

MiscTab:CreateButton({
   Name = " FE Front Flip",
   Callback = function()
   loadstring(game:HttpGet('https://pastebin.com/raw/8vFCxMWT'))() -- The function that takes place when the button is pressed
   end,
})

MiscTab:CreateButton({
	Name = " FE invis tool",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/invis2tool.lua'))() -- The function that takes place when the button is pressed
	end,
 })

MiscTab:CreateSlider({
    Name = "Blade ball (Clash AutoParry)",
    Range = {1, 46},
    Increment = 10,
    Suffix = "Distance ",
    CurrentValue = 1,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    getgenv().ScriptConfig = {
    -- Distance in stud before the automatic triggers,
    -- you may change even after you have ran the script if you desire!
    -- Just be sure to REMOVE the loadstring, or else you will face some... issues
    DistanceBeforeParry = Value,
    }


    loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Core.BB.lua"))()
    end,
 })

MiscTab:CreateSlider({
    Name = "Blade ball (Distance Parry)",
    Range = {1, 46},
    Increment = 10,
    Suffix = "Distance ",
    CurrentValue = 1,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    getgenv().ScriptConfig = {
    -- Distance in stud before the automatic triggers,
    -- you may change even after you have ran the script if you desire!
    -- Just be sure to REMOVE the loadstring, or else you will face some... issues
    DistanceBeforeParry = Value,
    }


    loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Core.BB.lua"))()
    end,
 })

MiscTab:CreateButton({
	Name = " Ry's Enhancer v0.1",
	Callback = function()
 Rayfield:Notify({
   Title = "Crashing!",
   Content = "If you are on Windows 7 or lower RAM, this could crash your game.",
   Duration = 6.5,
   Image = 6023426915,
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
   Image = 6023426915,
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

MiscTab:CreateButton({
	Name = " RTX | Shader",
	Callback = function()
 Rayfield:Notify({
   Title = "Crashing!",
   Content = "If you are on Windows 7 or lower RAM, this could crash your game.",
   Duration = 6.5,
   Image = 6023426915,
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
   Content = "Use RoShade for a better experience. Click this button and the link will be copied into your clipboard",
   Duration = 6.5,
   Image = 6023426915,
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

MiscTab:CreateButton({
   Name = " Self Moderator",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Fake%20Self%20Ban.lua'))() -- The function that takes place when the button is pressed
   end,
})

MiscTab:CreateButton({
   Name = " Fake Lag",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Fake%20Lag'))() -- The function that takes place when the button is pressed
   end,
})
 
local Paragraph = PlayerTab:CreateParagraph({Title = "<b><font color=\"#00e5ff\">Partners Utility</font></b>", Content = "These utilites created by <b><font color=\"#00e5ff\">our wonderful partners!</font></b>"})

PlayerTab:CreateButton({
	Name = " Solar [Beta]",
	Callback = function()
		loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/SunoUi/Solar/main/Main.lua', true))('Solar Utilities')
	end,
 })

local Paragraph = PlayerTab:CreateParagraph({Title = "Universal", Content = "Utilites"})

PlayerTab:CreateButton({
	Name = " Dex v1.1.0 Alpha",
	Callback = function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Dark%20Dex%20v4")() -- The function that takes place when the button is pressed
	end,
 })

PlayerTab:CreateButton({
	Name = " SimpleSpy v2.2",
	Callback = function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/RyAtlasX/test/main/Rspy")() -- The function that takes place when the button is pressed
	end,
 })

PlayerTab:CreateButton({
	Name = " OpenGui v1.11",
	Callback = function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/OpenGui")() -- The function that takes place when the button is pressed
	end,
 })
PlayerTab:CreateButton({
	Name = " Unnamed ESP",
	Callback = function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Unnamed%20ESP")() -- The function that takes place when the button is pressed
	end,
 })

HubsTab:CreateParagraph({Title = "<b><font color=\"#00e5ff\">Partner Hubs</font></b>", Content = "These Hub are created by my <b><font color=\"#00e5ff\">good ol' partners!</font></b>"})

HubsTab:CreateButton({
	Name = "Pepsi Hub v2.3",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/test/main/Pepsi%20Hub%20%5Bremade%5D"))()
	end,
 })

HubsTab:CreateParagraph({Title = "Welcome to", Content = "<b><font color=\"#00e5ff\">Universal script hubs.</font></b>"})

HubsTab:CreateButton({
	Name = " FE Nullware Reanimation",
	Callback = function()
     Rayfield:Notify({
   Title = "Crashing!",
   Content = "This script could crash your game very easily, please be careful.",
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
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/nullware'),true))()
	end,
 })

HubsTab:CreateButton({
	Name = " FE Energize GUI",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Energize'),true))()
	end,
 })

HubsTab:CreateButton({
	Name = "FE Sussy Hub",
	Callback = function()
		loadstring(game:HttpGet(('https://gist.githubusercontent.com/Nilrogram/8b0c8bd710be142f383c71f79279752c/raw/e4fb01a7de7cd498bb53270d2ad191dfab268a88/FE%2520SussyHub'),true))(); -- The function that takes place when the button is pressed
	end,
 })
 
 
  ScriptsTab:CreateParagraph({Title = "Hello, <b><font color=\"#2B699F\">" .. LocalPlayer.DisplayName .. "</font></b>!", Content = "Thanks for using my script! - Ry\nMake sure to join us at <b><font color=\"#2B699F\">dsc.gg/rans</font></b>"})
 
ScriptsTab:CreateParagraph({Title = "Welcome to", Content = "<b><font color=\"#00e5ff\">Universal FE Scripts.</font></b>"})
ScriptsTab:CreateParagraph({Title = "Recommendation", Content = "We <b><font color=\"#cb30f2\">strongly recommended</font></b> you to use <b><font color=\"#0062ff\">NullWare</font></b> for reanimating."})

ScriptsTab:CreateButton({
	Name = " FE Grandmasters | Patched",
	Callback = function()
		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-script-Grandmaster-7382"),true)("Raccoon, The best script hub")
	end,
 })

ScriptsTab:CreateButton({
	Name = " FE Neko Maid | Patched",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/neko%20maid%20v1.lua'),true))()
	end,
 })

ScriptsTab:CreateButton({
	Name = " FE Nameless Animations | Patched",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Nameless%20animation%20scripts1'),true))()
	end,
 })

ScriptsTab:CreateButton({
	Name = " FE Mr.Chill | Patched",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/test/main/Mr%20Chill'),true))()
	end,
 })

ScriptsTab:CreateButton({
	Name = " FE Chat Bypass Script | Downed",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/vqmpjay/scripts/main/vadriftsbyp_krnl_fluxus_support'),true))()
	end,
 })

ScriptsTab:CreateButton({
	Name = " FE Physics Gun",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/FE%20Physics%20Gun.lua'),true))()
	end,
 })

ScriptsTab:CreateButton({
	Name = " FE Better Bypasser",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/FE%20Better%20Bypasser.lua'),true))()
	end,
 })

ScriptsTab:CreateButton({
	Name = " VR | No headset required | Patched",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/test/main/VR'),true))()
	end,
 })

ScriptsTab:CreateButton({
	Name = " FE Among Us",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Among%20Us1'),true))()
	end,
 })

ScriptsTab:CreateButton({
	Name = " Grab Knife V3",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Grab%20Knife%20V3'),true))()
	end,
 })

ScriptsTab:CreateButton({
	Name = " FE Chips | R6 | Patched",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/FE%20chip.lua'),true))()
	end,
 })

ScriptsTab:CreateButton({
	Name = " FE Chips | R15 | Patched",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/FE%20chipR15.lua'),true))()
	end,
 })

ScriptsTab:CreateButton({
	Name = " FE Yeet GUI | Trollface Edition",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/FE%20Yeet%20gui%20(trollface%20edittion).lua'),true))()
	end,
 })

ScriptsTab:CreateButton({
	Name = " FE Spectrum Glitcher | Patched",
	Callback = function()
 Rayfield:Notify({
   Title = "Needed hairs:",
   Content = "Pal Hair, Roblox Girl Hair, Brown Hair, Brown charmer hair, ChestNut Bun, Lavender updo, Red roblox Cap",
   Duration = 6.5,
   Image = 6023426915,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         warn("User Accepted")
      end
   },
},
})
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Spectrum%20Glitcher.lua'),true))()
    end,
 })

ScriptsTab:CreateButton({
	Name = " The Glitcher",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/The%20Glitcher'),true))()
	end,
 })


MiscTab:CreateButton({
   Name = " Grabhook | Spider-man | R6",
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/SPIDERMANN'))() -- The function that takes place when the button is pressed
   end,
})

PlayerTab:CreateButton({
	Name = " BetterRoblox | Might Crash",
	Callback = function()
		loadstring(game:HttpGet("https://eternityhub.xyz/BetterRoblox/Loader"))()
	end,
 })

PlayerTab:CreateButton({
	Name = " Proton Free / Proton Admin",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Proton%20Free.lua'))()
	end,
 })

PlayerTab:CreateButton({
	Name = " Infinite Yield v5.9.3",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
 })

PlayerTab:CreateButton({
	Name = " CMD X v1.9.9F",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/CMD-X'))()
	end,
 })

ScriptsTab:CreateButton({
	Name = " Anti Kick",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Anti-Kick/main/Anti%20Kick.lua"))()
	end,
 })
PlayerTab:CreateButton({
	Name = " CPU / GPU Saver",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-CPU-Saver-WINDOWSFOCUS-8910"))()
	end,
 })
ScriptsTab:CreateButton({
	Name = " FE Chat Spy",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Chat-Troller-8885"))()
	end,
 })
ScriptsTab:CreateButton({
	Name = " FE R15 Animation Library",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/hVvmgMHb"))()
	end,
 })
PlayerTab:CreateButton({
	Name = " Remove Textures and Effects",
	Callback = function()
		loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-Remove-Surface-Textures-and-Effects-8821'))()
	end,
 })
HubsTab:CreateButton({
	Name = " Selexity Reanimation GUI",
	Callback = function()
		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-selexity-or-something-2808", true))()
	end,
 })
ScriptsTab:CreateButton({
	Name = " FE Chill GUI | Float | Patched",
	Callback = function()
		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-FE-Chill-Script-R6-and-R15-5925", true))()
	end,
 })
HubsTab:CreateButton({
	Name = " Pendulum Reanimation Hub | Patched?",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
	end,
 })
ScriptsTab:CreateButton({
	Name = " Collision Enabler",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/rouxhaver/scripts/main/Local%20Full%20Player%20Collision.Lua"))()
	end,
 })
ScriptsTab:CreateButton({
	Name = " Anti Fling",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/AntiFling"))()
	end,
 })
ScriptsTab:CreateButton({
	Name = "Touch Fling Script | Patched",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/TouchFling.txt"))()
	end,
 })
ScriptsTab:CreateButton({
	Name = " Universal Snake Script | No Hats | Patched",
	Callback = function()
		loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
    end,
 })

HubsTab:CreateButton({
    Name = " BlackTrap Hub",
    Callback = function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Blacktrap")() -- The function that takes place when the button is pressed
    end,
 })

HubsTab:CreateButton({
    Name = " Universal FE Hub",
    Callback = function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/WinterDinder/oldfehub/main/boronide%20level%20obfuscation%20lol")() -- The function that takes place when the button is pressed
    end,
 })
 
HubsTab:CreateButton({
    Name = " Ice Hub",
    Callback = function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven")() -- The function that takes place when the button is pressed
    end,
 })

HubsTab:CreateButton({
	Name = " ScriptBlox | SearchBar",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/madonchik123/USL/main/main.lua"))()
	end,
 })

HubsTab:CreateButton({
	Name = " Simplity V2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/HeyGyt/simplityv2/main/main"))()
    end,
 })
ScriptsTab:CreateButton({
	Name = " Lyrics Bot | Patched?",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CF-Trail/lyricsBot/main/singer.lua"))()
    end,
 })
PlayerTab:CreateButton({
	Name = " Netless FE",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/netless.txt"))()
    end,
 })
HubsTab:CreateButton({
	Name = "Skidded V2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/skiddedv2.txt"))()
    end,
 })
ScriptsTab:CreateButton({
	Name = "Resync Fling | Sploinky | Patched?",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/sploinkyflingscript.resync.txt"))()
    end,
 })
ScriptsTab:CreateButton({
	Name = "Aimbot (Hold E to use) | Sploinky | Patched?",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/sploinkyaimbot.headlock.txt"))()
    end,
 })
ScriptsTab:CreateButton({
	Name = "ESP | Sploinky",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KattWasTaken/pepsi_hub/main/sploinkyesp.odd.txt"))()
    end,
 })

HubsTab:CreateButton({
	Name = " Owl Hub",
	Callback = function()
		loadstring(game:HttpGet("https://github.com/RyAtlasX/Atlas_hub/blob/main/Owl%20hub"))()
    end,
 })

HubsTab:CreateButton({
	Name = " Ez Hub",
	Callback = function()
		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Ez%20Hub.txt"))()
    end,
 })

HubsTab:CreateButton({
	Name = " Penlulum Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/Pendulum%20Hub.lua"))()
    end,
 })
HubsTab:CreateButton({
	Name = " Hydroxide",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Hydroxide"))()
    end,
 })
HubsTab:CreateButton({
	Name = " Orca v1.1.1",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Script-Storages/main/Orca"))()
    end,
 })
HubsTab:CreateButton({
	Name = " Domain X v1.96",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/fortnitemodder/DomainX/main/Source"))()
    end,
 })
 
HubsTab:CreateButton({
	Name = " Eclipse Hub v0.88",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/Roblox_Scripts/main/Eclipse%20hub.lua"))()
    end,
 })
ControlTab:CreateParagraph({Title = "Touch Fling Controls", Content = "To use touch fling, Press the (X) Key, It will stop/start animations, and you can fling anybody who doesnt have anti fling enabled, which result in them to be eliminated. - Credit to Pepsi Hub"})
ControlTab:CreateParagraph({Title = "FE Flip Controls", Content = "Use the (Z) Key to backflip, the (X) Key to front flip, and the (C) Key to infinite jump, Does not work with touch fling, Resetting does not disable this script, to disable it, rejoin your game."})
ControlTab:CreateParagraph({Title = "Neko Maid Controls", Content = "Attack: Z X | Taunt: R T | Movement: F"})
ControlTab:CreateParagraph({Title = "FE Grandmaster Controls", Content = "Attack: Z X C V | Taunt: T | Movement: Q E"})
ChangeTab:CreateParagraph({Title = "Release 1.0", Content = "The Rayfield version of Atlas Hub is here!"})
ChangeTab:CreateParagraph({Title = "Update 1.1", Content = "Added selections, more script hubs, more FE scripts."})
ChangeTab:CreateParagraph({Title = "Update 1.1.5", Content = "Added more tips in <b><font color=\"#cf840c\">Controls page'</font></b>, <b><font color=\"#0062ff\">Nullware Reanimation</font></b> is fixed, And more..."})
ChangeTab:CreateParagraph({Title = "Update 1.1.6", Content = "Added <b><font color=\"#9000ff\">Infamy script, Legend of speed back to the Atlas hub, moved Solar to Utilites selection</font></b>."})
ChangeTab:CreateParagraph({Title = "Update 1.1.7", Content = "Added <b><font color=\"#9000ff\">Auto Player Piano</font></b>."})
ChangeTab:CreateParagraph({Title = "Update 1.1.8", Content = "Added <b><font color=\"#9000ff\">Energize Animation Gui</font></b>."})
ChangeTab:CreateParagraph({Title = "Update 1.1.9", Content = "Added <b><font color=\"#9000ff\">Owlhub, Ez hub, Muscle Legends script</font></b>."})
ChangeTab:CreateParagraph({Title = "Update 1.2.0", Content = "Added <b><font color=\"#ff3300\">Support Tab</font></b> and <b><font color=\"#00ff88\">Credits Tab</font></b>."})
ChangeTab:CreateParagraph({Title = "Demo 1.2.0a", Content = "Changed somethings in <b><font color=\"#ff3300\">'Support Us!'</font></b> tab"})
ChangeTab:CreateParagraph({Title = "Demo 1.2.0b", Content = "Changed somethings in <b><font color=\"#00ff88\">Credits</font></b> and <b><font color=\"#6600ff\">Main tab</font></b>"})
ChangeTab:CreateParagraph({Title = "Demo 1.2.0c", Content = "Changed somethings in <b><font color=\"#00ff88\">Credits</font></b> and <b><font color=\"#6600ff\">Main tab</font></b>"})
ChangeTab:CreateParagraph({Title = "Update 1.2.1", Content = "Added <b><font color=\"#00ff1e\">Experiment Tab</font></b> for unreleased scripts and renamed to <b><font color=\"#9000ff\">Raccoon Hub</font></b>!"})
ChangeTab:CreateParagraph({Title = "Update 1.2.2", Content = "<b><font color=\"#00c3ff\">Huge Update! Renamed 'Random Scripts' to '2nd Scripts Tab'. added more script, more tabs and more decorations! Made the buttons more specific! And especially new library!</font></b>"})
ChangeTab:CreateParagraph({Title = "Update 1.2.3", Content = "More Icons, remade library, added a few misc script, colorized texts, optimized version of the hub."})
HelpTab:CreateParagraph({Title = "<b><font color=\"#ffffff\">What does</font></b> <b><font color=\"#9900ff\">Raccoon Hub</font></b> <b><font color=\"#ffffff\">do to keep players entertained and enjoys it?</font></b>", Content = "<b><font color=\"#ffffff\">Roblox</font></b> is one of the best platforms where you can play different games made by other developers. It’s a storefront-like streaming service that features all the games developed by its users. At present, there are more than <b><font color=\"#ffffff\">20 million games</font></b> available on <b><font color=\"#ffffff\">Roblox</font></b>, which makes it a huge platform for people who like to play online games. <b><font color=\"#9900ff\">Raccoon Hub</font></b> uses this opportunity to <b><font color=\"#ff0000\">exploit</font></b> <b><font color=\"#ffffff\">Roblox's cheating community popularity </font></b>and gain more users to try our script!"})
HelpTab:CreateParagraph({Title = "What is netless?", Content = "When you use FE scripts, It relies on taking your limbs and rearranging them, Sometimes it will fail, and the script wont work, Netless prevents this."})
HelpTab:CreateParagraph({Title = "What does the icon mean?", Content = "This icon stand for the verified users and developers. However, Raccoon Hub uses this to identify what scripts and tabs are verified and certified good scripts."})
HelpTab:CreateParagraph({Title = "What does 'Patched?' and 'Patched' mean?", Content = "So. You know how some script don't work? Well these scripts are 'patched'. We use 'Patched?' to identify if the script is may or may not be patched (50%), and 'Patched' to identify if the script is patched (100%)"})

	Rayfield.LoadConfiguration()

-- https://dsc.gg/rans
-- https://dsc.gg/rans
-- https://dsc.gg/rans
-- https://dsc.gg/rans
-- https://dsc.gg/rans
-- https://dsc.gg/rans
-- https://dsc.gg/rans
-- https://dsc.gg/rans
-- https://dsc.gg/rans
-- https://dsc.gg/rans
-- https://dsc.gg/rans