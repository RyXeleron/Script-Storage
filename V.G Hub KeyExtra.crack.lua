loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/Extras/Global'))()
local ServiceID = "vghub"
local PandaAuth = loadstring(game:HttpGet('https://raw.githubusercontent.com/RyXeleron/Script-Storage/main/PandaDev%20VG.lua'))()
local Random = false


local ScreenGui = Instance.new("ScreenGui")
local KeySystem = Instance.new("Frame")
local GetKey = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local KeyPress = Instance.new("TextButton")

ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

KeySystem.Name = "KeySystem"
KeySystem.Parent = ScreenGui
KeySystem.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KeySystem.BorderColor3 = Color3.fromRGB(255, 255, 255)
KeySystem.BorderSizePixel = 0
KeySystem.Position = UDim2.new(0.418891162, 0, 0.398996234, 0)
KeySystem.Selectable = true
KeySystem.Size = UDim2.new(0, 236, 0, 161)
KeySystem.Style = Enum.FrameStyle.RobloxRound

GetKey.Name = "GetKey"
GetKey.Parent = KeySystem
GetKey.BackgroundColor3 = Color3.fromRGB(122, 122, 122)
GetKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
GetKey.BorderSizePixel = 0
GetKey.Position = UDim2.new(-0.00177570921, 0, 0.583196402, 0)
GetKey.Size = UDim2.new(0, 94, 0, 24)
GetKey.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
GetKey.Font = Enum.Font.GrenzeGotisch
GetKey.Text = "Copy Key Link"
GetKey.TextColor3 = Color3.fromRGB(0, 0, 0)
GetKey.TextSize = 14.000

TextBox.Parent = KeySystem
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.185346439, 0, 0.421702892, 0)
TextBox.Size = UDim2.new(0, 152, 0, 24)
TextBox.SizeConstraint = Enum.SizeConstraint.RelativeXX
TextBox.Font = Enum.Font.LuckiestGuy
TextBox.Text = "KeyHere"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000
TextBox.TextStrokeTransparency = 0.140
TextBox.TextTransparency = 0.280

KeyPress.Name = "KeyPress"
KeyPress.Parent = KeySystem
KeyPress.BackgroundColor3 = Color3.fromRGB(122, 122, 122)
KeyPress.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyPress.BorderSizePixel = 0
KeyPress.Position = UDim2.new(0.5999192, 0, 0.595618784, 0)
KeyPress.Size = UDim2.new(0, 94, 0, 24)
KeyPress.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
KeyPress.Font = Enum.Font.GrenzeGotisch
KeyPress.Text = "Submit Key"
KeyPress.TextColor3 = Color3.fromRGB(0, 0, 0)
KeyPress.TextSize = 14.000

KeyPress.Activated:Connect(function()
    if PandaAuth:ValidateKey(ServiceID, TextBox.Text) then
        Random = true
        ScreenGui:Destroy()
        VG.SendNotification("Correct", "Thank you, have 8 hours worth of a key left enjoy the script", "", 10)
        KeySystem = false
    end
end)

GetKey.Activated:Connect(function()
    setclipboard(PandaAuth:GetLink(ServiceID))
    VG.SendNotification("Copied Key link", "Go Through it to finish it and support me", "", 10)
end)
repeat wait() until KeySystem == false
