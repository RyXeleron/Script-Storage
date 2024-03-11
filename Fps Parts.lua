 --//Variables\\--
local player =  game:GetService("Players").LocalPlayer
local character = player.character or player.characterAdded:Wait()
 
--//Events\\--
game:GetService("RunService").RenderStepped:Connect(function()
 --//Visible\\--
 for i, part in pairs(character:GetChildren())do
  if string.match(part.Name, "Arm")or string.match(part.Name, "Hand") then
   part.LocalTransparencyModifier = 0
  end
 end
end)

 --//Variables\\--
local player =  game:GetService("Players").LocalPlayer
local character = player.character or player.characterAdded:Wait()
 
--//Events\\--
game:GetService("RunService").RenderStepped:Connect(function()
 --//Visible\\--
 for i, part in pairs(character:GetChildren())do
  if string.match(part.Name, "Leg")or string.match(part.Name, "Lower") then
   part.LocalTransparencyModifier = 0
  end
 end
end)

--//Events\\--
game:GetService("RunService").RenderStepped:Connect(function()
 --//Visible\\--
 for i, part in pairs(character:GetChildren())do
  if string.match(part.Name, "Torso")or string.match(part.Name, "LowerTorso") then
   part.LocalTransparencyModifier = 0
  end
 end
end)