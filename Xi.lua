-- Ninja Legends Injector Script
local NinjaLegends = {}

-- Auto Farm Features
NinjaLegends.AutoFarm = {
    Enabled = false,
    Coins = false,
    Gems = false,
    XP = false,
    Speed = 1
}

-- Auto Rebirth Features
NinjaLegends.AutoRebirth = {
    Enabled = false,
    RebirthCount = 0,
    AutoRebirth = false
}

-- Auto Upgrade Features
NinjaLegends.AutoUpgrade = {
    Enabled = false,
    Swords = false,
    Belts = false,
    Skills = false
}

-- Teleport Features
NinjaLegends.Teleport = {
    Islands = {
        "Starter Island",
        "Fire Island", 
        "Ice Island",
        "Lightning Island",
        "Wind Island",
        "Lava Island",
        "Ancient Island"
    },
    CurrentIsland = "Starter Island"
}

-- Player Statistics
NinjaLegends.PlayerStats = {
    Coins = 0,
    Gems = 0,
    Level = 0,
    Rebirths = 0
}

-- Main Auto Farm Function
function NinjaLegends:StartAutoFarm()
    if not self.AutoFarm.Enabled then return end
    
    while self.AutoFarm.Enabled and task.wait(self.AutoFarm.Speed) do
        -- Auto attack enemies
        self:AutoAttack()
        
        -- Auto collect coins
        if self.AutoFarm.Coins then
            self:CollectCoins()
        end
        
        -- Auto collect gems
        if self.AutoFarm.Gems then
            self:CollectGems()
        end
        
        -- Auto gain XP
        if self.AutoFarm.XP then
            self:GainXP()
        end
    end
end

-- Auto Attack Function
function NinjaLegends:AutoAttack()
    -- Get all nearby enemies
    local enemies = workspace:FindFirstChild("Enemies")
    if not enemies then return end
    
    for _, enemy in pairs(enemies:GetChildren()) do
        if enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
            -- Teleport to enemy position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame
            
            -- Simulate attack
            local args = {
                [1] = enemy,
                [2] = {
                    ["hit"] = enemy.HumanoidRootPart,
                    ["normal"] = Vector3.new(0, 1, 0)
                }
            }
            
            -- Call game's damage function
            local damageEvent = game:GetService("ReplicatedStorage"):FindFirstChild("DamageEvent")
            if damageEvent then
                damageEvent:FireServer(unpack(args))
            end
            
            break -- Only attack one enemy at a time
        end
    end
end

-- Collect Coins Function
function NinjaLegends:CollectCoins()
    local coins = workspace:FindFirstChild("Coins")
    if not coins then return end
    
    for _, coin in pairs(coins:GetChildren()) do
        if coin:IsA("Part") then
            -- Teleport to coin position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = coin.CFrame
            task.wait(0.1)
        end
    end
end

-- Collect Gems Function
function NinjaLegends:CollectGems()
    local gems = workspace:FindFirstChild("Gems")
    if not gems then return end
    
    for _, gem in pairs(gems:GetChildren()) do
        if gem:IsA("Part") then
            -- Teleport to gem position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = gem.CFrame
            task.wait(0.1)
        end
    end
end

-- Gain XP Function
function NinjaLegends:GainXP()
    -- Automatically gain XP by attacking enemies
    -- XP is gained automatically when enemies are defeated
end

-- Auto Rebirth Function
function NinjaLegends:AutoRebirthFunction()
    if not self.AutoRebirth.AutoRebirth then return end
    
    while self.AutoRebirth.AutoRebirth and task.wait(5) do
        -- Check if rebirth is available
        local player = game.Players.LocalPlayer
        local leaderstats = player:FindFirstChild("leaderstats")
        
        if leaderstats then
            local level = leaderstats:FindFirstChild("Level")
            if level and level.Value >= 100 then -- Assuming level 100 allows rebirth
                -- Perform rebirth
                local rebirthEvent = game:GetService("ReplicatedStorage"):FindFirstChild("RebirthEvent")
                if rebirthEvent then
                    rebirthEvent:FireServer()
                    self.AutoRebirth.RebirthCount = self.AutoRebirth.RebirthCount + 1
                end
            end
        end
    end
end

-- Auto Upgrade Function
function NinjaLegends:AutoUpgradeFunction()
    if not self.AutoUpgrade.Enabled then return end
    
    while self.AutoUpgrade.Enabled and task.wait(2) do
        -- Auto upgrade swords
        if self.AutoUpgrade.Swords then
            self:UpgradeSwords()
        end
        
        -- Auto upgrade belts
        if self.AutoUpgrade.Belts then
            self:UpgradeBelts()
        end
        
        -- Auto upgrade skills
        if self.AutoUpgrade.Skills then
            self:UpgradeSkills()
        end
    end
end

-- Upgrade Swords Function
function NinjaLegends:UpgradeSwords()
    local upgradeEvent = game:GetService("ReplicatedStorage"):FindFirstChild("UpgradeSword")
    if upgradeEvent then
        upgradeEvent:FireServer()
    end
end

-- Upgrade Belts Function
function NinjaLegends:UpgradeBelts()
    local upgradeEvent = game:GetService("ReplicatedStorage"):FindFirstChild("UpgradeBelt")
    if upgradeEvent then
        upgradeEvent:FireServer()
    end
end

-- Upgrade Skills Function
function NinjaLegends:UpgradeSkills()
    local skills = {"DoubleJump", "Speed", "Damage"}
    for _, skill in pairs(skills) do
        local upgradeEvent = game:GetService("ReplicatedStorage"):FindFirstChild("Upgrade" .. skill)
        if upgradeEvent then
            upgradeEvent:FireServer()
        end
    end
end

-- Teleport Function
function NinjaLegends:TeleportToIsland(islandName)
    local islands = {
        ["Starter Island"] = CFrame.new(0, 10, 0),
        ["Fire Island"] = CFrame.new(100, 10, 0),
        ["Ice Island"] = CFrame.new(-100, 10, 0),
        ["Lightning Island"] = CFrame.new(0, 10, 100),
        ["Wind Island"] = CFrame.new(0, 10, -100),
        ["Lava Island"] = CFrame.new(200, 10, 0),
        ["Ancient Island"] = CFrame.new(-200, 10, 0)
    }
    
    if islands[islandName] then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = islands[islandName]
        self.Teleport.CurrentIsland = islandName
    end
end

-- Get Player Statistics Function
function NinjaLegends:UpdatePlayerStats()
    local player = game.Players.LocalPlayer
    
    -- Get coin amount
    local leaderstats = player:FindFirstChild("leaderstats")
    if leaderstats then
        local coins = leaderstats:FindFirstChild("Coins")
        local gems = leaderstats:FindFirstChild("Gems")
        local level = leaderstats:FindFirstChild("Level")
        local rebirths = leaderstats:FindFirstChild("Rebirths")
        
        if coins then self.PlayerStats.Coins = coins.Value end
        if gems then self.PlayerStats.Gems = gems.Value end
        if level then self.PlayerStats.Level = level.Value end
        if rebirths then self.PlayerStats.Rebirths = rebirths.Value end
    end
end

-- Infinite Jump Function
function NinjaLegends:InfiniteJump()
    game:GetService("UserInputService").JumpRequest:connect(function()
        if self.InfiniteJumpEnabled then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end)
end

-- Speed Boost Function
function NinjaLegends:SpeedBoost(speed)
    local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = speed
    end
end

-- Jump Power Boost Function
function NinjaLegends:JumpPowerBoost(power)
    local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.JumpPower = power
    end
end

-- Fly Function
function NinjaLegends:Fly()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)
    bodyVelocity.MaxForce = Vector3.new(0, 0, 0)
    bodyVelocity.Parent = character.HumanoidRootPart
    
    local flying = true
    local flySpeed = 50
    
    game:GetService("RunService").Heartbeat:Connect(function()
        if flying and character and character:FindFirstChild("HumanoidRootPart") then
            local rootPart = character.HumanoidRootPart
            
            -- Get movement direction
            local camera = workspace.CurrentCamera
            local moveDirection = Vector3.new(0, 0, 0)
            
            if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
                moveDirection = moveDirection + camera.CFrame.LookVector
            end
            if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
                moveDirection = moveDirection - camera.CFrame.LookVector
            end
            if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
                moveDirection = moveDirection - camera.CFrame.RightVector
            end
            if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
                moveDirection = moveDirection + camera.CFrame.RightVector
            end
            if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
                moveDirection = moveDirection + Vector3.new(0, 1, 0)
            end
            if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) then
                moveDirection = moveDirection - Vector3.new(0, 1, 0)
            end
            
            -- Apply velocity
            if moveDirection.Magnitude > 0 then
                bodyVelocity.Velocity = moveDirection.Unit * flySpeed
                bodyVelocity.MaxForce = Vector3.new(40000, 40000, 40000)
            else
                bodyVelocity.Velocity = Vector3.new(0, 0, 0)
                bodyVelocity.MaxForce = Vector3.new(0, 0, 0)
            end
        else
            if bodyVelocity then
                bodyVelocity:Destroy()
            end
        end
    end)
    
    return function()
        flying = false
        if bodyVelocity then
            bodyVelocity:Destroy()
        end
    end
end

-- Initialization Function
function NinjaLegends:Init()
    -- Start statistics update loop
    task.spawn(function()
        while task.wait(1) do
            self:UpdatePlayerStats()
        end
    end)
    
    -- Set up infinite jump
    self.InfiniteJumpEnabled = false
    self:InfiniteJump()
    
    print("🎯 Ninja Legends Script Loaded Successfully!")
end

-- Return module
return NinjaLegends