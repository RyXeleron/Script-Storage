function forreinjectfunction()

-- peremenniye ------------------------------------------------------------------------------------------------------------------------------------------------------------------
local nameven = "Spider Gui [BETA]"
for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == nameven then
        v:Destroy()
    end
end

espforlder = Instance.new("Folder")
espforlder.Parent = game.Workspace.CurrentCamera

lplr = game.Players.LocalPlayer
lplrhum = lplr.Character.HumanoidRootPart
_G.maxspeedromfly = 100
hitboxsize = 10

if _G.spiderguiven == nil then
    _G.spiderguiven = 1
else
    _G.spiderguiven = _G.spiderguiven + 1
end
local bindworksvenyx = _G.spiderguiven

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new(nameven, 5013109572)

-- functions

itemstab = {
    "Crowbar",
    "Green Key",
    "Purple Key",
    "Battery",
    "Ladder",
    "Yellow Key",
    "Blue Key",
    "Bug Spray",
    "Orange Key",
    "C4",
    "Red Key",
    "Wrench"
}

-- pages and sections

local page1 = venyx:addPage("Player", 5012544693)
local sectionautowin = page1:addSection('By RomashkaHEHE')
local section1 = page1:addSection("Item Functions")
local section2 = page1:addSection("")

local page2 = venyx:addPage("Spider", 5012544693)
local section21 = page2:addSection("By RomashkaHEHE")

local page4 = venyx:addPage("Local Player", 5012544693)
local section41 = page4:addSection("By RomashkaHEHE")

local page3 = venyx:addPage("Other", 5012544693)
local section31 = page3:addSection("By RomashkaHEHE")

-- first page1

section1:addDropdown("Items", itemstab, function(value)
    itemchoose = value
end)

section1:addButton("Take item", function()
    for _,v in pairs(game:GetService("Workspace").Items:GetDescendants()) do
        if v.ClassName == "ClickDetector" then
            if v.Parent.Parent.Name == itemchoose then
                playercheckpos = lplr.Character.HumanoidRootPart.CFrame
                wait(0.3)
                lplr.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                wait(0.3)
                local args = {
                    [1] = "AttemptSwapItems",
                    [2] = v.Parent
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteFunction:InvokeServer(unpack(args))
                wait(0.3)
                lplr.Character.HumanoidRootPart.CFrame = playercheckpos
            end
        end
    end
end)

section1:addButton("Use item", function()
    if itemchoose == "Crowbar" then
        pcall(function()
            playercheckpos2 = lplrhum.CFrame
            if lplr.Backpack:FindFirstChild("Crowbar") then
                lplr.Backpack:FindFirstChild("Crowbar").Parent = lplr.Character
                pickupye1 = true
            elseif lplr.Character:FindFirstChild("Crowbar") then
                pickupye1 = true
            end
            wait(0.3)
            if pickupye1 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(500.116486, 58.4998817, 98.4872971)
                wait(0.3)
                local args = {
                    [1] = "AttemptTriggerMapEvent",
                    [2] = workspace.Map01_Cabin.DockGate.BoardEvent.Trigger
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(476.164368, 75.5, -2.34601712)
                wait(0.3)
                local args = {
                    [1] = "AttemptTriggerMapEvent",
                    [2] = workspace.Map01_Cabin.CABIN.BoardEvent.Trigger
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                pickupye1 = false
                lplrhum.CFrame = playercheckpos2
            end
        end)
    elseif itemchoose == "Green Key" then
        pcall(function()
            playercheckpos2 = lplrhum.CFrame
            wait(0.3)
            if lplr.Backpack:FindFirstChild("Green Key") then
                lplr.Backpack:FindFirstChild("Green Key").Parent = lplr.Character
                pickupye2 = true
            elseif lplr.Character:FindFirstChild("Green Key") then
                pickupye2 = true
            end
            wait(0.3)
            if pickupye2 then
                lplr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Map01_Cabin"].Shed.ShedDoor.Door.CFrame
                wait(0.3)
                local args = {
                    [1] = "AttemptToggleDoor",
                    [2] = workspace.Map01_Cabin.Shed.ShedDoor,
                    [3] = true
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                pickupye2 = false
                lplrhum.CFrame = playercheckpos2
            end
        end)
    elseif itemchoose == "Purple Key" then
        pcall(function()
            playercheckpos2 = lplrhum.CFrame
            if lplr.Backpack:FindFirstChild("Purple Key") then
                lplr.Backpack:FindFirstChild("Purple Key").Parent = lplr.Character
                pickupye3 = true
            elseif lplr.Character:FindFirstChild("Purple Key") then
                pickupye3 = true
            end
            wait(0.3)
            if pickupye3 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(499.690582, 58.5, 98.9617615)
                wait(0.3)
                local args = {
                    [1] = "AttemptToggleDoor",
                    [2] = workspace.Map01_Cabin.DockGate.DockDoorSystem.DockDoor,
                    [3] = false
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                pickupye3 = false
                lplrhum.CFrame = playercheckpos2
            end
        end)
    elseif itemchoose == "Battery" then
        pcall(function()
            playercheckpos2 = lplrhum.CFrame
            if lplr.Backpack:FindFirstChild("Battery") then
                lplr.Backpack:FindFirstChild("Battery").Parent = lplr.Character
                pickupye4 = true
            elseif lplr.Character:FindFirstChild("Battery") then
                pickupye4 = true
            end
            wait(0.3)
            if pickupye4 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(436.361237, 58.7000008, 67.5416489)
                wait(0.3)
                local args = {
                    [1] = "AttemptTriggerMapEvent",
                    [2] = workspace.Map01_Cabin.Shed.BatteryLever.BatteryHolder.Trigger
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(435.346283, 58.7000008, 72.5034714)
                wait(0.3)
                local args = {
                    [1] = "AttemptTriggerMapEvent",
                    [2] = workspace.Map01_Cabin.Shed.BatteryLever.PoweredLeverSwitch.Trigger
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                pickupye4 = false
                lplrhum.CFrame = playercheckpos2
            end
        end)
    elseif itemchoose == "Ladder" then
        pcall(function()
            playercheckpos2 = lplrhum.CFrame
            if lplr.Backpack:FindFirstChild("Ladder") then
                lplr.Backpack:FindFirstChild("Ladder").Parent = lplr.Character
                pickupye5 = true
            elseif lplr.Character:FindFirstChild("Ladder") then
                pickupye5 = true
            end
            wait(0.3)
            if pickupye5 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(499.690582, 58.5, 98.9617615)
                wait(0.3)
                local args = {
                    [1] = "AttemptTriggerMapEvent",
                    [2] = workspace.Map01_Cabin.CABIN.LadderEvent.Trigger
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                pickupye5 = false
                lplrhum.CFrame = playercheckpos2
            end
        end)
    elseif itemchoose == "Yellow Key" then
        pcall(function()
            playercheckpos2 = lplrhum.CFrame
            if lplr.Backpack:FindFirstChild("Yellow Key") then
                lplr.Backpack:FindFirstChild("Yellow Key").Parent = lplr.Character
                pickupye6 = true
            elseif lplr.Character:FindFirstChild("Yellow Key") then
                pickupye6 = true
            end
            wait(0.3)
            if pickupye6 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(576.861145, 43.1000023, 79.4047241)
                wait(0.3)
                local args = {
                    [1] = "AttemptToggleDoor",
                    [2] = workspace.Map01_Cabin.BunkerUnderground.SafeInBunker.SafeDoor,
                    [3] = false
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                pickupye6 = false
                lplrhum.CFrame = playercheckpos2
            end
        end)
    elseif itemchoose == "Blue Key" then
        pcall(function()
            playercheckpos2 = lplrhum.CFrame
            if lplr.Backpack:FindFirstChild("Blue Key") then
                lplr.Backpack:FindFirstChild("Blue Key").Parent = lplr.Character
                pickupye7 = true
            elseif lplr.Character:FindFirstChild("Blue Key") then
                pickupye7 = true
            end
            wait(0.3)
            if pickupye7 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(507.268158, 75.5, 29.3330078)
                wait(0.3)
                local args = {
                    [1] = "AttemptToggleDoor",
                    [2] = workspace.Map01_Cabin.CABIN.WallDoorSegment.LockedDoor,
                    [3] = false
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                pickupye7 = false
                lplrhum.CFrame = playercheckpos2
            end
        end)
    elseif itemchoose == "Orange Key" then
        pcall(function()
            playercheckpos2 = lplrhum.CFrame
            if lplr.Backpack:FindFirstChild("Orange Key") then
                lplr.Backpack:FindFirstChild("Orange Key").Parent = lplr.Character
                pickupye8 = true
            elseif lplr.Character:FindFirstChild("Orange Key") then
                pickupye8 = true
            end
            wait(0.3)
            if pickupye8 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(471.914642, 75.5, -13.6338701)
                wait(0.3)
                local args = {
                    [1] = "AttemptToggleDoor",
                    [2] = workspace.Map01_Cabin.CABIN.SafeInHouse.SafeDoor,
                    [3] = false
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                pickupye8 = false
                lplrhum.CFrame = playercheckpos2
            end
        end)
    elseif itemchoose == "C4" then
        pcall(function()
            playercheckpos2 = lplrhum.CFrame
            if lplr.Backpack:FindFirstChild("C4") then
                lplr.Backpack:FindFirstChild("C4").Parent = lplr.Character
                pickupye9 = true
            elseif lplr.Character:FindFirstChild("C4") then
                pickupye9 = true
            end
            wait(0.3)
            if pickupye9 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(535.640137, 58.9000015, 87.7516327)
                wait(0.3)
                local args = {
                    [1] = "AttemptTriggerMapEvent",
                    [2] = workspace.Map01_Cabin.BunkerUnderground.BunkerHatchEvent.Trigger
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                pickupye9 = false
                lplrhum.CFrame = playercheckpos2
            end
        end)
    elseif itemchoose == "Red Key" then
        pcall(function()
            playercheckpos2 = lplrhum.CFrame
            if lplr.Backpack:FindFirstChild("Red Key") then
                lplr.Backpack:FindFirstChild("Red Key").Parent = lplr.Character
                pickupye10 = true
            elseif lplr.Character:FindFirstChild("Red Key") then
                pickupye10 = true
            end
            wait(0.3)
            if pickupye10 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(533.183777, 61.5, 7.5835247)
                wait(0.3)
                local args = {
                    [1] = "AttemptToggleDoor",
                    [2] = workspace.Map01_Cabin.CABIN.WallDoorSegment.LockedDoor,
                    [3] = false
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                pickupye10 = false
                lplrhum.CFrame = playercheckpos2
            end
        end)
    elseif itemchoose == "Wrench" then
        pcall(function()
            playercheckpos2 = lplrhum.CFrame
            if lplr.Backpack:FindFirstChild("Wrench") then
                lplr.Backpack:FindFirstChild("Wrench").Parent = lplr.Character
                pickupye11 = true
            elseif lplr.Character:FindFirstChild("Wrench") then
                pickupye11 = true
            end
            wait(0.3)
            if pickupye11 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(548.232605, 43, 81.5556564)
                wait(0.3)
                local args = {
                    [1] = "AttemptTriggerMapEvent",
                    [2] = workspace.Map01_Cabin.BunkerUnderground.LaserEvent.PowerPanel.Trigger
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                pickupye11 = false
                lplrhum.CFrame = playercheckpos2
            end
        end)
    end
end)

section2:addToggle("Spider esp", nil, function()
	local bill = Instance.new("BillboardGui", espforlder)
	bill.Name = plr.Name
	bill.AlwaysOnTop = true
	bill.Size = UDim2.new(1,0,1,0)
	bill.Adornee = plr.Character.Head
	local Frame = Instance.new('Text',bill)
	Frame.Active = true
	Frame.BackgroundColor3 = Color3.new(0/255,255/255,0/255)
	Frame.BackgroundTransparency = 0
	Frame.BorderSizePixel = 0
	Frame.AnchorPoint = Vector2.new(.5, .5)
	Frame.Position = UDim2.new (0.5,0,0.5,0)
	Frame.Size = UDim2.new (1,0,1,0)
	Frame.Rotation = 0
end)

section2:addButton("Use Lever", function()
    playercheckpos2 = lplrhum.CFrame
    wait(0.3)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(563.418213, 43, 88.4427719)
    wait(0.3)
    local args = {
        [1] = "AttemptTriggerMapEvent",
        [2] = workspace.Map01_Cabin.BunkerUnderground.LeverSwitch.Trigger
    }
    game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
    wait(0.3)
    lplrhum.CFrame = playercheckpos2
end)

sectionautowin:addButton("Auto Win (beta)", function()
    noclipON = true
    if not stad1 then
        for _,v in pairs(game:GetService("Workspace").Items:GetDescendants()) do
            if v.ClassName == "ClickDetector" then
                if v.Parent.Parent.Name == "Crowbar" then
                    playercheckpos = lplr.Character.HumanoidRootPart.CFrame
                    wait(0.3)
                    lplr.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    wait(0.3)
                    local args = {
                        [1] = "AttemptSwapItems",
                        [2] = v.Parent
                    }
                    game:GetService("ReplicatedStorage").modules.up.Network.RemoteFunction:InvokeServer(unpack(args))
                    wait(0.2)
                    pcall(function()
                        playercheckpos2 = lplrhum.CFrame
                        if lplr.Backpack:FindFirstChild("Crowbar") then
                            lplr.Backpack:FindFirstChild("Crowbar").Parent = lplr.Character
                            pickupye1 = true
                        elseif lplr.Character:FindFirstChild("Crowbar") then
                            pickupye1 = true
                        end
                        wait(0.2)
                        if pickupye1 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(500.116486, 58.4998817, 98.4872971)
                            wait(0.2)
                            local args = {
                                [1] = "AttemptTriggerMapEvent",
                                [2] = workspace.Map01_Cabin.DockGate.BoardEvent.Trigger
                            }
                            game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                            wait(0.2)
                            pickupye1 = false
                            stad1 = true
                        end
                    end)
                end
            end
        end
    end
    
    if not stad1 then return end
    
    if not stad2 then
        for _,v in pairs(game:GetService("Workspace").Items:GetDescendants()) do
            if v.ClassName == "ClickDetector" then
                if v.Parent.Parent.Name == "Battery" then
                    wait(0.2)
                    playercheckpos = lplr.Character.HumanoidRootPart.CFrame
                    wait(0.2)
                    lplr.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    wait(0.2)
                    local args = {
                        [1] = "AttemptSwapItems",
                        [2] = v.Parent
                    }
                    game:GetService("ReplicatedStorage").modules.up.Network.RemoteFunction:InvokeServer(unpack(args))
                    wait(0.2)
                    stad2 = true
                end
            end
        end
    end
    
    if not stad2 then return end
    
    if not stad3 then
        pcall(function()
            wait(0.2)
            if lplr.Backpack:FindFirstChild("Battery") then
                lplr.Backpack:FindFirstChild("Battery").Parent = lplr.Character
                pickupye4 = true
            elseif lplr.Character:FindFirstChild("Battery") then
                pickupye4 = true
            else return end
            wait(0.2)
            if pickupye4 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(436.361237, 58.7000008, 67.5416489)
                wait(0.3)
                local args = {
                    [1] = "AttemptTriggerMapEvent",
                    [2] = workspace.Map01_Cabin.Shed.BatteryLever.BatteryHolder.Trigger
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(435.346283, 58.7000008, 72.5034714)
                wait(0.3)
                local args = {
                    [1] = "AttemptTriggerMapEvent",
                    [2] = workspace.Map01_Cabin.Shed.BatteryLever.PoweredLeverSwitch.Trigger
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                pickupye4 = false
                stad3 = true
            end
        end)
    end
    
    if not stad3 then return end
    
    if not stad4 then
        wait(0.3)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(563.418213, 43, 88.4427719)
        wait(0.3)
        local args = {
            [1] = "AttemptTriggerMapEvent",
            [2] = workspace.Map01_Cabin.BunkerUnderground.LeverSwitch.Trigger
        }
        game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
        wait(0.3)
        stad4 = true
        print("stad4")
    end
    
    if not stad4 then return end
    
    if not stad5 then
        wait(0.3)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(577.174744, 43.2000008, 79.9113922)
        wait(0.3)
        local args = {
            [1] = "AttemptSwapItems",
            [2] = workspace.Items["Purple Key"].Hitbox
        }
        
        game:GetService("ReplicatedStorage").modules.up.Network.RemoteFunction:InvokeServer(unpack(args))
        wait(0.3)
        stad5 = true
    end
    
    if not stad5 then return end
    
    pcall(function()
        playercheckpos2 = lplrhum.CFrame
        if lplr.Backpack:FindFirstChild("Purple Key") then
            lplr.Backpack:FindFirstChild("Purple Key").Parent = lplr.Character
            pickupye3 = true
        elseif lplr.Character:FindFirstChild("Purple Key") then
            pickupye3 = true
        end
        wait(0.3)
        if pickupye3 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(499.690582, 58.5, 98.9617615)
            wait(0.3)
            local args = {
                [1] = "AttemptToggleDoor",
                [2] = workspace.Map01_Cabin.DockGate.DockDoorSystem.DockDoor,
                [3] = false
            }
            game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
            wait(0.3)
            pickupye3 = false
            stad5 = false
            stad4 = false
            stad3 = false
            stad2 = false
            stad1 = false
            noclipON = false
        end
    end)
end)

section2:addButton("Auto Win fix", function()
    stad5 = false
    stad4 = false
    stad3 = false
    stad2 = false
    stad1 = false
    noclipON = false
end)

section2:addButton("Delete Spider Webs", function()
    for _,v in pairs(game:GetService("Workspace").ignore.SpiderWebs:GetChildren()) do
        v:Destroy()
    end
end)

section2:addButton("Tp to exit", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(499.089935, 58.5, 79.4934769)
end)

spawn(function()
	while game:GetService("RunService").RenderStepped:wait() do
		if bindworksvenyx == _G.spiderguiven then
		    pcall(function()
    		    if noclipON == true then
    		        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
    		            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    		        end
    		    end
		    end)
		end
	end
end)

-- Page2

section21:addToggle("Players TP", false, function(value)
    pcall(function()
        playerstp = value
        if playerstp then
            repeat wait()
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= lplr.Name and v.Character:FindFirstChild("Humanoid") and (lplrhum.Position - v.Character.HumanoidRootPart.Position).magnitude < 400 and v.Character.Humanoid.Health > 0 then
                        chelik = v.Character
                        print(v.Name)
                    end
                end
                lplrhum.CFrame = chelik.HumanoidRootPart.CFrame
            until playerstp == false
        end
    end)
end)

section21:addToggle("Players hitbox", nil, function(value)
    hitboxen = value
end)
spawn(function()
    while wait() do
        if bindworksvenyx == _G.spiderguiven then
            if hitboxen then
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= lplr.Name and v.Character:FindFirstChild("Humanoid") and (lplrhum.Position - v.Character.HumanoidRootPart.Position).magnitude < 400 and v.Character.Humanoid.Health > 0 then
                        v.Character.HumanoidRootPart.Size = Vector3.new(hitboxsize, hitboxsize, hitboxsize)
                        v.Character.HumanoidRootPart.Transparency = 0.6
                    end
                end
            else
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= lplr.Name and v.Character:FindFirstChild("Humanoid") and (lplrhum.Position - v.Character.HumanoidRootPart.Position).magnitude < 400 and v.Character.Humanoid.Health > 0 then
                        v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                        v.Character.HumanoidRootPart.Transparency = 1
                    end
                end
            end
        else
            break
        end
    end
end)

section21:addSlider("Hitbox size", 10, 0, 50, function(value)
    hitboxsize = value
end)

-- Page4

section41:addSlider("WalkSpeed", game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed or 16, 0, 200, function(value)
	pcall(function()
    	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=value
    end)
end)

section41:addSlider("JumpPower", game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").JumpPower or 0, 0, 200, function(value)
	pcall(function()
    	game.Players.LocalPlayer.Character.Humanoid.JumpPower=value
    end)
end)

section41:addToggle("Inf jump", nil, function(value)
	infjumpon = value
	game:GetService("UserInputService").JumpRequest:connect(function()
		if infjumpon == true then
			if bindworksvenyx == _G.spiderguiven then
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
			end
		end
	end)
end)

section41:addKeybind("Click TP", Enum.KeyCode.Z, function()
	if bindworksvenyx == _G.spiderguiven then
		hum = lplr.Character.HumanoidRootPart
		mouse = lplr:GetMouse()
		hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
	end
end)

section41:addButton("Btools", function()
	function unlockEverything(a)
		for n,o in pairs(a:GetChildren())do
			if(o:IsA("BasePart"))then 
				o.Locked = false 
			end
			unlockEverything(o)
		end
	end

	unlockEverything(Workspace)

	Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4
	Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 3
	Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 2
end)

section41:addButton("Alt Delete", function()
	local Player = game:GetService("Players").LocalPlayer
	local Mouse = Player:GetMouse()
	 
	Mouse.Button1Down:connect(function()
	    if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftAlt) and not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.RightAlt)then return end
	    if not Mouse.Target then return end
	    Mouse.Target:Destroy()
	end)
end)

section41:addKeybind("Fly", nil, function()
	if bindworksvenyx == _G.spiderguiven then
	    if _G.romfflyingon then
	        _G.romfflyingon = false
	    else 
	        _G.romfflyingon = true
	        loadstring([[local mouse = game.Players.LocalPlayer:GetMouse()
			local plr = game.Players.LocalPlayer 
			local torso = plr.Character.Head 
			local deb = true 
			local ctrl = {f = 0, b = 0, l = 0, r = 0} 
			local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
			local speed = 0
			 
			function Fly()
			    local bg = Instance.new("BodyGyro", torso) 
			    bg.P = 9e4 
			    bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
			    bg.cframe = torso.CFrame 
			    local bv = Instance.new("BodyVelocity", torso) 
			    bv.velocity = Vector3.new(0,0.1,0)
			    bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
			    repeat wait()
			        pcall(function()
			            plr.Character.Humanoid.PlatformStand = true
			            if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
			                speed = _G.maxspeedromfly
			            elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
			                speed = 0
			            end
			            if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
			                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
			                lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
			            elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
			                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
			            else 
			                bv.velocity = Vector3.new(0,0.1,0)
			            end
			            bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/_G.maxspeedromfly),0,0)
			        end)
			    until not _G.romfflyingon
			    pcall(function()
			    ctrl = {f = 0, b = 0, l = 0, r = 0}
			    lastctrl = {f = 0, b = 0, l = 0, r = 0}
			    speed = 0 
			    bg:Destroy() 
			    bv:Destroy() 
			    plr.Character.Humanoid.PlatformStand = false
			    end)
			end
			mouse.KeyDown:connect(function(key)
			    if key:lower() == "w" then
			    ctrl.f = 1
			    elseif key:lower() == "s" then
			    ctrl.b = -1
			    elseif key:lower() == "a" then
			    ctrl.l = -1
			    elseif key:lower() == "d" then
			    ctrl.r = 1
			    end
			end)
			mouse.KeyUp:connect(function(key)
			    if key:lower() == "w" then
			    ctrl.f = 0
			    elseif key:lower() == "s" then
			    ctrl.b = 0
			    elseif key:lower() == "a" then
			    ctrl.l = 0
			    elseif key:lower() == "d" then
			    ctrl.r = 0
			    end
			end)
			Fly()]])()
	    end
	end
end)

section41:addSlider("Fly speed", 100, 0, 1000, function(value)
	if value < 2000 then
        _G.maxspeedromfly=value
    else
        _G.maxspeedromfly=2000
    end
end)

-- Page3

section31:addKeybind("Toggle Gui", Enum.KeyCode.RightControl, function()
	venyx:toggle()
end)

section31:addButton("Rejoin", function()
	venyx:Notify("Yes", "No", function(value)
		if value == true then
			game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
		end
	end)
end)

section31:addButton("Reinject", function()
	venyx:Notify("Yes", "No", function(value)
		if value == true then
			venyx:toggle()
			wait(0.1)
			for i,v in pairs(game.CoreGui:GetChildren()) do
				if v.Name == nameven then
					v:Destroy()
				end
			end
			_G.spiderguiven = _G.spiderguiven + 1
			forreinjectfunction()
		end
	end)
end)

section31:addButton("Destroy Gui", function()
	venyx:Notify("Yes", "No", function(value)
		if value == true then
			venyx:toggle()
			wait(0.1)
			for i,v in pairs(game.CoreGui:GetChildren()) do
				if v.Name == nameven then
					v:Destroy()
				end
			end
			_G.spiderguiven = _G.spiderguiven + 1
		end
	end)
end)

library:SelectPage(page1, true)
------------------------------------------------------------------------------------------------------------------------------------------------------------------
end
forreinjectfunction()