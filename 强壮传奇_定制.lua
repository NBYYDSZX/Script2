local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

task.wait(2)

WindUI:Notify({
    Title = "1.HUBKM",
    Content = "强壮传奇定制",
    Duration = 4
})

task.wait(0.5)

local player = game.Players.LocalPlayer

local Window = WindUI:CreateWindow({
    Title = "1.HUBKM<font color='#00FF00'>眼睛_恐怖游戏</font>",
    Icon = "rbxassetid://4483362748",
    IconTransparency = 1,
    Author = "眼睛eyes",
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
        Username = player.Name,
        DisplayName = player.DisplayName,
        UserId = player.UserId,
        Thumbnail = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=420&height=420&format=png",
        Callback = function()
            WindUI:Notify({
                Title = "用户信息",
                Content = "玩家: " .. player.Name .. " (" .. player.DisplayName .. ")",
                Duration = 3
            })
        end
    }
})

task.wait(0.3)

Window:EditOpenButton({
    Title = "1.HUBKM强壮传奇_定制",
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

task.wait(0.2)

-- 创建标签页
local Tabs = {
    Main = Window:Section({ Title = "主要功能", Opened = true }),
    Settings = Window:Section({ Title = "设置", Opened = true })
}

-- 创建标签页句柄
local TabHandles = {
    Features = Tabs.Main:Tab({ Title = "主要功能", Icon = "ghost" }),
    Config = Tabs.Settings:Tab({ Title = "配置", Icon = "settings" })
}

-- 恶搞功能标签页
TabHandles.Features:Paragraph({
    Title = "自动功能",
    Desc = "全自动 无需手动",
    Image = "ghost",
    ImageSize = 20,
    Color = "White",
})

TabHandles.Features:Divider()

-- 自动攻击Boss功能
local autoAttackEnabled = false
local autoAttackThread = nil

TabHandles.Features:Toggle({
    Title = "自动攻击Boss",
    Desc = "自动攻击游戏中的Boss",
    Value = false,
    Callback = function(Value)
        autoAttackEnabled = Value
        if autoAttackEnabled then
            autoAttackThread = task.spawn(function()
                while autoAttackEnabled do
                    -- 传送玩家到指定位置
                    local player = game:GetService("Players").LocalPlayer
                    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        local debris = workspace:FindFirstChild("Debris")
                        if debris and #debris:GetChildren() >= 70 then
                            player.Character.HumanoidRootPart.CFrame = debris:GetChildren()[70]:GetPivot()
                        end
                    end
                    
                    -- 使用第一个装备攻击
                    local remotes = game:GetService("ReplicatedStorage"):FindFirstChild("Remotes")
                    if remotes then
                        local useTool = remotes:FindFirstChild("UseTool")
                        if useTool then
                            local args1 = {
                                [1] = "Stomp";
                            }
                            useTool:FireServer(unpack(args1))
                        end
                    end
                    
                    task.wait(0.1)
                    
                    -- 使用第二个装备攻击
                    if remotes then
                        local useTool = remotes:FindFirstChild("UseTool")
                        if useTool then
                            local args2 = {
                                [1] = "Punch";
                            }
                            useTool:FireServer(unpack(args2))
                        end
                    end
                    
                    task.wait(0.1)
                end
            end)
        else
            if autoAttackThread then
                task.cancel(autoAttackThread)
                autoAttackThread = nil
            end
        end
    end
})

-- 自动吃食物功能
local autoEatEnabled = false
local autoEatThread = nil

TabHandles.Features:Toggle({
    Title = "自动吃食物",
    Desc = "自动使用食物",
    Value = false,
    Callback = function(Value)
        autoEatEnabled = Value
        if autoEatEnabled then
            autoEatThread = task.spawn(function()
                local ReplicatedStorage = game:GetService("ReplicatedStorage")  
                local Remotes = ReplicatedStorage:WaitForChild("Remotes")  
                local UseToolRemote = Remotes:WaitForChild("UseTool")

                local args = {  
                    "Food"  
                }

                while autoEatEnabled do  
                    UseToolRemote:FireServer(unpack(args))  
                    task.wait(0.05) -- Adjust to control spam rate (lower = faster)  
                end
            end)
        else
            if autoEatThread then
                task.cancel(autoEatThread)
                autoEatThread = nil
            end
        end
    end
})

-- 配置标签页
TabHandles.Config:Paragraph({
    Title = "UI配置设置",
    Desc = "自定义您的体验",
    Image = "settings",
    ImageSize = 20,
    Color = "White",
})

TabHandles.Config:Divider()

-- 主题选择下拉菜单
local themes = { "暗色", "亮色", "蓝色", "红色", "绿色" }
local themeDropdown = TabHandles.Config:Dropdown({
    Title = "选择UI主题",
    Values = themes,
    Value = "暗色",
    Callback = function(theme)
        WindUI:Notify({
            Title = "主题已应用",
            Content = theme,
            Icon = "palette",
            Duration = 2
        })
    end
})

-- 页脚部分
local footerSection = Window:Section({ Title = "1.HUBKM 强壮传奇" })
TabHandles.Config:Paragraph({
    Title = "@1.HUBKM 制作",
    Desc = "定制",
    Image = "heart",
    ImageSize = 20,
    Color = "Grey",
})

-- 窗口关闭回调
Window:OnClose(function()
    print("窗口已关闭")
    -- 停止所有正在运行的线程
    if autoAttackThread then
        task.cancel(autoAttackThread)
        autoAttackThread = nil
    end
    if autoEatThread then
        task.cancel(autoEatThread)
        autoEatThread = nil
    end
end)

-- 窗口销毁回调
Window:OnDestroy(function()
    print("窗口已销毁")
    -- 停止所有正在运行的线程
    if autoAttackThread then
        task.cancel(autoAttackThread)
        autoAttackThread = nil
    end
    if autoEatThread then
        task.cancel(autoEatThread)
        autoEatThread = nil
    end
end)