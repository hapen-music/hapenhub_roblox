loadstring(game:HttpGet('https://raw.githubusercontent.com/hapen-music/hapenhub_roblox/main/hub/ver.lua', true))()----importer version of github

if _G.ver=='1.0.0' then
local loader = Instance.new("ScreenGui")
local ui = Instance.new("Frame")
local logo = Instance.new("ImageLabel")
local uic = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local text = Instance.new("TextLabel")

-----------exploit detector

_G.Exploit='__';

if identifyexecutor then
	_G.Exploit=identifyexecutor();
end;

local listExploits = {
	krnl = "Krnl",
	comet = "Comet",
	synapse_x = "Synapse X",
	sentinel = "Sentinel"
};

---------------------------------


--------list game

local listGame = {
	prison_life = 155615604
};

--------------

loader.Name = "loader"
loader.Parent = game:WaitForChild("CoreGui")
loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ui.Name = "ui"
ui.Parent = loader
ui.BackgroundColor3 = Color3.fromRGB(139, 195, 235)
ui.BorderSizePixel = 0
ui.Position = UDim2.new(0.519798875, 0, 0.389891684, 0)
ui.Size = UDim2.new(0, 183, 0, 219)

logo.Name = "logo"
logo.Parent = ui
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BorderSizePixel = 0
logo.Position = UDim2.new(0.153379336, 0, 0.0937944502, 0)
logo.Size = UDim2.new(0, 125, 0, 125)
logo.Image = "http://www.roblox.com/asset/?id=7504265470"

uic.Name = "uic"
uic.Parent = ui

title.Name = "title"
title.Parent = ui
title.BackgroundColor3 = Color3.fromRGB(139, 195, 235)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.158469945, 0, 0.661276877, 0)
title.Size = UDim2.new(0, 125, 0, 35)
title.Font = Enum.Font.SourceSans
title.Text = "HapEN"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextSize = 19.000

text.Name = "text"
text.Parent = ui
text.BackgroundColor3 = Color3.fromRGB(139, 195, 235)
text.BorderSizePixel = 0
text.Position = UDim2.new(0.153005466, 0, 0.81196183, 0)
text.Size = UDim2.new(0, 125, 0, 35)
text.Font = Enum.Font.SourceSans
text.Text = "Loading Exploit."
text.TextColor3 = Color3.fromRGB(0, 0, 0)
text.TextSize = 15.000

wait(0.92)

text.Text = "Loading Exploit.."

wait(0.92)

text.Text = "Loading Exploit..."

wait(0.92)

text.Text = "Loading Exploit."

wait(0.92)

text.Text = "Loading Exploit.."

wait(0.92)

if _G.Exploit == listExploits.krnl then
	text.Text = "Loaded Exploit! krnl"
elseif _G.Exploit == listExploits.comet then
	text.Text = "Loaded Exploit! Comet"
elseif _G.Exploit == listExploits.synapse_x then
	text.Text = "Loaded Exploit! Synapse X"
elseif _G.Exploit == listExploits.sentinel then
	text.Text = "Loaded Exploit! Sentinel"
else
	text.Text = "Opps... Your Exploit is not supported."
	wait(1)
	game.CoreGui.loader:Destroy()
end

wait(1)

text.Text = "Loading Game."

wait(0.92)

text.Text = "Loading Game.."

wait(0.92)

text.Text = "Loading Game..."

wait(0.92)

text.Text = "Loading Game."

wait(0.92)

text.Text = "Loading Game.."

wait(0.92)

text.Text = "Loading Game..."

wait(0.92)
	
if game.PlaceId == listGame.prison_life then
	text.Text = "Game Loaded! Prison Life"
	
	wait(1)
	
	game.StarterGui:SetCore('SendNotification', {
		Title = 'HapEN Hub';
		Text = 'Loaded Gui!\nEnjoy :)'
	})
	
	loadstring(game:HttpGet('https://raw.githubusercontent.com/hapen-music/hapenhub_roblox/main/hub/games/prisonlife.lua', true))()
else
	text.Text = "Game Not Supported."
	wait(1)
	game.CoreGui.loader:Destroy()
end
	
wait(0.92)
game.CoreGui.loader:Destroy()
end
