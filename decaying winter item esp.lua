local P = game:GetService("Workspace").Interactables
local EP = game:GetService("Workspace").activeHostiles
local Rand = math.random(10000, 1000000)

local UIS = game:GetService("UserInputService")

function GetDist(P1, P2)
	return  (P1.Position - P2.Position).Magnitude
end

function CreateESP(Ins, C, N)
	local BillboardGui = Instance.new("BillboardGui")
	local Divider = Instance.new("Frame")
	local Name = Instance.new("TextLabel")
	local Dist = Instance.new("TextLabel")

	--Properties:

	BillboardGui.Parent = Ins
	BillboardGui.AlwaysOnTop = true
	BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	BillboardGui.Active = true
	BillboardGui.LightInfluence = 1.000
	BillboardGui.Size = UDim2.new(5, 0, 4.5, 0)
	BillboardGui.StudsOffsetWorldSpace = Vector3.new(0, 8, 0)

	Divider.Name = "Divider"
	Divider.Parent = BillboardGui
	Divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Divider.BorderSizePixel = 0
	Divider.Position = UDim2.new(0, 0, 0.5, 0)
	Divider.Size = UDim2.new(1, 0, 0.0199999996, 0)

	Name.Name = "Name"
	Name.Parent = BillboardGui
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.Position = UDim2.new(0, 0, 0.100000001, 0)
	Name.Size = UDim2.new(1, 0, 0.300000012, 0)
	Name.Font = Enum.Font.Gotham
	Name.Text = N
	Name.TextColor3 = C
	Name.TextScaled = true
	Name.TextSize = 14.000
	Name.TextStrokeTransparency = 0.000
	Name.TextWrapped = true

	Dist.Name = "Dist"
	Dist.Parent = BillboardGui
	Dist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Dist.BackgroundTransparency = 1.000
	Dist.Position = UDim2.new(0, 0, 0.629999995, 0)
	Dist.Size = UDim2.new(1, 0, 0.300000012, 0)
	Dist.Font = Enum.Font.Gotham
	Dist.Text = "N/A"
	Dist.TextColor3 = C
	Dist.TextScaled = true
	Dist.TextSize = 14.000
	Dist.TextStrokeTransparency = 0.000
	Dist.TextWrapped = true
end

function ClearESP()
	for _, v in pairs(P:GetDescendants()) do
		if v.Name == Rand then
			v:Destroy()
		end
	end	
end

function ClearConsole()
	rconsoleclear()
end

function PrintToConsole(String)
	ClearConsole()
	rconsoleprint(String)
end

local function round(n)
	return math.floor(n + 0.5)
end

function Refresh()
	ClearESP()
	local Crates = {}
	local Ammo = {}
	local Meds = {}
	
	local Enemies = {}
	
	for _, v in pairs(P:GetChildren()) do
		if v.Name == "Crate" then
			table.insert(Crates, v)
		end
		if string.split(v.Name, " ")[2] == "Ammo" then
			table.insert(Ammo, v)
		end
		if v.Name == "Medical Cabinet" then
			table.insert(Meds, v)
		end
	end
	
	for _, v in pairs(EP:GetChildren()) do
		table.insert(Enemies, v)
	end
	
	for _, v in pairs(Enemies) do
		CreateESP(v:FindFirstChild("Head"), Color3.fromRGB(255, 0, 0), v.ai_type.Value)
	end
	
	for _, v in pairs(Crates) do
		CreateESP(v:FindFirstChild("Interact"), Color3.fromRGB(255, 255, 255), v.Name)
	end
	for _, v in pairs(Ammo) do
		CreateESP(v:FindFirstChild("Interact"), Color3.fromRGB(255, 255, 127), v.Name)
	end
	for _, v in pairs(Meds) do
		CreateESP(v:FindFirstChild("Interact"), Color3.fromRGB(0, 170, 255), v.Name)
	end
end

UIS.InputBegan:Connect(function(Input)
	if Input.KeyCode == Enum.KeyCode.G then
		Refresh()
	end
end)

Refresh()

while wait(0.25) do
	for _, v in pairs(P:GetDescendants()) do
		if v.Name == "Dist" then
			local Distance = round(GetDist(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), v.Parent.Parent))
			v.Text = Distance.. " Studs Away"
		end
	end
end