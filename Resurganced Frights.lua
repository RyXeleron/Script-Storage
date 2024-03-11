if game:GetService("ReplicatedStorage").GameData.LatestRoom.Value ~= 0 then
	game.ReplicatedStorage.GameStats["Player_"..game.Players.LocalPlayer.Name].Total.DeathCause = "Void"
	firesignal(game:GetService("ReplicatedStorage").EntityInfo.DeathHint.OnClientEvent,{"Oh.. Hello!","It seems that.. Guiding light doesn't want to tell you on why this happened!","Anyways.. What did you die to?","Oh, I Figured... You executed the script before A-1! I mean.. Door 1?","Well anyways, Remember this"},"Yellow")
	task.wait(.2)
	game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):TakeDamage(500)
end

local modversion = 1.1

if game.Workspace:FindFirstChild("bugggs7_rld_cool") then
	firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent,"Fired twice! (returned). version V"..modversion)
	return
else
	firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent,"Executed Successfully, version V"..modversion)
end
local Verif = Instance.new("WorldModel",workspace)
Verif.Name = "bugggs7_rld_cool"

function ReplaceGitAu(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	return (getcustomasset or getsynasset)(SoundName..".mp3")
end


game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()

local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

-- Creates and displays your custom achievement
Achievements.Get({
    Title = "Immoderated Rooms Of Fear",
    Desc = "I've reached to the Deepest part of the Hotel.",
    Reason = 'Enter Immoderate Floor 2 Mod by ImJustNova#0110!',
    Image = "https://tr.rbxcdn.com/e97b809a33e25c3ca823b224b3f981b9/420/420/Image/Png",
})

spawn(function()
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
		for i,v in pairs(game:GetService("Workspace").CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:GetChildren()) do
			if v:IsA("Model") then
				if v.Name == "Bookcase" then
					local IdVerse = game:GetObjects("rbxassetid://13038787711")[1]
					IdVerse.Parent = v.Parent
					IdVerse:PivotTo(v.PrimaryPart.CFrame)
					IdVerse.Name = "NEW_CASE"
					v:Destroy()
				end
			end
		end
	end)
end)

--spawn(function() --INGTRO
--	--[[
--	Roblox2Lua
--	----------
	
--	This code was generated using
--	Deluct's Roblox2Lua plugin.
--]]--

--	--// Instances
--	local sound = Instance.new("Sound",Verif)
--	sound.SoundId = "rbxassetid://4835664238"
--	sound:Play()
--	local int1 = Instance.new("ScreenGui")
--	int1.DisplayOrder = 1000
--	int1.IgnoreGuiInset = true
--	int1.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
--	int1.ResetOnSpawn = false
--	int1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
--	int1.Name = "Int1"
--	int1.Parent = game:GetService("CoreGui")

--	local logo_intro = Instance.new("Frame")
--	logo_intro.AnchorPoint = Vector2.new(0.5, 0.5)
--	logo_intro.BackgroundColor3 = Color3.new(1, 1, 1)
--	logo_intro.BackgroundTransparency = 1
--	logo_intro.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
--	logo_intro.ClipsDescendants = true
--	logo_intro.Position = UDim2.new(0.499637425, 0, 0.340238601, 0)
--	logo_intro.Size = UDim2.new(0.400000036, 0, 0.263774484, 0)
--	logo_intro.Visible = true
--	logo_intro.Name = "LogoIntro"
--	logo_intro.Parent = int1

--	local oicon = Instance.new("ImageLabel")
--	oicon.Image = "rbxassetid://10906441199"
--	oicon.ScaleType = Enum.ScaleType.Fit
--	oicon.AnchorPoint = Vector2.new(0.5, 0.5)
--	oicon.BackgroundColor3 = Color3.new(1, 1, 1)
--	oicon.BackgroundTransparency = 1
--	oicon.ClipsDescendants = true
--	oicon.Position = UDim2.new(0.5, 0, 1.5, 0)
--	oicon.Size = UDim2.new(0.453517079, 0, 1, 0)
--	oicon.Visible = true
--	oicon.Name = "O_Icon"
--	oicon.Parent = logo_intro

--	local line_bottom = Instance.new("Frame")
--	line_bottom.AnchorPoint = Vector2.new(0.5, 0.5)
--	line_bottom.BackgroundColor3 = Color3.new(1, 1, 1)
--	line_bottom.Position = UDim2.new(0.5, 0, 0.991776168, 0)
--	line_bottom.Size = UDim2.new(0, 0, 0.0149999997, 0)
--	line_bottom.Visible = true
--	line_bottom.ZIndex = 2
--	line_bottom.Name = "LineBottom"
--	line_bottom.Parent = logo_intro

--	local uicorner = Instance.new("UICorner")
--	uicorner.CornerRadius = UDim.new(0, 25)
--	uicorner.Parent = line_bottom

--	local uigradient = Instance.new("UIGradient")
--	uigradient.Parent = line_bottom

--	local local_script = Instance.new("LocalScript")
--	local_script.Parent = int1

--	local wm = Instance.new("ImageLabel")
--	wm.Image = "rbxassetid://12646095831"
--	wm.ImageTransparency = 1
--	wm.ScaleType = Enum.ScaleType.Fit
--	wm.AnchorPoint = Vector2.new(0.5, 0.5)
--	wm.BackgroundColor3 = Color3.new(1, 1, 1)
--	wm.BackgroundTransparency = 1
--	wm.Position = UDim2.new(0.200507611, 0, 0.949023902, 0)
--	wm.Size = UDim2.new(0.273168981, 0, 0.0299999993, 0)
--	wm.Visible = true
--	wm.Name = "WM"
--	wm.Parent = int1

--	--//Modules

--	local modules = {}

--	--// Scripts

--	-- LocalScript
--	task.spawn(function()
--		local script = local_script

--		local oldreq = require
--		local function require(target)
--			if modules[target] then
--				return modules[target]()
--			end
--			return oldreq(target)
--		end

--		local O_Ic = script.Parent.LogoIntro:FindFirstChild("O_Icon")
--		local Line = script.Parent.LogoIntro:FindFirstChild("LineBottom")

--		Line.Size = UDim2.new(0,0,0.015,0)
--		O_Ic.Position = UDim2.new(0.5, 0,1.5, 0)
--		local TweenService = game:GetService("TweenService")

--		TweenService:Create(Line,TweenInfo.new(.8,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UDim2.new(1,0,0.015,0)}):Play()
--		wait(.6)
--		TweenService:Create(O_Ic,TweenInfo.new(.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Position = UDim2.new(0.5, 0,0.5, 0)}):Play()
--		wait(.75)
--		TweenService:Create(O_Ic,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UDim2.new(1, 0,1, 0)}):Play()
--		TweenService:Create(script.Parent:FindFirstChild("LogoIntro"),TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UDim2.new(0.059, 0,0.092, 0)}):Play()
--		TweenService:Create(Line,TweenInfo.new(.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size = UDim2.new(0,0,0.015,0)}):Play()
--		TweenService:Create(script.Parent:FindFirstChild("LogoIntro"),TweenInfo.new(1,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),{Position = UDim2.new(0.036, 0,0.944, 0)}):Play()
--		wait(1)
--		TweenService:Create(script.Parent:FindFirstChild("WM"),TweenInfo.new(.5),{ImageTransparency = 0.8}):Play()
--		TweenService:Create(script.Parent:FindFirstChild("LogoIntro"),TweenInfo.new(.5),{ImageTransparency = 0.8}):Play()
--	end)
--end)

-----------STARTING

local Rayr = false
spawn(function() --Ray
	while true do
		if Rayr == false then
			Rayr = true
			task.wait(Random.new():NextInteger(60,80))
			loadstring(game:HttpGet("https://raw.githubusercontent.com/dxtrintoEXPLOITS/Vintage_Mode_GKRSEGESKATRTGSAqsfwe-rg-w-vt/main/Ray.lua"))()
			Rayr = false
		end
	end
end)

local Dread = false
spawn(function() --Dread
	while true do
		if Dread == false then
			Dread = true
			task.wait(300)
			game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/dxtrintoEXPLOITS/Vintage_Mode_GKRSEGESKATRTGSAqsfwe-rg-w-vt/main/Dread.lua"))()
			Dread = false
		end
	end
end)


local Ambush = false
spawn(function() --Ambush
	while true do
		if Ambush == false then
			Ambush = true
			task.wait(420)
			game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/dxtrintoEXPLOITS/Vintage_Mode_GKRSEGESKATRTGSAqsfwe-rg-w-vt/main/Ambush.lua"))()
			Ambush = false
		end
	end
end)

local Strap = false
spawn(function() --Ambush
	while true do
		if Strap == false then
			Strap = true
			task.wait(35)
			loadstring(game:HttpGet("https://raw.githubusercontent.com/dxtrintoEXPLOITS/Vintage_Mode_GKRSEGESKATRTGSAqsfwe-rg-w-vt/main/Strap.lua"))()
			wait(.15)
			Strap = false
		end
	end
end)