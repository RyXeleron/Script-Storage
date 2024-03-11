repeat task.wait() until game:IsLoaded()
loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/Extras/Global"))()
getgenv().KeySystem = false
if KeySystem then
loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/Extras/Key'))()
-- i don't understand why you would want to crack this if anything if your gonna crack it force the getgenv().KeySystem false and it will force load the script
 getgenv().KeySystem = false
end

local StartTime = tick()
local A = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.G-Hub-Games-List"))()

local BlurEffect = Instance.new("BlurEffect")
BlurEffect.Parent = Lighting
BlurEffect.Size = 0
local ScreenGui = Instance.new("ScreenGui")
if syn and syn.protect_gui then
    syn.protect_gui(ScreenGui)
    ScreenGui.Parent = CoreGui
elseif gethui then
    ScreenGui.Parent = gethui()
else
    ScreenGui.Parent = CoreGui
end

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.5, -(303 / 2), 0.5, -(263 / 2))
ImageLabel.Rotation = 0
ImageLabel.Size = UDim2.new(0, 303, 0, 263)
ImageLabel.Image = "rbxassetid://8429081004"
ImageLabel.ImageTransparency = 1

for Index = 1, 50, 2 do
    BlurEffect.Size = Index
    ImageLabel.ImageTransparency = ImageLabel.ImageTransparency - 0.1
    wait()
end

wait(.1)
ImageLabel:TweenPosition(UDim2.new(0.5, 342 / 1, 0.5, 263 / 2, Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.5))
wait(.1)

BlurEffect:Destroy()
ScreenGui:Destroy()


for i, v in next, Games do
    if i == game.GameId or i == game.PlaceId then
        loadstring(game:HttpGet(v))()
    end
end

VG.SendNotification("Warning", "RightControl or RightShift to toggle", "rbxassetid://8429081004", 5)
VG.SendNotification("Credits", "Toxic Mods screen thingy And Kiriot22 esp,IY for fly script inspiration,Staylin Save Settings,Felix for being sexy, E621 Anticheat bypass", "rbxassetid://8429081004", 5)
VG.SendNotification("Credits", "Some Credits may be missing please let me know if i missed one", "rbxassetid://8429081004", 5)
local function Copy()
    setclipboard("https://discord.gg/HUBfmJUA2H")
end
local Gang = Instance.new("BindableFunction")

function Gang.OnInvoke(v)
    if v == "Yes" then
        Copy()
        VG.SendNotification("Discord", "Discord Link Copying Sucessful", "rbxassetid://8429081004", 15)
    end
end
StarterGui:SetCore("SendNotification",{Title = "V.G Hub Discord",Text = "Copy to clipboard?",Duration = 5,Callback = Gang,Button1 = "Yes",Button2 = "No"})

local function Copy()
    setclipboard("https://www.youtube.com/channel/UCSdk562h1Sv-L3XhXac3MaQ")
end
local Uhhh = Instance.new("BindableFunction")

function Uhhh.OnInvoke(v)
    if v == "Yes" then
        Copy()
        VG.SendNotification("YT", "Copied Link Done", "rbxassetid://8429081004", 15)
    end
end
StarterGui:SetCore("SendNotification",{Title = "Do you want to Subscribe To DekuDimz?",Text = "Copy Youtube Channel Link to clipboard?",Duration = 50,Callback = Uhhh,Button1 = "Yes",Button2 = "No"})


print("Took ", tick() - StartTime, " To Load <3")
VG.MetalPipe(false)
