-- [[ SCRIPT PROTECTED UNDER MIT LICENSE DO NOT CLAIM AS ORIGINAL OWNER. ]] --

--[[ Allowed: Modifying and credit yourself as modder.
              Distribute, sharing is caring :)
              Private use is allowed cuz yes, this script are free :)
              Commercial use, such as promoting your modified or original one.
              Using samples at this code (it's allowed without credit if it's exploit func or lighing stuffs)
     Probihited: Liability, such as claiming you as original owner.

     All simple, you can use, mod it, or what, just give credit at least at comment at the code :)
]]

-- Discord: https://dsc.gg/rans (do not change to https://discord.gg/rans because it won't work)

-- Credit: Ry#2469 (Modder)

local function SetLightingEngine(yes)
    local scs, _ = pcall(function()
        if type(yes) == "string" then
            sethiddenproperty(game.Lighting, "Technology", yes)
        end
    end)
    task.wait()
    if not scs then
        game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Crashed :[", -- Required
                Text = "Error: Exploit does not supported function sethiddenproperty.", -- Required
            })
        
    end
end


local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local Window = Library.CreateLib("Ry's Enhancer v0.1", "DarkTheme")


--Enhancer
local EnhancerTab = Window:NewTab("Enhancer")
local EnhancerSection = EnhancerTab:NewSection("Enhancer Lighting")

EnhancerSection:NewButton("Morning (6am)", "Reser ur character", function()
    
    
    
    -- Shader, Morning Realistic (6pm).
local lighting = game.Lighting

for i,v in pairs(lighting:GetChildren()) do
    v:Destroy()
end

local blur = Instance.new("BlurEffect", lighting)
local bloom = Instance.new("BloomEffect", lighting)
local atmosphere = Instance.new("Atmosphere", lighting)
local sky = Instance.new("Sky", lighting)
local colorc = Instance.new("ColorCorrectionEffect", lighting)
local dof = Instance.new("DepthOfFieldEffect", lighting)
local sunray = Instance.new("SunRaysEffect", lighting)


--Color3.fromRGB()
-- Lighting
lighting.Ambient = Color3.fromRGB(33, 33, 33)
lighting.Brightness = 2.25
lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
lighting.EnvironmentDiffuseScale = 0.203
lighting.EnvironmentSpecularScale = 0.255

lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
lighting.ShadowSoftness = 0.19
lighting.ClockTime = 6.05
lighting.GeographicLatitude = -1.12
lighting.ExposureCompensation = 0.85

-- Atmosphere
atmosphere.Density = 0.364
atmosphere.Offset = 0.556
atmosphere.Color = Color3.fromRGB(200, 170, 108)
atmosphere.Decay = Color3.fromRGB(92, 60, 14)
atmosphere.Glare = 0
atmosphere.Haze = 0

-- Sky
sky.CelestialBodiesShown = true
sky.MoonAngularSize = 11
sky.MoonTextureId = "rbxasset://sky/moon.jpg"
sky.SkyboxBk = 'rbxasset://textures/sky/sky512_bk.tex'
sky.SkyboxDn = 'rbxasset://textures/sky/sky512_dn.tex'
sky.SkyboxFt = 'rbxasset://textures/sky/sky512_ft.tex'
sky.SkyboxLf = 'rbxasset://textures/sky/sky512_lf.tex'
sky.SkyboxRt = 'rbxasset://textures/sky/sky512_rt.tex'
sky.SkyboxUp = 'rbxasset://textures/sky/sky512_up.tex'

-- Bloom
bloom.Intensity = 0.3
bloom.Size = 10
bloom.Threshold = 0.8

-- Blur
blur.Size = 5

--Color Correction (Main)
colorc.Brightness = 0.4
colorc.Contrast = 0.9
colorc.Contrast = 0.9
colorc.Saturation = -0.3
colorc.TintColor = Color3.fromRGB(49, 87, 120)

-- Depth Of Field
dof.FarIntensity = 0.077
dof.FocusDistance = 21.54
dof.InFocusRadius = 16.77
dof.NearIntensity = 0.277 

sunray.Intensity = .25
sunray.Spread = .1
--End
    
    
    
    
end)

EnhancerSection:NewButton("Morning (8am)", "Reser ur character", function()
    -- Shader, Morning Realistic (8pm).
local lighting = game.Lighting

for i,v in pairs(lighting:GetChildren()) do
    v:Destroy()
end

local blur = Instance.new("BlurEffect", lighting)
local bloom = Instance.new("BloomEffect", lighting)
local atmosphere = Instance.new("Atmosphere", lighting)
local sky = Instance.new("Sky", lighting)
local colorc = Instance.new("ColorCorrectionEffect", lighting)
local dof = Instance.new("DepthOfFieldEffect", lighting)
local sunray = Instance.new("SunRaysEffect", lighting)


--Color3.fromRGB()
-- Lighting
lighting.Ambient = Color3.fromRGB(33, 33, 33)
lighting.Brightness = 0.75
lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
lighting.EnvironmentDiffuseScale = 0.203
lighting.EnvironmentSpecularScale = 0.255

lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
lighting.ShadowSoftness = 0.19
lighting.ClockTime = 8
lighting.GeographicLatitude = -1.12
lighting.ExposureCompensation = 0.65

-- Atmosphere
atmosphere.Density = 0.25
atmosphere.Offset = 0.556
atmosphere.Color = Color3.fromRGB(200, 170, 108)
atmosphere.Decay = Color3.fromRGB(92, 60, 14)
atmosphere.Glare = 0
atmosphere.Haze = 0

-- Sky
sky.CelestialBodiesShown = true
sky.MoonAngularSize = 11
sky.MoonTextureId = "rbxasset://sky/moon.jpg"
sky.SkyboxBk = 'rbxasset://textures/sky/sky512_bk.tex'
sky.SkyboxDn = 'rbxasset://textures/sky/sky512_dn.tex'
sky.SkyboxFt = 'rbxasset://textures/sky/sky512_ft.tex'
sky.SkyboxLf = 'rbxasset://textures/sky/sky512_lf.tex'
sky.SkyboxRt = 'rbxasset://textures/sky/sky512_rt.tex'
sky.SkyboxUp = 'rbxasset://textures/sky/sky512_up.tex'

-- Bloom
bloom.Intensity = 0.87
bloom.Size = 10
bloom.Threshold = 0.97

-- Blur
blur.Size = 5

--Color Correction (Main)
colorc.Brightness = 0.5
colorc.Contrast = 0.5
colorc.Contrast = 0.5
colorc.Saturation = 0
colorc.TintColor = Color3.fromRGB(238, 214, 140)

-- Depth Of Field
dof.FarIntensity = 0.077
dof.FocusDistance = 21.54
dof.InFocusRadius = 16.77
dof.NearIntensity = 0.277 

sunray.Intensity = .25
sunray.Spread = .1
--End
end)


EnhancerSection:NewButton("Afternoon (2pm)", "Reser ur character", function()
    -- Shader, Day Realistic (2pm).
local lighting = game.Lighting

for i,v in pairs(lighting:GetChildren()) do
    v:Destroy()
end

local blur = Instance.new("BlurEffect", lighting)
local bloom = Instance.new("BloomEffect", lighting)
local atmosphere = Instance.new("Atmosphere", lighting)
local sky = Instance.new("Sky", lighting)
local colorc = Instance.new("ColorCorrectionEffect", lighting)
local dof = Instance.new("DepthOfFieldEffect", lighting)
local sunray = Instance.new("SunRaysEffect", lighting)


--Color3.fromRGB()
-- Lighting
lighting.Ambient = Color3.fromRGB(33, 33, 33)
lighting.Brightness = 2.25
lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
lighting.EnvironmentDiffuseScale = 0.203
lighting.EnvironmentSpecularScale = 0.255

lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
lighting.ShadowSoftness = 0.19
lighting.ClockTime = 13
lighting.GeographicLatitude = -1.12
lighting.ExposureCompensation = 0.85

-- Atmosphere
atmosphere.Density = 0.364
atmosphere.Offset = 0.556
atmosphere.Color = Color3.fromRGB(200, 170, 108)
atmosphere.Decay = Color3.fromRGB(92, 60, 14)
atmosphere.Glare = 0
atmosphere.Haze = 0

-- Sky
sky.CelestialBodiesShown = true
sky.MoonAngularSize = 11
sky.MoonTextureId = "rbxasset://sky/moon.jpg"
sky.SkyboxBk = 'rbxasset://textures/sky/sky512_bk.tex'
sky.SkyboxDn = 'rbxasset://textures/sky/sky512_dn.tex'
sky.SkyboxFt = 'rbxasset://textures/sky/sky512_ft.tex'
sky.SkyboxLf = 'rbxasset://textures/sky/sky512_lf.tex'
sky.SkyboxRt = 'rbxasset://textures/sky/sky512_rt.tex'
sky.SkyboxUp = 'rbxasset://textures/sky/sky512_up.tex'

-- Bloom
bloom.Intensity = 0.3
bloom.Size = 10
bloom.Threshold = 0.8

-- Blur
blur.Size = 5

--Color Correction (Main)
colorc.Brightness = 0.1
colorc.Contrast = 0.5
colorc.Contrast = 0.5
colorc.Saturation = -0.3
colorc.TintColor = Color3.fromRGB(241, 241, 214)

-- Depth Of Field
dof.FarIntensity = 0.077
dof.FocusDistance = 21.54
dof.InFocusRadius = 16.77
dof.NearIntensity = 0.277 

sunray.Intensity = .25
sunray.Spread = .1
--End
end)


EnhancerSection:NewButton("Evening (5pm)", "Reser ur character", function()
    -- Shader, Evening Realistic (5pm).
local lighting = game.Lighting

for i,v in pairs(lighting:GetChildren()) do
    v:Destroy()
end

local blur = Instance.new("BlurEffect", lighting)
local bloom = Instance.new("BloomEffect", lighting)
local atmosphere = Instance.new("Atmosphere", lighting)
local sky = Instance.new("Sky", lighting)
local colorc = Instance.new("ColorCorrectionEffect", lighting)
local dof = Instance.new("DepthOfFieldEffect", lighting)
local sunray = Instance.new("SunRaysEffect", lighting)


--Color3.fromRGB()
-- Lighting
lighting.Ambient = Color3.fromRGB(59, 33, 27)
lighting.Brightness = 2.14
lighting.ColorShift_Bottom = Color3.fromRGB(11, 0, 20)
lighting.ColorShift_Top = Color3.fromRGB(240, 127, 14)
lighting.EnvironmentDiffuseScale = 0.203
lighting.EnvironmentSpecularScale = 0.255

lighting.OutdoorAmbient = Color3.fromRGB(34, 0, 49)
lighting.ShadowSoftness = 0
lighting.ClockTime = 6.7
lighting.GeographicLatitude = -20.356
lighting.ExposureCompensation = 0.24

-- Atmosphere
atmosphere.Density = 0.364
atmosphere.Offset = 0.556
atmosphere.Color = Color3.fromRGB(200, 170, 108)
atmosphere.Decay = Color3.fromRGB(92, 60, 14)
atmosphere.Glare = 0
atmosphere.Haze = 0

-- Sky
sky.CelestialBodiesShown = true
sky.MoonAngularSize = 11
sky.MoonTextureId = "rbxasset://sky/moon.jpg"
sky.SkyboxBk = 'rbxassetid://323494035'
sky.SkyboxDn = 'rbxassetid://323494368'
sky.SkyboxFt = 'rbxassetid://323494130'
sky.SkyboxLf = 'rbxassetid://323494252'
sky.SkyboxRt = 'rbxassetid://323494067'
sky.SkyboxUp = 'rbxassetid://323493360'

-- Bloom
bloom.Intensity = 0.1
bloom.Size = 100
bloom.Threshold = 0

-- Blur
blur.Size = 2

--Color Correction (Main)
colorc.Brightness = 0
colorc.Contrast = 0
colorc.Saturation = 0.05
colorc.TintColor = Color3.fromRGB(255, 224, 219)

-- Depth Of Field
dof.FarIntensity = 0.077
dof.FocusDistance = 21.54
dof.InFocusRadius = 16.77
dof.NearIntensity = 0.277 

sunray.Intensity = .25
sunray.Spread = .1
--End
end)


EnhancerSection:NewButton("Night (8pm)", "Reser ur character", function()
    -- Shader, Night Realistic (8pm).
local lighting = game.Lighting

for i,v in pairs(lighting:GetChildren()) do
    v:Destroy()
end

local blur = Instance.new("BlurEffect", lighting)
local bloom = Instance.new("BloomEffect", lighting)
local atmosphere = Instance.new("Atmosphere", lighting)
local sky = Instance.new("Sky", lighting)
local colorc = Instance.new("ColorCorrectionEffect", lighting)
local dof = Instance.new("DepthOfFieldEffect", lighting)
local sunray = Instance.new("SunRaysEffect", lighting)


--Color3.fromRGB()
-- Lighting
lighting.Ambient = Color3.fromRGB(33, 33, 33)
lighting.Brightness = 5.25
lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
lighting.EnvironmentDiffuseScale = 0.203
lighting.EnvironmentSpecularScale = 0.255

lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
lighting.ShadowSoftness = 0.19
lighting.ClockTime = 20
lighting.GeographicLatitude = -1.12
lighting.ExposureCompensation = 0.85

-- Atmosphere
atmosphere.Density = 0.364
atmosphere.Offset = 0.556
atmosphere.Color = Color3.fromRGB(200, 170, 108)
atmosphere.Decay = Color3.fromRGB(92, 60, 14)
atmosphere.Glare = 0
atmosphere.Haze = 0

-- Sky
sky.CelestialBodiesShown = true
sky.MoonAngularSize = 11
sky.MoonTextureId = "rbxasset://sky/moon.jpg"
sky.SkyboxBk = 'rbxasset://textures/sky/sky512_bk.tex'
sky.SkyboxDn = 'rbxasset://textures/sky/sky512_dn.tex'
sky.SkyboxFt = 'rbxasset://textures/sky/sky512_ft.tex'
sky.SkyboxLf = 'rbxasset://textures/sky/sky512_lf.tex'
sky.SkyboxRt = 'rbxasset://textures/sky/sky512_rt.tex'
sky.SkyboxUp = 'rbxasset://textures/sky/sky512_up.tex'

-- Bloom
bloom.Intensity = 0.7
bloom.Size = 10
bloom.Threshold = 0.8

-- Blur
blur.Size = 5

--Color Correction (Main)
colorc.Brightness = 0.2
colorc.Contrast = 0.5
colorc.Contrast = 0.8
colorc.Saturation = -0.3
colorc.TintColor = Color3.fromRGB(255, 255, 226)

-- Depth Of Field
dof.FarIntensity = 0.077
dof.FocusDistance = 21.54
dof.InFocusRadius = 16.77
dof.NearIntensity = 0.277 

sunray.Intensity = .25
sunray.Spread = .1
--End
end)



--Materials
local EngineTab = Window:NewTab("Lighting Engine")
local EngineSection = EngineTab:NewSection("Lighting Technology that render 3D objects.")

EngineSection:NewButton("Legacy", "Legacy.", function()
    SetLightingEngine("Legacy")
end)
EngineSection:NewButton("Voxel", "Voxel.", function()
    SetLightingEngine("Voxel")
end)
EngineSection:NewButton("Compatibility", "Compatibility.", function()
    SetLightingEngine("Compatibility")
end)
EngineSection:NewButton("ShadowMap", "ShadowMap.", function()
    SetLightingEngine("ShadowMap")
end)
EngineSection:NewButton("Future", "Future.", function()
    SetLightingEngine("Future")
end)

local ShadowSection = EngineTab:NewSection("Mess with shadows.")

ShadowSection:NewToggle("Lighting Shadows", "Light will respect shadow or not, applied in 5s", function(state)
   while state do
        for i,v in pairs(workspace:GetDescendants()) do
            if v:IsA("SpotLight") or v:IsA("SurfaceLight") or v:IsA("PointLight") then
                v.Shadows = true
            end
        end
        task.wait(5)
    end
end)
ShadowSection:NewToggle("Global Shadows", "Shadow in game, toggle or disable", function(state)
    game.Lighting.GlobalShadows = state
end)


--Materials
local MaterialTab = Window:NewTab("Material Enhancer")
local MaterialSection = MaterialTab:NewSection("Materials")

MaterialSection:NewButton("Reflection", "Reser ur character", function()
    for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Part") or v:IsA("UnionOperation") then
            if not v.Parent:FindFirstChild("Humanoid") then
                pcall(function()
                    v.Reflectance = 0.15
                end)
            end
        end
    end
end)

--Remover
local RemoverTab = Window:NewTab("Remover")
local RemoverSection = RemoverTab:NewSection("Remove some Modification by Enhancer.")

RemoverSection:NewButton("Remove Reflection", "Remove Reflections in Workspace.", function()
    for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Part") or v:IsA("UnionOperation") then
            if not v.Parent:FindFirstChild("Humanoid") then
                pcall(function()
                    if v.Reflectance > 0 then
                        v.Reflectance = 0
                    end
                end)
            end
        end
    end
end)

RemoverSection:NewButton("Clear All Lighting", "Remove every items in Lighting.", function()
    for i,v in pairs(game.Lighting:GetChildren()) do
        v:Destroy()
    end
end)
