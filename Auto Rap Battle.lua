

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local Player1Button = Instance.new("TextButton")
local Player2Button = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")



ScreenGui.Parent = game.CoreGui

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BackgroundTransparency = 1.000
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.372842371, 0, 0.276025236, 0)
Frame.Size = UDim2.new(0, 274, 0, 216)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(20, 20, 20)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120
Frame.Active = true
Frame.Visible = true
Frame.Draggable = true

Player1Button.Name = "Player1Button"
Player1Button.Parent = Frame
Player1Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Player1Button.BorderSizePixel = 0
Player1Button.Position = UDim2.new(0.135036498, 0, 0.254273504, 0)
Player1Button.Size = UDim2.new(0, 200, 0, 50)
Player1Button.Font = Enum.Font.Cartoon
Player1Button.Text = ""
Player1Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Player1Button.TextSize = 20.000
Player1Button.TextWrapped = true

Player2Button.Name = "Player2Button"
Player2Button.Parent = Frame
Player2Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Player2Button.BorderSizePixel = 0
Player2Button.Position = UDim2.new(0.135036498, 0, 0.606125414, 0)
Player2Button.Size = UDim2.new(0, 200, 0, 50)
Player2Button.Font = Enum.Font.Cartoon
Player2Button.Text = ""
Player2Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Player2Button.TextSize = 20.000
Player2Button.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 274, 0, 34)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Auto Rap Battle VOTE"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0437955186, 0, 0.875, 0)
TextLabel_2.Size = UDim2.new(0, 80, 0, 27)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Made by Toxic Mods"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000


Player1Button.MouseButton1Down:connect(function()
for i = 0,1 do 
   game.Workspace.Votes:FireServer(false,"p1")
   game:GetService("RunService").Heartbeat:Wait()
end
end)
 
Player2Button.MouseButton1Down:connect(function()
for i = 0,1 do 
   game.Workspace.Votes:FireServer(false,"p2")
   game:GetService("RunService").Heartbeat:Wait()
end
end)
 
while true do
Player2Button.Text = game.Workspace.RapBattles.Rappers.player2.Value
Player1Button.Text = game.Workspace.RapBattles.Rappers.player1.Value
wait(0.1)
end