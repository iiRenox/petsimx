local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("NoName Scripts v1.4", "Ocean")
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Settings")
wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "NoName Scripts";
Text = "Thanks for using this Script ";
Duration = "10";
})
Section:NewSlider("WalkSpeed", "Slide to change WalkSpeed", 250, 16, function(s) -- 250 (MaxValue) | 16 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)Section:NewSlider("JumpPower", "Slide to change JumpPower", 250, 50, function(s) -- 250 (MaxValue) | 50 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
Section:NewButton("Noclip E", "Press E to Enable Noclip", function()
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "e" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "Noclip";
Text = "Press E To Enable Noclip";
Duration = "10";
})
end)
local Tab = Window:NewTab("Teleportation")
local Section = Tab:NewSection("Where do you want to go?")
Section:NewTextBox("Player Teleportation", "Put Player name in", function(txt)
	local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local pl2 = ""
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Running)
wait(0.1)
end)
Section:NewButton("Shop", "Teleportation to Shop", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(258, 97, 238)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Running)
wait(0.1)
pl.CFrame = location   
end)
Section:NewButton("Forest", "Teleportation to Forest", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-388, 93, 238)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Running)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Beach", "Teleportation to Beach", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-717, 93, 238)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Running)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Mine", "Teleportation to Mine", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1094, 93, 238)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Running)
wait(0.1)
pl.CFrame = location
end)Section:NewButton("Winter", "Teleportation to Winter", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1457, 93, 238)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Running)
wait(0.1)
pl.CFrame = location
end)Section:NewButton("Glacier", "Teleportation to Glacier", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-1811, 92, 268)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Running)
wait(0.1)
pl.CFrame = location
end)Section:NewButton("Desert", "Teleportation to Desert", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-2177, 93, 238)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Running)
wait(0.1)
pl.CFrame = location
end)
Section:NewButton("Volcano", "Teleportation to Volcano", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-2485, 93, 235)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Running)
wait(0.1)
pl.CFrame = location
end)Section:NewButton("Cannon", "Teleportation to Cannon", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-2802, 100, 232)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Running)
wait(0.1)
pl.CFrame = location
end)Section:NewButton("Dominus Egg", "Teleportation to Dominus Egg", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(469, 116, 237)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Running)
wait(0.1)
pl.CFrame = location
end)
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Game")
Section:NewButton("AutoFarm", "OP Auto Farm", function()
getgenv().speed=150
for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do v:Disable() end
loadstring(game:HttpGet("https://raw.githubusercontent.com/inceldom/scrip/main/petsimsex",true))()
end)
Section:NewButton("Buy Dominus Egg", "U Need 1B to Use it", function()
local args = {
    [1] = {
        [1] = "Dominus Egg",
        [2] = false}
}

workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))

end)
Section:NewKeybind("Toggle UI F", "Press F to Toggle the UI", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Script by ii_renox / UI by xHeptc / ID by naypramx")
