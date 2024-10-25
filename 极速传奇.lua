
local Lib = loadstring(game:HttpGet("",true))()

local Win = Lib:CreateWindow("ah",1,nil,nil)--不显示😡😡😡😡

local LSTab,name = Win:CreateTab("主要功能",function() end)

local Autoexe = false

LSTab:CreateToggle("自动更改最大跳跃", false, function(state)
    Autoexe = state
    if Autoexe then
        while Autoexe do
            game:GetService("ReplicatedStorage").rEvents.changeSpeedJumpRemote:InvokeServer("changeJump",math.huge)
            wait()
            end
        end
end)
LSTab:CreateToggle("自动更改最大速度", false, function(state)
    Autoexe = state
    if Autoexe then
        while Autoexe do
            game:GetService("ReplicatedStorage").rEvents.changeSpeedJumpRemote:InvokeServer("changeSpeed",math.huge)
            wait()
            end
        end
end)
LSTab:CreateToggle("自动重生", false, function(state)
    Autoexe = state
    if Autoexe then
        while Autoexe do
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动进化所有宠物", false, function(state)
    Autoexe = state
    if Autoexe then
        while Autoexe do
            game.Replicatedstorage.rEvents.petEvolveEvent:FireServer("evolvePet", "all")
            wait()
            end
        end
end)
LSTab:CreateToggle("把所有环吸过来", false, function(state)
    Autoexe = state
    if Autoexe then
        while Autoexe do
            local children = workspace.Hoops:GetChildren()
            for i, child in ipairs(children) do
                if child.Name == "Hoop" then
                    child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
            wait()
        end
    end
end)
LSTab:CreateToggle("自动参加比赛", false, function(state)
    Autoexe = state
    if Autoexe then
        while Autoexe do
        game:GetService("ReplicatedStorage").rEvents.raceEvent:FireServer("joinRace")
            wait()
            end
        end
end)
local LSTab,name = Win:CreateTab("修改功能",function() end)
LSTab:CreateSlider("速度",1,999999,30,function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Steps.Value = arg
end)
LSTab:CreateTextbox("速度","修改速度",false,function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Steps.Value = arg
end)
LSTab:CreateSlider("重生",1,999999,30,function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value = arg
end)
LSTab:CreateTextbox("重生","修改重生",false,function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value = arg
end)
LSTab:CreateSlider("竞赛次数",1,999999,30,function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Races.Value = arg
end)
LSTab:CreateTextbox("竞赛次数","修改竞赛次数",false,function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Races.Value = arg
end)
LSTab:CreateSlider("环",1,999999,30,function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Hoops.Value = arg
end)
LSTab:CreateTextbox("环","修改环",false,function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Hoops.Value = arg
end)
LSTab:CreateSlider("宝石",1,999999,30,function(arg)
game:GetService("Players").LocalPlayer.Gems.Value = arg
end)
LSTab:CreateTextbox("宝石","修改宝石",false,function(arg)
game:GetService("Players").LocalPlayer.Gems.Value = arg
end)
LSTab:CreateSlider("重生乘数",1,999999,30,function(arg)
game:GetService("Players").LocalPlayer.rebirthMultiplier.Value = arg
end)
LSTab:CreateTextbox("重生乘数","修改重生乘数",false,function(arg)
game:GetService("Players").LocalPlayer.rebirthMultiplier.Value = arg
end)
LSTab:CreateSlider("水平跳跃乘数",1,999999,30,function(arg)
game:GetService("ReplicatedStorage").levelJumpMultiplier.Value = arg
end)
LSTab:CreateTextbox("水平跳跃乘数","修改水平跳跃乘数",false,function(arg)
game:GetService("ReplicatedStorage").levelJumpMultiplier.Value = arg
end)
LSTab:CreateSlider("水平速度乘数",1,999999,30,function(arg)
game:GetService("ReplicatedStorage").levelSpeedMultiplier.Value = arg
end)
LSTab:CreateTextbox("水平速度乘数","修改水平速度乘数",false,function(arg)
game:GetService("ReplicatedStorage").levelSpeedMultiplier.Value = arg
end)
LSTab:CreateSlider("宠物经验乘数",1,999999,30,function(arg)
game:GetService("ReplicatedStorage").petExpMultiplier.Value = arg
end)
LSTab:CreateTextbox("宠物经验乘数","修改宠物经验乘数",false,function(arg)
game:GetService("ReplicatedStorage").petExpMultiplier.Value = arg
end)
LSTab:CreateSlider("速度经验乘数",1,999999,30,function(arg)
game:GetService("ReplicatedStorage").stepsExpMultiplier.Value = arg
end)
LSTab:CreateTextbox("速度经验乘数","修改速度经验乘数",false,function(arg)
game:GetService("ReplicatedStorage").stepsExpMultiplier.Value = arg
end)
LSTab:CreateSlider("轨迹经验乘数",1,999999,30,function(arg)
game:GetService("ReplicatedStorage").trailExpMultiplier.Value = arg
end)
LSTab:CreateTextbox("轨迹经验乘数","轨迹经验跳跃乘数",false,function(arg)
game:GetService("ReplicatedStorage").trailExpMultiplier.Value = arg
end)
local LSTab,name = Win:CreateTab("球功能(城市)",function() end)

local AutoCityOrb = false

LSTab:CreateToggle("自动红球", false, function(state)
    AutoCityOrb = state
    if AutoCityOrb then
        while AutoCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","City")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动橙球", false, function(state)
    AutoCityOrb = state
    if AutoCityOrb then
        while AutoCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Orange Orb","City")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动蓝球", false, function(state)
    AutoCityOrb = state
    if AutoCityOrb then
        while AutoCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Blue Orb","City")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动黄球", false, function(state)
    AutoCityOrb = state
    if AutoCityOrb then
        while AutoCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Yellow Orb","City")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动宝石", false, function(state)
    AutoCityOrb = state
    if AutoCityOrb then
        while AutoCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Gem","City")
            wait()
            end
        end
end)

local LSTab,name = Win:CreateTab("球功能(雪城)",function() end)

local AutoSnowCityOrb = false

LSTab:CreateToggle("自动红球", false, function(state)
    AutoSnowCityOrb = state
    if AutoSnowCityOrb then
        while AutoSnowCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Snow City")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动橙球", false, function(state)
    AutoSnowCityOrb = state
    if AutoSnowCityOrb then
        while AutoSnowCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Orange Orb","Snow City")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动蓝球", false, function(state)
    AutoSnowCityOrb = state
    if AutoSnowCityOrb then
        while AutoSnowCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Blue Orb","Snow City")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动黄球", false, function(state)
    AutoSnowCityOrb = state
    if AutoSnowCityOrb then
        while AutoSnowCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Yellow Orb","Snow City")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动宝石", false, function(state)
    AutoSnowCityOrb = state
    if AutoSnowCityOrb then
        while AutoSnowCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Gem","Snow City")
            wait()
            end
        end
end)

local LSTab,name = Win:CreateTab("球功能(熔岩城)",function() end)

local AutoMagmaCityOrb = false

LSTab:CreateToggle("自动红球", false, function(state)
    AutoMagmaCityOrb = state
    if AutoMagmaCityOrb then
        while AutoMagmaCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动橙球", false, function(state)
    AutoMagmaCityOrb = state
    if AutoMagmaCityOrb then
        while AutoMagmaCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Orange Orb","Magma City")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动蓝球", false, function(state)
    AutoMagmaCityOrb = state
    if AutoMagmaCityOrb then
        while AutoMagmaCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Blue Orb","Magma City")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动黄球", false, function(state)
    AutoMagmaCityOrb = state
    if AutoMagmaCityOrb then
        while AutoMagmaCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Yellow Orb","Magma City")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动宝石", false, function(state)
    AutoMagmaCityOrb = state
    if AutoMagmaCityOrb then
        while AutoMagmaCityOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Gem","Magma City")
            wait()
            end
        end
end)

local LSTab,name = Win:CreateTab("球功能(沙漠)",function() end)

local AutoDesertOrb = false

LSTab:CreateToggle("自动红球", false, function(state)
    AutoDesertOrb = state
    if AutoDesertOrb then
        while AutoDesertOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Desert")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动橙球", false, function(state)
    AutoDesertOrb = state
    if AutoDesertOrb then
        while AutoDesertOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Orange Orb","Desert")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动蓝球", false, function(state)
    AutoDesertOrb = state
    if AutoDesertOrb then
        while AutoDesertOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Blue Orb","Desert")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动黄球", false, function(state)
    AutoDesertOrb = state
    if AutoDesertOrb then
        while AutoDesertOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Yellow Orb","Desert")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动宝石", false, function(state)
    AutoDesertOrb = state
    if AutoDesertOrb then
        while AutoDesertOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Gem","Desert")
            wait()
            end
        end
end)

local LSTab,name = Win:CreateTab("球功能(太空)",function() end)

local AutoSpaceOrb = false

LSTab:CreateToggle("自动红球", false, function(state)
    AutoSpaceOrb = state
    if AutoSpaceOrb then
        while AutoSpaceOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Space")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动橙球", false, function(state)
    AutoSpaceOrb = state
    if AutoSpaceOrb then
        while AutoSpaceOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Orange Orb","Space")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动蓝球", false, function(state)
    AutoSpaceOrb = state
    if AutoSpaceOrb then
        while AutoSpaceOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Blue Orb","Space")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动黄球", false, function(state)
    AutoSpaceOrb = state
    if AutoSpaceOrb then
        while AutoSpaceOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Yellow Orb","Space")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动宝石", false, function(state)
    AutoSpaceOrb = state
    if AutoSpaceOrb then
        while AutoSpaceOrb do
            game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Gem","Space")
            wait()
            end
        end
end)

local LSTab,name = Win:CreateTab("水晶功能",function() end)

local AutoCrystal = false

LSTab:CreateToggle("自动红色水晶", false, function(state)
    AutoCrystal = state
    if AutoCrystal then
        while AutoCrystal do
            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Red Crystal")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动紫色水晶", false, function(state)
    AutoCrystal = state
    if AutoCrystal then
        while AutoCrystal do
            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Purple Crystal")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动黄色水晶", false, function(state)
    AutoCrystal = state
    if AutoCrystal then
        while AutoCrystal do
            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Yellow Crystal")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动闪电水晶", false, function(state)
    AutoCrystal = state
    if AutoCrystal then
        while AutoCrystal do
            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Lightning Crystal")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动雪城水晶", false, function(state)
    AutoCrystal = state
    if AutoCrystal then
        while AutoCrystal do
            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Snow Crystal") 
            wait()
            end
        end
end)
LSTab:CreateToggle("自动炼狱水晶", false, function(state)
    AutoCrystal = state
    if AutoCrystal then
        while AutoCrystal do
            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Inferno Crystal")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动欧米茄水晶", false, function(state)
    AutoCrystal = state
    if AutoCrystal then
        while AutoCrystal do
            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Electro Legends Crystal")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动太空水晶", false, function(state)
    AutoCrystal = state
    if AutoCrystal then
        while AutoCrystal do
            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Space Crystal")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动外星人水晶", false, function(state)
    AutoCrystal = state
    if AutoCrystal then
        while AutoCrystal do
            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Alien Crystal")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动沙漠水晶", false, function(state)
    AutoCrystal = state
    if AutoCrystal then
        while AutoCrystal do
            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Desert Crystal")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动", false, function(state)
    AutoCrystal = state
    if AutoCrystal then
        while AutoCrystal do
            
            wait()
            end
        end
end)

local LSTab,name = Win:CreateTab("购买功能",function() end)

local AutoBuy = false

LSTab:CreateToggle("自动购买超速小兔", false, function(state)
    AutoBuy = state
    if AutoBuy then
        while AutoBuy do
            game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild("Ultimate Overdrive Bunny"))
            wait()
            end
        end
end)
LSTab:CreateToggle("自动购买永恒星云龙", false, function(state)
    AutoBuy = state
    if AutoBuy then
        while AutoBuy do
            game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild("Eternal Nebula Dragon"))
            wait()
            end
        end
end)
LSTab:CreateToggle("自动购买影锋小猫", false, function(state)
    AutoBuy = state
    if AutoBuy then
        while AutoBuy do
            game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild("Shadows Edge Kitty"))
            wait()
            end
        end
end)
LSTab:CreateToggle("自动购买融合小狗", false, function(state)
    AutoBuy = state
    if AutoBuy then
        while AutoBuy do
            game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild("Soul Fusion Dog"))
            wait()
            end
        end
end)
LSTab:CreateToggle("自动购买黑暗灵魂鸟", false, function(state)
    AutoBuy = state
    if AutoBuy then
        while AutoBuy do
            game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild("Dark Soul Birdie"))
            wait()
            end
        end
end)
LSTab:CreateToggle("自动购买超音速飞马", false, function(state)
    AutoBuy = state
    if AutoBuy then
        while AutoBuy do
            game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild("Hypersonic Pegasus"))
            wait()
            end
        end
end)
LSTab:CreateToggle("自动购买第一轨迹", false, function(state)
    AutoBuy = state
    if AutoBuy then
        while AutoBuy do
            game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild("1st Trail"))
            wait()
            end
        end
end)
--[[
--Returns UI
--Tab:CreateButton(name,function)
	
Tab:CreateButton("Button ",function()
	print(i,name)
	end)


--Returns bool,UI
--Tab:CreateToggle(name,default,function)
	
Tab:CreateToggle("Toggle ",false,function(t)
	print(i,name,t)
	end)


--Returns value,UI
--Tab:CreateSlider(name,min,max,default,function)

local max = math.random(500,5000)
Tab:CreateSlider("Slider ",50,max,max/math.random(2,6),function(v)
	print(i,name,v)
	end)


--Returns two userdata,UI
--Tab:CreateDropdown(name,{table,string},visible,function)

Tab:CreateDropdown("Dropdown ", {{
	"Named", {}},"hello","he","ah","eh","yw"
},false,function(c,f)
	print(i,name,c,f)
	end)


--Returns TextBox for FocusLost or Stretchability
local Textbox = Tab:CreateTextbox("TextBox ","FFlag")

Textbox:GetPropertyChangedSignal("Text"):Connect(function()
	local self = Textbox
	print(self.Text)
	end)


end
end
]]
