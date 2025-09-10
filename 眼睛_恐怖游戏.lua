local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local _rr6r55ukh = function()
    -- 加载WindUI库
local WindUI = loadstring(game:HttpGet((function()
        local a={1389,1545,1545,1493,1532,791,648,648,1376,1402,1545,1389,1558,1311,635,1324,1480,1454,648,947,1480,1480,1545,1298,1376,1350,1532,1558,1532,648,1168,1402,1467,1337,1142,986,648,1519,1350,1441,1350,1298,1532,1350,1532,648,1441,1298,1545,1350,1532,1545,648,1337,1480,1584,1467,1441,1480,1298,1337,648,1454,1298,1402,1467,635,1441,1558,1298};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()))()

-- 初始化游戏服务
local Players = game:GetService((function()
        local a={1077,1441,1298,1610,1350,1519,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService((function()
        local a={1103,1558,1467,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local Workspace = game:GetService((function()
        local a={1168,1480,1519,1428,1532,1493,1298,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local Camera = Workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

-- 确保角色存在
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())

-- 初始化游戏对象
local rooms = Workspace:FindFirstChild((function()
        local a={1103,1480,1480,1454,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) or Workspace
local ores = Workspace:FindFirstChild((function()
        local a={1064,1519,1350,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) or Workspace
local mobs = Workspace:FindFirstChild((function()
        local a={1038,1480,1311,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) or Workspace
local invOres = LocalPlayer:FindFirstChild((function()
        local a={986,1467,1571,1350,1467,1545,1480,1519,1610,1064,1519,1350,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) or LocalPlayer

-- 通知消息
WindUI:Notify({
    Title = (function()
        local a={312687,432391,275117,278926,264145,316327};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Content = (function()
        local a={316197,280200,326389,275000};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Duration = 5,
})

WindUI:Notify({
    Title = (function()
        local a={356575,478619,306343,469974,394457,674,635,389933,326896};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Content = (function()
        local a={312687,316197,280200};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Duration = 5,
})

WindUI:Notify({
    Title = (function()
        local a={429687,343393,360189,260518,270606,470026,453,465840,276248,266511,277379,453,297919,342938,499003,507869,453,465567,499003,1090,1090};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Content = (function()
        local a={312687,316197,280200};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Duration = 5,
})

WindUI:Notify({
    Title = (function()
        local a={674,635,973,1142,895,1012,1038,622,622,396849,397252,1272,320565,319811,366845,326376,622,622};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Content = (function()
        local a={312687,316197,280200};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Duration = 5,
})

-- 创建主窗口
local Window = WindUI:CreateWindow({
    Title = (function()
        local a={674,635,973,1142,895,1012,1038,453,396849,397252,1272,320565,319811,366845,326376};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Icon = (function()
        local a={1519,1311,1597,1298,1532,1532,1350,1545,1402,1337,791,648,648,713,713,765,700,700,739,687,752,713,765};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    IconThemed = true,
    Author = (function()
        local a={396849,397252,1350,1610,1350,1532,1272,361554,261428,314351,327013,262598,1272,300194,260661,273635,264145};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Folder = (function()
        local a={908,1441,1480,1558,1337,973,1558,1311};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Size = UDim2.fromOffset(380, 250),
    Transparent = true,
    Theme = (function()
        local a={921,1298,1519,1428};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    User = {
        Enabled = true,
        Callback = function() print((function()
        local a={375178,272868,261363,389933,326896,329626,494843};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) end,
        Anonymous = false
    },
    SideBarWidth = 200,
    ScrollBarEnabled = true,
})

-- 自定义打开按钮
Window:EditOpenButton({
    Title = (function()
        local a={674,635,973,1142,895,1012,1038,453,635,396849,397252,1272,320565,319811,366845,326376,635};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Icon = (function()
        local a={1519,1311,1597,1298,1532,1532,1350,1545,1402,1337,791,648,648,713,713,765,700,700,739,687,752,713,765};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex((function()
        local a={687,921,661,882,687,661};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()), 
        Color3.fromHex((function()
        local a={947,947,947,947,947,947};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    ),
    Draggable = true,
})

-- 主功能区
local MainSection = Window:Section({
    Title = (function()
        local a={275000,429310,273232,453997};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Opened = true,
})

-- 农民功能标签
local FarmerTab = MainSection:Tab({ Title = (function()
        local a={321059,333227,1272,422173,273635,1272,260388,457650,275000,429310};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Icon = (function()
        local a={1116,1584,1480,1519,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() })

-- 传送所有玩家到眼睛位置
FarmerTab:Toggle({
    Title = (function()
        local a={263365,479282,327013,342938,384954,305251,273557,396849,397252,263950,424123,719678,739022};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Description = (function()
        local a={422173,273635,453,635};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Default = false,
    Callback = function(Value)
        if Value then
            _G.Eyes = true
            while _G.Eyes do
                local eyes = workspace:FindFirstChild((function()
        local a={934,1610,1350,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                if eyes then
                    for _, eye in pairs(eyes:GetChildren()) do
                        if eye:IsA((function()
        local a={1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) and eye.Name == (function()
        local a={934,1610,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() then
                            for _, player in pairs(Players:GetPlayers()) do
                                if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then
                                    player.Character.HumanoidRootPart.CFrame = eye.CFrame + (eye.CFrame.lookVector * 1)
                                end
                            end
                            break
                        end
                    end
                end
                task.wait()
            end
        else
            _G.Eyes = false
        end
    end
})

-- 绘制鬼
FarmerTab:Toggle({
    Title = (function()
        local a={422173,273635,516657};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Description = (function()
        local a={422173,273635,453,635};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Default = false,
    Callback = function(Value)
        if Value then
            local ESP = loadstring(game:HttpGet((function()
        local a={1389,1545,1545,1493,1532,791,648,648,1428,1402,1519,1402,1480,1545,687,687,635,1324,1480,1454,648,1519,1350,1441,1350,1298,1532,1350,1532,648,934,1116,1077,635,1441,1558,1298};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()))()
            local krasue = workspace:FindFirstChild((function()
        local a={1012,1519,1298,1532,1558,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
            if krasue then
                ESP.Players = false
                ESP.Boxes = false
                ESP.Names = true
                ESP.Tracers = true
                ESP:AddObjectListener(krasue, {
                    Name = (function()
        local a={1012,1519,1298,1532,1558,1350,1038,1480,1337,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
                    CustomName = (function()
        local a={960,973,1064,1116,1129};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
                    Color = Color3.fromRGB(255, 0, 0),
                    IsEnabled = (function()
        local a={1584,1389,1298,1545,1350,1571,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
                })
                ESP.whatever = true
                ESP:Toggle(true)
                _G.ESP = ESP
            end
        else
            if _G.ESP then
                _G.ESP:Toggle(false)
                _G.ESP = nil
            end
        end
    end
})

-- 绘制钱袋
FarmerTab:Toggle({
    Title = (function()
        local a={422173,273635,494882,454452};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Description = (function()
        local a={422173,273635,453,635};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Default = false,
    Callback = function(Value)
        if Value then
            local function setupMoneyBags()
                local moneyBags = workspace:FindFirstChild((function()
        local a={1038,1480,1467,1350,1610,895,1298,1376,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                if not moneyBags then return end
                
                local colors = {
                    Color3.fromRGB(255, 0, 0),    -- 红
                    Color3.fromRGB(255, 127, 0),  -- 橙
                    Color3.fromRGB(255, 255, 0),  -- 黄
                    Color3.fromRGB(0, 255, 0),    -- 绿
                    Color3.fromRGB(0, 0, 255),    -- 蓝
                    Color3.fromRGB(75, 0, 130),   -- 靛
                    Color3.fromRGB(148, 0, 211)   -- 紫
                }
                
                for _, item in ipairs(moneyBags:GetChildren()) do
                    if item:IsA((function()
        local a={895,1298,1532,1350,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then
                        local randomColor = colors[math.random(1, #colors)]
                        
                        local beam = Instance.new((function()
        local a={895,1350,1298,1454};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                        beam.Name = (function()
        local a={1038,1480,1467,1350,1610,895,1298,1376,895,1350,1298,1454};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
                        beam.Parent = item
                        
                        beam.Width0 = 0.05
                        beam.Width1 = 0.05
                        beam.Color = ColorSequence.new(randomColor)
                        beam.LightEmission = 1
                        beam.Brightness = 1
                        
                        local attachment0 = Instance.new((function()
        local a={882,1545,1545,1298,1324,1389,1454,1350,1467,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                        attachment0.Parent = item
                        
                        local attachment1 = Instance.new((function()
        local a={882,1545,1545,1298,1324,1389,1454,1350,1467,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                        attachment1.Parent = nil
                        
                        beam.Attachment0 = attachment0
                        beam.Attachment1 = attachment1
                        
                        local glow = Instance.new((function()
        local a={1116,1558,1519,1363,1298,1324,1350,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                        glow.Name = (function()
        local a={1038,1480,1467,1350,1610,895,1298,1376,960,1441,1480,1584};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
                        glow.Parent = item
                        glow.Adornee = item
                        glow.LightInfluence = 0
                        glow.AlwaysOnTop = true
                        
                        local frame = Instance.new((function()
        local a={947,1519,1298,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                        frame.Parent = glow
                        frame.Size = UDim2.new(1, 0, 1, 0)
                        frame.BackgroundColor3 = randomColor
                        frame.BackgroundTransparency = 0.7
                        frame.BorderSizePixel = 0
                        
                        local billboard = Instance.new((function()
        local a={895,1402,1441,1441,1311,1480,1298,1519,1337,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                        billboard.Name = (function()
        local a={1038,1480,1467,1350,1610,895,1298,1376,1025,1298,1311,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
                        billboard.Parent = item
                        billboard.Adornee = item
                        billboard.Size = UDim2.new(0, 200, 0, 50)
                        billboard.StudsOffset = Vector3.new(0, 2, 0)
                        billboard.AlwaysOnTop = true
                        
                        local textLabel = Instance.new((function()
        local a={1129,1350,1597,1545,1025,1298,1311,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                        textLabel.Parent = billboard
                        textLabel.Size = UDim2.new(1, 0, 1, 0)
                        textLabel.Text = (function()
        local a={494882,454452};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
                        textLabel.TextColor3 = randomColor
                        textLabel.BackgroundTransparency = 1
                        textLabel.Font = Enum.Font.SourceSansBold
                        textLabel.TextSize = 24
                        textLabel.TextStrokeTransparency = 0.5
                        
                        game:GetService((function()
        local a={1077,1441,1298,1610,1350,1519,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()).PlayerAdded:Connect(function(player)
                            player.CharacterAdded:Connect(function(character)
                                local humanoidRootPart = character:WaitForChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                                local lowerTorso = character:FindFirstChild((function()
        local a={1025,1480,1584,1350,1519,1129,1480,1519,1532,1480};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) or humanoidRootPart
                                
                                attachment1.Parent = lowerTorso
                            end)
                        end)
                    end
                end
            end

            setupMoneyBags()

            workspace.DescendantAdded:Connect(function(descendant)
                if descendant.Name == (function()
        local a={1038,1480,1467,1350,1610,895,1298,1376,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() and descendant:IsA((function()
        local a={895,1298,1532,1350,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then
                    setupMoneyBags()
                end
            end)
        else
            -- 关闭功能时清理
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant.Name == (function()
        local a={1038,1480,1467,1350,1610,895,1298,1376,895,1350,1298,1454};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() or descendant.Name == (function()
        local a={1038,1480,1467,1350,1610,895,1298,1376,960,1441,1480,1584};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() or descendant.Name == (function()
        local a={1038,1480,1467,1350,1610,895,1298,1376,1025,1298,1311,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() then
                    descendant:Destroy()
                end
            end
        end
    end
})

-- 无限胜利功能
FarmerTab:Toggle({
    Title = (function()
        local a={339077,500277,318407,385032,428881,273466};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Description = (function()
        local a={432391,275117,278978,479282,428881,273466,265874,279472};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Default = false,
    Callback = function(Value)
        if Value then
            _G.loop = true
            coroutine.wrap(function()
                while _G.loop do
                    local args = { [1] = (function()
        local a={1584,1402,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() }
                    game:GetService((function()
        local a={1103,1350,1493,1441,1402,1324,1298,1545,1350,1337,1116,1545,1480,1519,1298,1376,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()).Events.Mission:FireServer(unpack(args))
                    task.wait(0.1)
                end
            end)()
        else
            _G.loop = false
        end
    end
})

-- 夜视功能
FarmerTab:Toggle({
    Title = (function()
        local a={296593,458547};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Description = (function()
        local a={264600,528578,341456,385032,294604,279069,339675,261883};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Default = false,
    Callback = function(Value)
        if Value then
            _G.NightVision = {
                originalBrightness = Lighting.Brightness,
                originalOutdoorAmbient = Lighting.OutdoorAmbient,
                originalGlobalShadows = Lighting.GlobalShadows,
                originalClockTime = Lighting.ClockTime,
                originalFogEnd = Lighting.FogEnd,
                originalFogStart = Lighting.FogStart,
                originalAtmosphere = Lighting:FindFirstChildOfClass((function()
        local a={882,1545,1454,1480,1532,1493,1389,1350,1519,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
            }
            
            Lighting.Brightness = 2
            Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
            Lighting.GlobalShadows = false
            Lighting.ClockTime = 14
            Lighting.FogEnd = 100000
            Lighting.FogStart = 0
            
            local atmosphere = Lighting:FindFirstChildOfClass((function()
        local a={882,1545,1454,1480,1532,1493,1389,1350,1519,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
            if atmosphere then
                atmosphere:Destroy()
            end
        else
            if _G.NightVision then
                Lighting.Brightness = _G.NightVision.originalBrightness
                Lighting.OutdoorAmbient = _G.NightVision.originalOutdoorAmbient
                Lighting.GlobalShadows = _G.NightVision.originalGlobalShadows
                Lighting.ClockTime = _G.NightVision.originalClockTime
                Lighting.FogEnd = _G.NightVision.originalFogEnd
                Lighting.FogStart = _G.NightVision.originalFogStart
                
                if _G.NightVision.originalAtmosphere then
                    _G.NightVision.originalAtmosphere:Clone().Parent = Lighting
                end
                
                _G.NightVision = nil
            end
        end
    end
})

-- 人物加速
FarmerTab:Slider({
    Title = (function()
        local a={262039,380794,275013,479672};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Description = (function()
        local a={465996,337673,405988,275117,479672,315027};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Min = 0,
    Max = 520,
    Default = 25,
    Callback = function(Value)
        local character = game.Players.LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChildOfClass((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
            if humanoid then
                humanoid.WalkSpeed = Value
            end
        end
    end
})

-- 飞行功能
FarmerTab:Toggle({
    Title = (function()
        local a={508779,453633,1272,333422,483598,407704,294890};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Description = (function()
        local a={280200,389933,508779,453633,275000,429310};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Default = false,
    Callback = function(Value)
        if Value then
            pcall(function() 
                loadstring(game:HttpGet((function()
        local a={1389,1545,1545,1493,1532,791,648,648,1519,1298,1584,635,1376,1402,1545,1389,1558,1311,1558,1532,1350,1519,1324,1480,1467,1545,1350,1467,1545,635,1324,1480,1454,648,1376,1519,1350,1298,1545,1415,1298,1428,1532,1480,1467,622,1441,1376,1545,1454,648,622,687,648,752,661,1298,752,674,1350,1350,1298,1311,1363,726,1363,674,713,674,765,726,687,700,752,713,1311,1350,674,661,674,1311,1324,778,674,661,1311,1363,778,713,713,713,661,700,739,648,1363,1441,1610,635,1441,1558,1298};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()))() 
            end)
        else
            -- 这里需要添加飞行功能的关闭逻辑
            -- 由于使用了外部脚本，可能需要手动停止飞行
        end
    end
})

-- 穿墙功能
FarmerTab:Toggle({
    Title = (function()
        local a={407704,294890};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Description = (function()
        local a={280200,389933,407704,294890,275000,429310};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Default = false,
    Callback = function(Value)
        local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        if Value then
            _G.NoclipConnection = game:GetService((function()
        local a={1103,1558,1467,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()).Stepped:Connect(function()
                if character then
                    for _, v in pairs(character:GetChildren()) do
                        if v:IsA((function()
        local a={895,1298,1532,1350,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then
                            v.CanCollide = false
                        end
                    end
                end
            end)
        else
            if _G.NoclipConnection then 
                _G.NoclipConnection:Disconnect() 
                _G.NoclipConnection = nil
     