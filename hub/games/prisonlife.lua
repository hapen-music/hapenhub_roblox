if game.PlaceId == 155615604 then
local gui = Instance.new("ScreenGui")
local ui = Instance.new("Frame")
local logo = Instance.new("ImageLabel")
local exit = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local mini = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local killaa = Instance.new("TextButton")
local guns = Instance.new("TextButton")
local superpunch = Instance.new("TextButton")
local arrestcrims = Instance.new("TextButton")
local spinhead = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local killaura = false

gui.Name = "gui"
gui.Parent = game:WaitForChild("CoreGui")
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ui.Name = "ui"
ui.Parent = gui
ui.BackgroundColor3 = Color3.fromRGB(139, 195, 235)
ui.BorderSizePixel = 0
ui.Position = UDim2.new(0.0584537871, 0, 0.492178082, 0)
ui.Size = UDim2.new(0, 307, 0, 183)
ui.Draggable = true
ui.Active = true
ui.Selectable = true

logo.Name = "logo"
logo.Parent = ui
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BorderSizePixel = 0
logo.Position = UDim2.new(0.0325732902, 0, 0.0437158458, 0)
logo.Size = UDim2.new(0, 34, 0, 32)
logo.Image = "http://www.roblox.com/asset/?id=7504265470"

exit.Name = "exit"
exit.Parent = ui
exit.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
exit.Position = UDim2.new(0.918566823, 0, 0.0928961784, 0)
exit.Size = UDim2.new(0, 13, 0, 13)
exit.Font = Enum.Font.SourceSans
exit.Text = ""
exit.TextColor3 = Color3.fromRGB(0, 0, 0)
exit.TextSize = 14.000
exit.MouseButton1Click:Connect(function()
	game.CoreGui.gui:Destroy()
end)

UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = exit

mini.Name = "mini"
mini.Parent = ui
mini.BackgroundColor3 = Color3.fromRGB(251, 255, 6)
mini.Position = UDim2.new(0.850162923, 0, 0.0928961784, 0)
mini.Size = UDim2.new(0, 13, 0, 13)
mini.Font = Enum.Font.SourceSans
mini.Text = ""
mini.TextColor3 = Color3.fromRGB(0, 0, 0)
mini.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 9)
UICorner_2.Parent = mini

killaa.Name = "killaa"
killaa.Parent = ui
killaa.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
killaa.Position = UDim2.new(0.0325732902, 0, 0.284152985, 0)
killaa.Size = UDim2.new(0, 77, 0, 32)
killaa.Font = Enum.Font.SourceSans
killaa.Text = "Kill Aura: OFF"
killaa.TextColor3 = Color3.fromRGB(0, 0, 0)
killaa.TextSize = 14.000
killaa.MouseButton1Click:Connect(function()
	if killaura == false then
		killaura = true
		killaa.Text = 'Kill Aura: ON'
	else
		killaura = false
		killaa.Text = 'Kill Aura: OFF'
	end	
end)

guns.Name = "guns"
guns.Parent = ui
guns.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
guns.Position = UDim2.new(0.309446245, 0, 0.284152985, 0)
guns.Size = UDim2.new(0, 77, 0, 32)
guns.Font = Enum.Font.SourceSans
guns.Text = "Get All Guns"
guns.TextColor3 = Color3.fromRGB(0, 0, 0)
guns.TextSize = 14.000
guns.MouseButton1Click:Connect(function()
	for i,v in pairs(game.Workspace.Prison_ITEMS.giver:GetChildren()) do
		game.Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
	end
end)

superpunch.Name = "superpunch"
superpunch.Parent = ui
superpunch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
superpunch.Position = UDim2.new(0.60260582, 0, 0.284152985, 0)
superpunch.Size = UDim2.new(0, 77, 0, 32)
superpunch.Font = Enum.Font.SourceSans
superpunch.Text = "SuperPunch"
superpunch.TextColor3 = Color3.fromRGB(0, 0, 0)
superpunch.TextSize = 14.000
superpunch.MouseButton1Click:Connect(function()
	local mainRemotes = game.ReplicatedStorage
	local meleeRemote = mainRemotes['meleeEvent']
	local mouse = game.Players.LocalPlayer:GetMouse()
	local punching = false
	local cooldown = false
	mouse.KeyDown:Connect(function(key)
		if cooldown == false then
			if key:lower() == "f" then
				cooldown = true
				local part = Instance.new("Part", game.Players.LocalPlayer.Character)
				part.Transparency = 1
				part.Size = Vector3.new(5, 2, 3)
				part.CanCollide = false
				local w1 = Instance.new("Weld", part)
				w1.Part0 = game.Players.LocalPlayer.Character.Torso
				w1.Part1 = part
				w1.C1 = CFrame.new(0,0,2)
				part.Touched:connect(function(hit)
					if game.Players:FindFirstChild(hit.Parent.Name) then
						local plr = game.Players:FindFirstChild(hit.Parent.Name) 
						if plr.Name ~= game.Players.LocalPlayer.Name then
							part:Destroy() 
							for i = 1,100 do
								meleeRemote:FireServer(plr)
							end
						end
					end
				end)
				wait(1)
				cooldown = false
				part:Destroy()
			end
		end
	end)
end)

arrestcrims.Name = "arrestcrims"
arrestcrims.Parent = ui
arrestcrims.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
arrestcrims.Position = UDim2.new(0.0325732231, 0, 0.51912564, 0)
arrestcrims.Size = UDim2.new(0, 77, 0, 32)
arrestcrims.Font = Enum.Font.SourceSans
arrestcrims.Text = "Arrest Crims"
arrestcrims.TextColor3 = Color3.fromRGB(0, 0, 0)
arrestcrims.TextSize = 14.000
arrestcrims.MouseButton1Click:Connect(function()
	local Player = game.Players.LocalPlayer
	local cpos = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
		if v.Name ~= Player.Name then
			local i = 10
			repeat
				wait()
				i = i-1
				game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
				Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
			until i == 0
		end
	end
	Player.Character.HumanoidRootPart.CFrame = cpos
end)

spinhead.Name = "spinhead"
spinhead.Parent = ui
spinhead.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
spinhead.Position = UDim2.new(0.309446186, 0, 0.51912564, 0)
spinhead.Size = UDim2.new(0, 77, 0, 32)
spinhead.Font = Enum.Font.SourceSans
spinhead.Text = "Spin Head"
spinhead.TextColor3 = Color3.fromRGB(0, 0, 0)
spinhead.TextSize = 14.000
spinhead.MouseButton1Click:Connect(function()
	_G.settings = {head_spin = true, spin_per_sec = 1}
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/hapen-music/spin_head/main/dontedit.robloxlua.lua'),true))()
end)

UICorner_3.Parent = ui

while true do
	wait(0.1)
	if killaura==true then
		for i, plr in pairs(game.Players:GetChildren()) do
			if plr.Name ~= game.Players.LocalPlayer.Name then
				for i = 1, 10 do
					game.ReplicatedStorage.meleeEvent:FireServer(plr)
				end
			end
		end
	end       
end
end
