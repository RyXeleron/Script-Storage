-- Created by ry
local p=game:GetService"Players".LocalPlayer
local c=p.Character
local surf='SmoothNoOutlines'
if not c then error'Cannot find character, please respawn, then rerun the script' end
 
-- Flashlight Handle
local hand=Instance.new"Part"
hand.BrickColor=BrickColor.DarkGray()
hand.Parent=c
hand.Anchored=false
hand.Locked=true
hand.CanCollide=false
hand.FormFactor='Custom'
hand.Size=Vector3.new(1,1,2)
hand.TopSurface,hand.BottomSurface=surf,surf
 
-- Torch Effect
local fe=Instance.new"Part"
fe.BrickColor=BrickColor.new"Black"
fe.Parent=c
fe.Anchored=false
fe.Locked=true
fe.CanCollide=false
fe.FormFactor='Custom'
fe.Size=Vector3.new(.8,.8,.2)
fe.TopSurface,hand.BottomSurface=surf,surf
 
-- Welding stuff
 
-- Flash to Right Arm
local weld1=Instance.new"Weld"
weld1.Parent=hand
weld1.Part0=hand
weld1.Part1=c['Right Arm']
weld1.C0=CFrame.new(0, 1.5, 0)
 
-- Torch Effect to Flash
local weld2=Instance.new"Weld"
weld2.Parent=hand
weld2.Part0=hand
weld2.Part1=fe
weld2.C0=CFrame.new(0, 0, 1)
 
-- Right Arm Weld
local ra=Instance.new"Weld"
ra.Parent=c['Torso']
ra.Part0=c['Right Arm']
ra.Part1=c['Torso']
ra.C0=CFrame.new(-1.5,1,0)*CFrame.Angles(math.rad(180),0,0)
 
 
 
-- Flashlight Functionality
 
local flashlightOn = false
local Battery=100
 
-- Handles turning the flashlight on/off
p:GetMouse().Button1Down:connect(function()
	flashlightOn=not flashlightOn
	if flashlightOn then
		fe.BrickColor=BrickColor.new"New Yeller"
		light=Instance.new"SurfaceLight"
		light.Parent=fe
		light.Range=32
		light.Face="Back"
		light.Brightness=2
		fe.Material="Neon"
	else
		fe.BrickColor=BrickColor.new"Black"
		if light then light:destroy() end
		fe.Material="SmoothPlastic"
	end
end)
 
 -- Battery Modules
 
-- Depleting and Charging
spawn(function()
	while wait(1) do
		if flashlightOn then
			if Battery > 0 then
				Battery=Battery-1
			end
		else
			if Battery < 100 then
				Battery=Battery+1
			end
		end
		print(Battery)
	end
end)
 
-- Turning off flashlight if the battery is too low
spawn(function()
	while wait() do
		if Battery <= 0 then
			flashlightOn=false
			if light then light:destroy() end
			fe.BrickColor=BrickColor.new"Black"
			fe.Material="SmoothPlastic"
		end
	end
end)
 
local stepped = game:GetService'RunService'.RenderStepped