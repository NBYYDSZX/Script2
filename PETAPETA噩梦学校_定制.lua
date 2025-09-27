local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- 初始化游戏服务
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Camera = Workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

-- 通知消息
task.wait(2)
WindUI:Notify({
    Title = "1.HUBKM",
    Content = "PETAPETA噩梦学校",
    Duration = 4
})

task.wait(0.5)

-- 创建主窗口
local Window = WindUI:CreateWindow({
    Title = "1.HUBKM<font color='#00FF00'>2.0</font> / PETAPETA噩梦学校",
    Icon = "rbxassetid://4483362748",
    IconTransparency = 1,
    Author = "1.HUBKM",
    Folder = "1.HUBKM",
    Size = UDim2.fromOffset(430, 380),
    Transparent = true,
    Theme = "Dark",
    UserEnabled = true,
    SideBarWidth = 200,
    HasOutline = true,
    User = {
        Enabled = true,
        Anonymous = false,
        Username = LocalPlayer.Name,
        DisplayName = LocalPlayer.DisplayName,
        UserId = LocalPlayer.UserId,
        Thumbnail = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. LocalPlayer.UserId .. "&width=420&height=420&format=png",
        Callback = function()
            WindUI:Notify({
                Title = "用户信息",
                Content = "玩家: " .. LocalPlayer.Name .. " (" .. LocalPlayer.DisplayName .. ")",
                Duration = 3
            })
        end
    }
})

-- 自定义打开按钮
Window:EditOpenButton({
    Title = "1.HUBKM无限旅馆_第二章",
    Icon = "monitor",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 1,
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromHex("FF0000")),
        ColorSequenceKeypoint.new(0.16, Color3.fromHex("FF7F00")),
        ColorSequenceKeypoint.new(0.33, Color3.fromHex("FFFF00")),
        ColorSequenceKeypoint.new(0.5, Color3.fromHex("00FF00")),
        ColorSequenceKeypoint.new(0.66, Color3.fromHex("0000FF")),
        ColorSequenceKeypoint.new(0.83, Color3.fromHex("4B0082")),
        ColorSequenceKeypoint.new(1, Color3.fromHex("9400D3"))
    }),
    Draggable = true,
})

-- 创建标签页
local Tabs = {
    Main = Window:Section({ Title = "主要功能", Opened = true }),
    Settings = Window:Section({ Title = "设置", Opened = true })
}

-- 创建标签页句柄
local TabHandles = {
    Combat = Tabs.Main:Tab({ Title = "主要功能", Icon = "sword" }),
    ESP = Tabs.Main:Tab({ Title = "ESP", Icon = "eye" }),
    Speed = Tabs.Main:Tab({ Title = "移动", Icon = "move" }),
    Config = Tabs.Settings:Tab({ Title = "配置", Icon = "settings" })
}

-- 战斗功能标签
TabHandles.Combat:Paragraph({
    Title = "主要功能",
    Desc = "不知道",
    Image = "sword",
    ImageSize = 20,
    Color = "White"
})

TabHandles.Combat:Toggle({
    Title = "无碰撞_穿墙",
    Description = "使所有交互无需等待时间",
    Default = false,
    Callback = function(state)
        if state then
            local Noclip = true
            local Stepped = game.RunService.Stepped:Connect(function()
                if Noclip == true then
                    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
                else
                    Stepped:Disconnect()
                end
            end)
        else
            Noclip = false
        end
    end
})

-- ESP功能
local ESP_SETTINGS = {
    Color = Color3.fromRGB(80, 255, 80),
    Offset = Vector3.new(0, 2, 0),
    Size = UDim2.new(0, 150, 0, 40),
    ShowDistance = true
}

local Tracked = {}

local function removeESP(obj)
    local t = Tracked[obj]
    if not t then return end
    
    for _, conn in ipairs(t.conns) do
        pcall(function() conn:Disconnect() end)
    end
    if t.bb then t.bb:Destroy() end
    Tracked[obj] = nil
end

local function ensureESP(obj)
    if Tracked[obj] then return end
    
    local part = obj:IsA("BasePart") and obj or (obj:IsA("Model") and (obj.PrimaryPart or obj:FindFirstChildWhichIsA("BasePart")))
    if not part or part:FindFirstChild("ItemESP") then return end

    local bb = Instance.new("BillboardGui")
    bb.Name = "ItemESP"
    bb.AlwaysOnTop = true
    bb.Size = ESP_SETTINGS.Size
    bb.StudsOffset = ESP_SETTINGS.Offset
    bb.Parent = part

    local lbl = Instance.new("TextLabel")
    lbl.BackgroundTransparency = 1
    lbl.Size = UDim2.new(1, 0, 1, 0)
    lbl.Font = Enum.Font.SourceSansBold
    lbl.TextScaled = true
    lbl.TextStrokeTransparency = 0
    lbl.TextColor3 = ESP_SETTINGS.Color
    lbl.Text = obj.Name
    lbl.Parent = bb

    local conns = {}
    conns[#conns+1] = RunService.RenderStepped:Connect(function()
        if not obj.Parent or not part.Parent then return end
        if ESP_SETTINGS.ShowDistance then
            local cam = Workspace.CurrentCamera
            local dist = (cam.CFrame.Position - part.Position).Magnitude
            lbl.Text = string.format("%s (%.0f米)", obj.Name, dist)
        else
            lbl.Text = obj.Name
        end
    end)
    
    conns[#conns+1] = obj.AncestryChanged:Connect(function(_, parent)
        if not parent then removeESP(obj) end
    end)

    Tracked[obj] = { bb = bb, conns = conns }
end

local function runItemESP()
    local server = Workspace:WaitForChild("Server")
    local itemFolder = server:WaitForChild("SpawnedItems")

    for _, child in ipairs(itemFolder:GetChildren()) do
        if child:IsA("Model") or child:IsA("BasePart") then
            ensureESP(child)
        end
    end

    itemFolder.ChildAdded:Connect(function(child)
        if child:IsA("Model") or child:IsA("BasePart") then
            task.delay(0.5, function() ensureESP(child) end)
        end
    end)
end

local function removeItemESP()
    for obj, t in pairs(Tracked) do
        if t.bb then t.bb:Destroy() end
        for _, conn in ipairs(t.conns) do
            pcall(function() conn:Disconnect() end)
        end
    end
    Tracked = {}
end

TabHandles.ESP:Toggle({
    Title = "ESP物品",
    Description = "显示所有物品的位置和距离",
    Default = false,
    Callback = function(value)
        if value then runItemESP() else removeItemESP() end
    end
})

local connections = {}

local function highlightObject(obj, color)
    if obj:FindFirstChild("EnemyESP") then return end
    
    local highlight = Instance.new("Highlight")
    highlight.Name = "EnemyESP"
    highlight.FillColor = color
    highlight.FillTransparency = 0.5
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.OutlineTransparency = 0
    highlight.Parent = obj
end

local function scanFolder(folder, color)
    for _, obj in ipairs(folder:GetDescendants()) do
        if obj:IsA("BasePart") or obj:IsA("Model") then
            highlightObject(obj, color)
        end
    end
    
    return folder.DescendantAdded:Connect(function(obj)
        if obj:IsA("BasePart") or obj:IsA("Model") then
            highlightObject(obj, color)
        end
    end)
end

local function runESP()
    local clientFolder = Workspace:WaitForChild("Client")
    local enemyFolder = clientFolder:WaitForChild("Enemy")
    local clientEnemyFolder = enemyFolder:WaitForChild("ClientEnemy"):WaitForChild("EnemyModel")

    connections[#connections+1] = scanFolder(enemyFolder, Color3.fromRGB(255, 0, 0))
    connections[#connections+1] = scanFolder(clientEnemyFolder, Color3.fromRGB(255, 100, 0))
end

local function stopESP()
    for _, conn in ipairs(connections) do
        if conn and conn.Disconnect then conn:Disconnect() end
    end
    connections = {}
    
    for _, obj in ipairs(Workspace:GetDescendants()) do
        if obj:FindFirstChild("EnemyESP") then obj.EnemyESP:Destroy() end
    end
end

TabHandles.ESP:Toggle({
    Title = "ESP怪物",
    Description = "高亮显示所有怪物",
    Default = false,
    Callback = function(value)
        if value then runESP() else stopESP() end
    end
})

-- 快速冲刺功能
getgenv().TpwalkSpeed = 10
getgenv().TpwalkEnabled = false

TabHandles.Speed:Toggle({
    Title = "快速冲刺",
    Description = "按住移动键快速冲刺",
    Default = false,
    Callback = function(state)
        getgenv().TpwalkEnabled = state
    end
})

TabHandles.Speed:Input({
    Title = "冲刺速度",
    Default = tostring(getgenv().TpwalkSpeed),
    Numeric = true,
    Callback = function(value)
        local num = tonumber(value)
        if num then getgenv().TpwalkSpeed = num end
    end
})

RunService.Heartbeat:Connect(function(delta)
    if getgenv().TpwalkEnabled and LocalPlayer.Character then
        local char = LocalPlayer.Character
        local hrp = char:FindFirstChild("HumanoidRootPart")
        local hum = char:FindFirstChild("Humanoid")
        
        if hrp and hum then
            local dir = hum.MoveDirection
            if dir.Magnitude > 0 then
                local newPos = hrp.Position + dir.Unit * getgenv().TpwalkSpeed * delta
                hrp.CFrame = CFrame.new(newPos, newPos + hrp.CFrame.LookVector)
            end
        end
    end
end)

-- 全亮功能
getgenv().FullBright_Enabled = false
getgenv().FullBright_Original = {}

local Lighting = game:GetService("Lighting")

if not getgenv().FullBright_Original.Sky then
    local sky = Lighting:FindFirstChildOfClass("Sky")
    getgenv().FullBright_Original.Sky = sky and sky:Clone() or nil
end
if not getgenv().FullBright_Original.Ambient then
    getgenv().FullBright_Original.Ambient = Lighting.Ambient
end
if not getgenv().FullBright_Original.OutdoorAmbient then
    getgenv().FullBright_Original.OutdoorAmbient = Lighting.OutdoorAmbient
end
if not getgenv().FullBright_Original.Brightness then
    getgenv().FullBright_Original.Brightness = Lighting.Brightness
end
if not getgenv().FullBright_Original.ClockTime then
    getgenv().FullBright_Original.ClockTime = Lighting.ClockTime
end

local function applyFullBright()
    Lighting.Brightness = 2
    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    Lighting.ClockTime = 14
    
    for _, obj in ipairs(Lighting:GetChildren()) do
        if obj:IsA("Sky") then obj:Destroy() end
    end
end

local function restoreLighting()
    Lighting.Brightness = getgenv().FullBright_Original.Brightness
    Lighting.Ambient = getgenv().FullBright_Original.Ambient
    Lighting.OutdoorAmbient = getgenv().FullBright_Original.OutdoorAmbient
    Lighting.ClockTime = getgenv().FullBright_Original.ClockTime
    
    if getgenv().FullBright_Original.Sky and not Lighting:FindFirstChildOfClass("Sky") then
        getgenv().FullBright_Original.Sky:Clone().Parent = Lighting
    end
end

RunService.RenderStepped:Connect(function()
    if getgenv().FullBright_Enabled then applyFullBright() end
end)

Players.LocalPlayer.CharacterAdded:Connect(function()
    if getgenv().FullBright_Enabled then
        task.wait(0.5)
        applyFullBright()
    end
end)

TabHandles.ESP:Toggle({
    Title = "屏幕光亮",
    Description = "使游戏场景变亮",
    Default = false,
    Callback = function(state)
        getgenv().FullBright_Enabled = state
        if not state then restoreLighting() else applyFullBright() end
    end
})

-- 配置标签
TabHandles.Config:Paragraph({
    Title = "配置管理",
    Desc = "保存和加载设置",
    Image = "settings",
    ImageSize = 20,
    Color = "White"
})

local configName = "默认"

TabHandles.Config:Input({
    Title = "配置名称",
    Value = configName,
    Callback = function(value)
        configName = value
    end
})

TabHandles.Config:Button({
    Title = "保存配置",
    Icon = "save",
    Variant = "Primary",
    Callback = function()
        WindUI:Notify({ 
            Title = "配置已保存", 
            Content = "已保存为: "..configName,
            Icon = "check",
            Duration = 3
        })
    end
})

TabHandles.Config:Button({
    Title = "加载配置",
    Icon = "folder",
    Callback = function()
        WindUI:Notify({ 
            Title = "配置已加载", 
            Content = "已加载: "..configName,
            Icon = "refresh-cw",
            Duration = 3
        })
    end
})

-- 页脚
local footerSection = Window:Section({ Title = "1.HUBKM" })
TabHandles.Config:Paragraph({
    Title = "1.HUBKM",
    Desc = "无限旅馆_第二章",
    Image = "heart",
    ImageSize = 20,
    Color = "Grey",
})

-- 窗口回调
Window:OnClose(function() print("窗口已关闭") end)
Window:OnDestroy(function() print("窗口已销毁") end)