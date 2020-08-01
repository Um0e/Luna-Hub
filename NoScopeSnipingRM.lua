-- Work in progress. Very fucking buggy. 

local library = loadstring(game:HttpGet("https://pastebin.com/raw/eKwyeQa0", true))() 
local uwu = game:GetService("ReplicatedStorage").GunModules
local mouse = game.Players.LocalPlayer:GetMouse()
local MouseX, MouseY = mouse.X, mouse.Y

local tab1 = library:CreateTab("No Scope Sniping", true) 
local button = library:MakeButton(tab1,"Infinite Ammo",function(button)
    for i,v in pairs(uwu:GetChildren()) do
    if v.ClassName == "ModuleScript" then
        local v = require(v)
        v.ClipSize = math.huge
    end
end
end)
local button2 = library:MakeButton(tab1,"Fast Fire", function(button)
    for i,v in pairs(uwu:GetChildren()) do
        if v.ClassName == "ModuleScript" then
            local v = require(v)
            v.FireRate = 0.0000001
        end
    end
end)
local mousenoclick = false
game:GetService("UserInputService").InputBegan:connect(function(a)
if (a.UserInputType == Enum.UserInputType.MouseButton1) then
    mousenoclick = true
end
game:GetService("UserInputService").InputEnded:connect(function(a)
    if (a.UserInputType == Enum.UserInputType.MouseButton1) then
        mousenoclick = false
    end
end)

while wait() do
    if mousenoclick then
        mouse1press(mouseX, MouseY)
        wait(0.001)
        mouse1release(mouseX, MouseY)
    end
end
end)
local button2 = library:MakeButton(tab1, "Large Heads",function(button2)
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer then
            v.Character.Humanoid.HeadScale.Value = 8
        end
    end
end)
local button1 = library:MakeButton(tab1,"Destroy Library",function(button1)
    tab1:Destroy()
end)
