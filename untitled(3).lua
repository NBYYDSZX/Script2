loadstring(game:HttpGet("https://pastebin.com/raw/6xQ5gtbj"))();
local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/FUEx0f3G"))()
local Window = OrionLib:MakeWindow({Name = "[燕麦粥]two time  ×  bjbj[啥子群主]脚本2.0", HidePremium = false, SaveConfig = false, IntroText = "two time × bjbj", ConfigFolder = "不喜勿喷，缝合脚本"})

local Tab = Window:MakeTab({
    Name = "two time × bjbj脚本",
    Icon = "rbxassetid://1051231696",
    PremiumOnly = false
})

Tab:AddParagraph("作者","two time[燕麦粥] & bjbj[啥子群主]")
Tab:AddLabel("此脚本完全免费")

local Tab = Window:MakeTab({
	Name = "通用功能",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "HUA 光影",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/arzRCgwS"))()
  end
})

Tab:AddButton({
  Name = "光影_2",
  Default = false,
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  end
})

Tab:AddButton({
	Name = "超高画质",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end
})    

Tab:AddButton({
  Name = "旋转（暂不可用）",
  Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})
 
Tab:AddButton({
	Name = "IY中文版指令",
	Callback = function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,87,97,110,103,122,104,101,104,97,111,104,47,102,108,121,45,97,119,97,121,47,109,97,105,110,47,37,69,54,37,56,67,37,56,55,37,69,52,37,66,66,37,56,65,37,69,52,37,66,56,37,65,68,37,69,54,37,57,54,37,56,55,46,116,120,116})end)())))()
	end
})

Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddButton({
    Name = "动作",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Zj4NnKs6"))()
    end
})

Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})

Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})

local player = Window:MakeTab({
	Name = "玩家",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "到管",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/minecrafttotem/yzhs./main/Fe%20pp%20script%20very%20fun"))()
  end
})

Tab:AddButton({
	Name = "无限跳",
    Default = false,
	Callback = function(Value)
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
	end
})

player:AddTextbox({
	Name = "移动速度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})

player:AddTextbox({
	Name = "跳跃高度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})

player:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

player:AddButton({
	Name = "穿墙",
	Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/B5xRxTnk",true))()
  	end
})

player:AddButton({
	Name = "飞行V3",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
  	end
})

player:AddButton({
	Name = "透视",
	Callback = function()
      	local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
  	end
})

player:AddButton({
	Name = "传送玩家",
	Callback = function()
      	loadstring(game:HttpGet(("https://pastebin.com/raw/YNVbeqPy")))()
  	end
})

player:AddButton({
	Name = "fps显示",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/FPS-Counter'))()
  	end
})

player:AddButton({
	Name = "玩家进入提示",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "小黑子",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:HttpGet(('https://gist.githubusercontent.com/blox-hub-roblox/021bad62bbc6a0adc4ba4e625f9ad7df/raw/c89af6e1acf587d09e4ce4bc7510e7100e0c0065/swordWarrior.lua'),true))()
  end
})

Tab:AddButton({
  Name = "2",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0SwordWarriors"))()
  end
})

local Tab = Window:MakeTab({
	Name = "🔥自然灾害🔥",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "hua-自然灾害",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/5fKvum70"))()
  end
})

local Tab = Window:MakeTab({
	Name = "🌈doors🌈",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "微山",
  Callback = function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "🤡最强战场🤡",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "Jay最强战场",
  Callback = function()
loadstring(Game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/tsbscripts/main/Main"))()
  end
})

Tab:AddButton({
   Name = "英文最强战场",
   Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/The-Strongest-Battlegrounds-Tsb-Movesets-Hub-45038"))()
   end
})

local Tab = Window:MakeTab({
    Name = "⭐俄亥俄州⭐",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "🐲指令脚本🐲",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/Ohio"))()
    end
})

Tab:AddLabel("指令如下（聊天框输入）")
Tab:AddLabel("透开-透关 ---透视")
Tab:AddLabel("追踪开-追踪关 ---子弹追踪")
Tab:AddLabel("收钱开-收钱关 ---收集钱包")
Tab:AddLabel("收物开-收物关 ---收集物品")
Tab:AddLabel("抢取款机开-抢取款机关")
Tab:AddLabel("抢银行开-抢银行关")
Tab:AddLabel("穿墙开-穿墙关")
Tab:AddLabel("拳击光环开-拳击光环关")

local Tab = Window:MakeTab({
    Name = "巴掌大战👋",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "1",
    Callback = function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
    end
})

Tab:AddButton({
    Name = "指令脚本🐲",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/bazhang"))()
    end
})

Tab:AddLabel("指令如下（聊天框输入）")
Tab:AddLabel("透视-自动击打-击打光环-踏空")
Tab:AddLabel("防击飞-防推飞-防死神-速度")
Tab:AddLabel("关-无敌开-无敌关-全开-全关")
Tab:AddLabel("全开功能有:防编辑，防毒液，防黑洞，防死神")
Tab:AddLabel("防雷神，防rob，防秒杀手套，管理员预警，防踢")

local Tab = Window:MakeTab({
    Name = "✨忍者✨",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "1",
    Callback = function()
    pcall(loadstring(game:HttpGet("https://pastebin.com/raw/2UjrXwTV")))
    end
})

local Tab = Window:MakeTab({
    Name = "🏳️‍🌈极速",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "1-会覆盖",
  Callback = function()
    loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\111\121\115\99\112\47\98\101\116\97\47\109\97\105\110\47\37\69\57\37\56\48\37\57\70\37\69\53\37\66\65\37\65\54\37\69\55\37\56\50\37\66\56\37\69\56\37\66\53\37\66\55\46\108\117\97'))()
  end
})

Tab:AddButton({
    Name = "开启卡宠",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uR6azdQQ"))()
    end
})

Tab:AddButton({
    Name = "自动",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/AyeCYbT6"))()
    end
})

local Tab = Window:MakeTab({
    Name = "💪力量",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "💪力量传奇1",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
    end
})

Tab:AddButton({
    Name = "💪力量传奇2",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/BoaHacker/ROBLOX/main/cheat', true))()
    end
}) 

local Tab = Window:MakeTab({
    Name = "死铁轨",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "死铁轨脚本1",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wefwef127382/DEADRAILS.github.io/refs/heads/main/mainringta.lua"))()
    end
})

Tab:AddButton({
    Name = "死铁轨刷债卷超好用",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/thantzy/thanhub/refs/heads/main/thanv1"))()
    end
})

Tab:AddButton({
    Name = "死铁轨刷债券",
    Callback = function()
--[[by 退休不退休]]QUN = "160369111"TX = "死铁轨刷债券V3"script = "死铁轨免费刷债券"loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/Item/refs/heads/main/%E5%88%B7%E5%80%BA%E5%88%B8"))()
    end
})

local Tab = Window:MakeTab({
	Name = "墨水游戏",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "AX中文",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XOTRXONY/INKGAME/main/INKGAMEE.lua", true))()
    end
})

local Tab = Window:MakeTab({
	Name = "彩虹朋友🎯",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "1",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/BorkWare/main/Scripts/' .. game.GameId .. ".lua"))(' Watermelon ? ')
    end
})

local player = Window:MakeTab({
	Name = "🔥蜂群模拟器🔥",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "Jay独家制作定于赞助",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jay907692/-/1c2ec445afa9794de9097f1f7b56b153cdf12e8a/%E8%9C%82%E7%BE%A4%E8%84%9A%E6%9C%ACato%E6%B1%89%E5%8C%96%20(1).txt"))()
  	end
})

local player = Window:MakeTab({
	Name = "⭐️99夜day⭐️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "二狗子脚本",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gycgchgyfytdttr/shenqin/refs/heads/main/99day.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "👊最强拳击模拟器👊",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/Solx69/Shit-Boy-Hub-Main/main/Master.lua'))();
  	end
})

local player = Window:MakeTab({
	Name = "🔪生存杀手🔪",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/Kiroftt/Survive-The-Killer/main/Simple'))();
  	end
})
local player = Window:MakeTab({
	Name = "内脏与黑火药",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "JAY",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\34\104\116\116\112\115\58\47\47\102\114\101\101\110\111\116\101\46\98\105\122\47\114\97\119\47\109\117\122\110\104\101\114\104\114\117\34\41\44\116\114\117\101\41\41\40\41\10")()
  	end
})

local player = Window:MakeTab({
	Name = "🔪杀手vs警长👩‍✈️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0murder", true))()
  	end
})
local player = Window:MakeTab({
	Name = "3008",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/scripts/main/3008.lua')()
  	end
})

local player = Window:MakeTab({
	Name = "👊打墙模拟器",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/JunBloxYTPlayz/SORIX-Hub/main/Punch%20Wall%20Simulator"))();
  	end
})

local player = Window:MakeTab({
	Name = "逃出建筑💨",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
  	end
})

local player = Window:MakeTab({
	Name = "🏳️‍🌈在51区生存",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1（会覆盖）",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ZONE100/ZoneHub/main/MultiGames"))()
  	end
})

local player = Window:MakeTab({
	Name = "🥪我的餐厅",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafacasari/roblox-scripts/main/mr.lua"))()
  	end
})

local Tab = Window:MakeTab({
    Name = "🌟脚本中心🌟",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "🏳️‍🌈秋🏳️‍🌈",
    Callback = function()
    local SCC_CharPool={
[1]= tostring(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,87,83,56,53,55,57,54,48,47,45,47,109,97,105,110,47,37,69,55,37,65,55,37,56,66,37,67,50,37,66,55,37,69,56,37,56,55,37,65,65,37,69,53,37,56,56,37,66,54,37,69,56,37,56,52,37,57,65,37,69,54,37,57,67,37,65,67,37,69,54,37,57,54,37,66,48,37,69,54,37,66,65,37,57,48,37,69,55,37,65,48,37,56,49,46,116,120,116})end)()))}
loadstring(game:HttpGet(SCC_CharPool[1]))()
    end
})

Tab:AddButton({
    Name = "🍺XA脚本🍺",
    Callback = function()
loadstring(game:HttpGet("https://raw.gitcode.com/Xingtaiduan/Scripts/raw/main/Loader.lua"))()
    end
})

Tab:AddButton({
    Name = "☁️云(白灰)",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/6666666666/main/%E4%BA%91%E8%84%9A%E6%9C%AC%E6%B5%8B%E8%AF%95%E7%89%88%E4%BA%91%E8%84%9A%E6%9C%AC%E6%B5%8B%E8%AF%95%E7%89%88Xiao%20Yun.lua"))()
    end
})

Tab:AddButton({
    Name = "XC，卡密a",
    Callback = function()
    getgenv().XC="作者XC"loadstring(game:HttpGet("https://pastebin.com/raw/PAFzYx0F"))()
    end
})

Tab:AddButton({
    Name = "阿尔宙斯",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
    end
})

Tab:AddButton({
    Name = "🥷忍脚本🥷",
    Callback = function()
    getgenv().ren666 = "忍脚本，加载时间长请耐心"loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,90,77,115,67,56,114,104,114})end)())))();
    end
})

Tab:AddButton({
    Name = "🌞神光脚本🌞",
    Callback = function()
    loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,56,102,50,76,99,113,113,80})end)())))()
    end
})

Tab:AddButton({
    Name = "🌈青脚本🌈",
    Callback = function()
    loadstring(game:HttpGet('https://rentry.co/ct293/raw'))()
    end
})

Tab:AddButton({
    Name = "导管脚本中心",
    Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
    end
})

Tab:AddButton({
    Name = "🦆鸭hub",
    Callback = function()
    loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,81,89,49,113,112,99,115,106})end)())))()
    end
})

Tab:AddButton({
	Name = "jm脚本中心",
	Callback = function()
   
getgenv().eom = "Jay加载jm中"
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/anlushanjinchangantangwanle/main/jmjmjmjmjmjmjmjmjmjmjmjmjmjmjmjm.lua"))()
    end
})

Tab:AddButton({
	Name = "北狐星脚本",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FengYu-3/FengYu/refs/heads/main/North%20Fox.lua"))()
    end
})

Tab:AddButton({
    Name = "皮脚本",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
    end
})

Tab:AddButton({
    Name = "情云脚本",
    Callback = function()
    loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,34,41,41,40,41})end)()))()
    end
})

local Tab = Window:MakeTab({    Name = "恶搞中心",	Icon = "rbxassetid://4483345998",	PremiumOnly = false})
 
Tab:AddButton({
  Name = " Back door",
  Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Backdoor-exe-9413"))()
  end
})
Tab:AddButton({
  Name = "lc鲨鱼脚本😎",
  Callback = function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\102\121\46\97\112\112\47\74\67\54\78\107\105\76\85\47\114\97\119"))()
  end
})

Tab:AddButton({
  Name = "gb鲨鱼脚本😋",
  Callback = function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\102\121\46\97\112\112\47\65\51\78\113\122\52\78\112\47\114\97\119"))()
  end
})

Tab:AddButton({
  Name = "落叶中心😀",
  Callback = function()
    getgenv().LS="落叶中心" loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt"))()
  end
})
Tab:AddButton({
  Name = "南宁中心🤓",
  Callback = function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\88\67\87\82\87\110\76\34\41\40\41\40\103\97\109\101\58\72\116\116\112\71\101\116\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\78\112\86\65\110\119\110\104\34\41\40\41\10")()
  end
})

Tab:AddButton({
  Name = "99片叶子脚本🤓",
  Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/OverflowBGSI/Overflow/refs/heads/main/loader.txt"))()
end
})

Tab:AddButton({
  Name = "墨水游戏🤓",
  Callback = function()
     loadstring("\u{006c}\u{006f}\u{0061}\u{0064}\u{0073}\u{0074}\u{0072}\u{0069}\u{006e}\u{0067}\u{0028}\u{0067}\u{0061}\u{006d}\u{0065}\u{003a}\u{0048}\u{0074}\u{0074}\u{0070}\u{0047}\u{0065}\u{0074}\u{0028}\u{0022}\u{0068}\u{0074}\u{0074}\u{0070}\u{0073}\u{003a}\u{002f}\u{002f}\u{0072}\u{0061}\u{0077}\u{002e}\u{0067}\u{0069}\u{0074}\u{0068}\u{0075}\u{0062}\u{0075}\u{0073}\u{0065}\u{0072}\u{0063}\u{006f}\u{006e}\u{0074}\u{0065}\u{006e}\u{0074}\u{002e}\u{0063}\u{006f}\u{006d}\u{002f}\u{004a}\u{0073}\u{0059}\u{0062}\u{0036}\u{0036}\u{0036}\u{002f}\u{0054}\u{0055}\u{0049}\u{0058}\u{0055}\u{0049}\u{005f}\u{0071}\u{0075}\u{006e}\u{002d}\u{0038}\u{0030}\u{0039}\u{0037}\u{0037}\u{0031}\u{0031}\u{0034}\u{0031}\u{002f}\u{0072}\u{0065}\u{0066}\u{0073}\u{002f}\u{0068}\u{0065}\u{0061}\u{0064}\u{0073}\u{002f}\u{0054}\u{0055}\u{0049}\u{0058}\u{0055}\u{0049}\u{002f}\u{004d}\u{0053}\u{0059}\u{0058}\u{0022}\u{0029}\u{0029}\u{0028}\u{0029}")()
end
})

Tab:AddButton({
  Name = "我，我耳朵里有耳屎!😭😭😭",
  Callback = function()
      
  loadstring(game:HttpGet("https://rawscripts.net/raw/DOORS-Prohax-v3-47773"))()
end
})

Tab:AddButton({
  Name = "站街勇士🤓",
  Callback = function()
  
loadstring(game:HttpGet("https://raw.githubusercontent.com/Reapvitalized/TSB/refs/heads/main/SG_DEMO.lua"))()
end
})

Tab:AddButton({
	Name = "战斗勇士",
	Callback = function()

loadstring(game:HttpGet("https://projecthook.xyz/scripts/free.lua"))()
    end
})

Tab:AddButton({
	Name = "战斗勇士英文",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))();
    end
})

local Tab = Window:MakeTab({
	Name = "通用脚本",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "光影",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/arzRCgwS"))()
  end
})

Tab:AddButton({
  Name = "光影2",
  Default = false,
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})
 
Tab:AddButton({
	Name = "IY中文版指令",
	Callback = function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,87,97,110,103,122,104,101,104,97,111,104,47,102,108,121,45,97,119,97,121,47,109,97,105,110,47,37,69,54,37,56,67,37,56,55,37,69,52,37,66,66,37,56,65,37,69,52,37,66,56,37,65,68,37,69,54,37,57,54,37,56,55,46,116,120,116})end)())))()
	end
})

Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddButton({
    Name = "动作",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Zj4NnKs6"))()
    end
})

Tab:AddButton({
	Name = "键盘",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})

Tab:AddButton({
	Name = "踏空",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})

local player = Window:MakeTab({
	Name = "自己[bjbj]",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "不雅动作",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/minecrafttotem/yzhs./main/Fe%20pp%20script%20very%20fun"))()
  end
})

Tab:AddButton({
	Name = "无限跳跃",
    Default = false,
	Callback = function(Value)
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
	end
})

player:AddTextbox({
	Name = "速度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})

player:AddTextbox({
	Name = "跳跃",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})

player:AddTextbox({
	Name = "重力",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

player:AddButton({
	Name = "穿墙",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/Jay907692/Jay/bb90524a8140173dee6d3656c779785e5c4cfeeb/穿", true))()
  	end
})

player:AddButton({
	Name = "飞行",
	Callback = function()
      local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "上"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "下"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "飞行"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "bjbj缝合翻译 飞行脚本"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "加速"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "减速"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "关闭"
closebutton.TextSize = 30
closebutton.Position =  UDim2.new(0, 0, -1, 27)

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "隐藏"
mini.TextSize = 40
mini.Position = UDim2.new(0, 44, -1, 27)

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "+"
mini2.TextSize = 40
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Fly GUI V3";
	Text = "By me_ozone and Quandale The Dinglish XII#3550";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5;

Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame
		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false




	else
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)

local tis

up.MouseButton1Down:connect(function()
	tis = up.MouseEnter:connect(function()
		while tis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)

up.MouseLeave:connect(function()
	if tis then
		tis:Disconnect()
		tis = nil
	end
end)

local dis

down.MouseButton1Down:connect(function()
	dis = down.MouseEnter:connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)

down.MouseLeave:connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then


		tpwalking = false
		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
	end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = 'cannot be less than 1'
		wait(1)
		speed.Text = speeds
	else
		speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
			tpwalking = false
			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
		end
	end
end)

closebutton.MouseButton1Click:Connect(function()
	main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
	up.Visible = false
	down.Visible = false
	onof.Visible = false
	plus.Visible = false
	speed.Visible = false
	mine.Visible = false
	mini.Visible = false
	mini2.Visible = true
	main.Frame.BackgroundTransparency = 1
	closebutton.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
	up.Visible = true
	down.Visible = true
	onof.Visible = true
	plus.Visible = true
	speed.Visible = true
	mine.Visible = true
	mini.Visible = true
	mini2.Visible = false
	main.Frame.BackgroundTransparency = 0 
	closebutton.Position =  UDim2.new(0, 0, -1, 27)
end)    
  	end
})

player:AddButton({
	Name = "透视玩家",
	Callback = function()
      	local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
  	end
})

player:AddButton({
	Name = "传送到玩家",
	Callback = function()
      	loadstring(game:HttpGet(("https://pastebin.com/raw/YNVbeqPy")))()
  	end
})

player:AddButton({
	Name = "FPS",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/FPS-Counter'))()
  	end
})

player:AddButton({
	Name = "玩家进入时提示",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
  	end
})

Tab:AddButton({
	Name = "无敌少侠飞行[bjbj]",
    Default = false,
	Callback = function(Value)
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end
})

Tab:AddButton({
	Name = "无敌 隐身[bjbj]",
    Default = false,
	Callback = function(Value)
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end
})

Tab:AddButton({
	Name = "控制npc[bjbj]",
    Default = false,
	Callback = function(Value)
loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/fe-source/refs/heads/main/NPC/source/main.Luau"))()
--sub @Im_patrick right now!
	end
})

local Tab = Window:MakeTab({
	Name = "自然灾害模拟器[bjbj]",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "自然灾害1",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
  end
})

Tab:AddButton({
  Name = "自然灾害2",
  Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main'))()
--Made By 1kWoof#0143
  end
})

local Tab = Window:MakeTab({
	Name = "门doors[bjbj]",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "中规中矩的脚本",
  Callback = function()
    ---Rush找了半天找到的脚本
---中规中矩，还可以
---支持酒店和矿井

loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))()
  	end
})

Tab:AddButton({
  Name = "汉化版门脚本",
  Callback = function()
    --[[Doors Blackking And BobHub脚本汉化]]loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
  	end
})

Tab:AddButton({
  Name = "门ESP脚本",
  Callback = function()
    local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
function Lib()
local library = {}
local libalive = true
local holdingmouse = false

-- 17,856 pastebin views
-- as of 1/29/2023 @ 6:30 CST

local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
local runs = game:GetService("RunService")
local us = game:GetService("UserInputService")
local screengui = Instance.new("ScreenGui",game.CoreGui)
local windowsopened = 0

local elementsize = 24

local font = Font.new(
    "rbxassetid://11702779517",
    Enum.FontWeight.Regular,
    Enum.FontStyle.Normal 
    )
    
local titlefont = Font.new(
    "rbxassetid://11702779517",
    Enum.FontWeight.Bold,
    Enum.FontStyle.Normal 
    )
    
local medfont = Font.new(
    "rbxassetid://11702779517",
    Enum.FontWeight.Medium,
    Enum.FontStyle.Normal 
    )

us.InputBegan:Connect(function(key,pro)
    if key.UserInputType == Enum.UserInputType.MouseButton1 then
        holdingmouse = true 
    end
end)

us.InputEnded:Connect(function(key,pro)
    if key.UserInputType == Enum.UserInputType.MouseButton1 then
        holdingmouse = false 
    end
end)

function draggable(obj) -- https://devforum.roblox.com/t/draggable-property-is-hidden-on-gui-objects/107689/4
    local UserInputService = game:GetService("UserInputService")
    local gui = obj

    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
    	local delta = input.Position - dragStart
    	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    gui.InputBegan:Connect(function(input)
    	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
    		dragging = true
    		dragStart = input.Position
    		startPos = gui.Position
    		
    		input.Changed:Connect(function()
    			if input.UserInputState == Enum.UserInputState.End then
    				dragging = false
    			end
    		end)
    	end
    end)
    
    gui.InputChanged:Connect(function(input)
    	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
    		dragInput = input
    	end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
    	if input == dragInput and dragging then
    		update(input)
    	end
    end) 
end

function hovercolor(b,idle,hover,clicked,included)
    local hovering = false
    local holding = false
    
    b.MouseEnter:Connect(function()
        hovering = true
    end)
    
    b.MouseLeave:Connect(function()
        hovering = false
    end)
    
    b.MouseButton1Down:Connect(function()
        holding = true
    end)
    
    b.MouseButton1Up:Connect(function()
        holding = false
    end)
    
    if included and typeof(included) == "table" and #included > 0 then
        for i,v in pairs(included) do
            b.Changed:Connect(function()
                v.BackgroundColor3 = b.BackgroundColor3
            end) 
        end
    end
    
    runs.RenderStepped:Connect(function()
        if hovering then
            if holding then
                b.BackgroundColor3 = clicked
            else
                b.BackgroundColor3 = hover
            end
        else
            b.BackgroundColor3 = idle
        end
    end)
end

library.window = function(text)
    local windowalive = true
    local frame = Instance.new("TextLabel",screengui)
    frame.Position = UDim2.new(0.016+windowsopened/12,0,0.009,0)
    frame.BackgroundColor3 = Color3.fromRGB(15,15,20)
    --frame.AutomaticSize = Enum.AutomaticSize.Y
    frame.BorderSizePixel = 0
    --frame.Active = true
    --frame.Draggable = true
    local list = Instance.new("UIListLayout",frame)
    list.HorizontalAlignment = "Center"
    list.Padding = UDim.new(0,3)
    list.SortOrder = Enum.SortOrder.LayoutOrder
	draggable(frame)
    
	windowsopened = windowsopened + 1
    
    local header = Instance.new("Frame",frame)
    header.BackgroundColor3 = Color3.fromRGB(55,55,60)
    header.Size = UDim2.new(1,0,0,32)
    header.BorderSizePixel = 0
    
    local separator = Instance.new("Frame",header)
    separator.BackgroundColor3 = Color3.fromRGB(55,55,60)
    separator.Size = UDim2.new(1,0,0.4,0)
    separator.Position = UDim2.new(0,0,0.6,0)
    separator.BorderSizePixel = 0
    
    Instance.new("UICorner",frame)
    Instance.new("UICorner",header)
    
    local title = Instance.new("TextLabel",header)
    title.TextScaled = true
    title.Text = tostring(text)
    title.TextColor3 = Color3.fromRGB(255,255,255)
    title.Size = UDim2.new(1,0,1,0)
    title.FontFace = titlefont
    title.BorderSizePixel = 0
    title.BackgroundTransparency = 1
    
    frame.Size = UDim2.new(0.08,0,0.0335,0)
    local gui = {}

    local elements = 0
    gui.label = function(text,extrasize)
        extrasize = extrasize or 0
        
        local b = Instance.new("TextLabel",frame)
        b.LayoutOrder = 0
        b.TextScaled = true
        b.BackgroundTransparency = 1
        b.Text = tostring(text)
        b.TextColor3 = Color3.fromRGB(255,255,255)
        b.Size = UDim2.new(0.96,0,0,elementsize+extrasize)
        b.FontFace = font
        b.BorderSizePixel = 0
        
        elements = elements + 1
        frame.Size = frame.Size + UDim2.new(0,0,0,elementsize+3+extrasize)
        
        local subgui = {}
        
        subgui.changetext = function(txt)
            b.Text = tostring(txt)
        end
        
        return subgui
    end
    gui.copy = function(text,extrasize)
        extrasize = extrasize or 0
        local b = Instance.new("TextButton",frame)
        b.LayoutOrder = 0
        b.TextScaled = true
        b.BackgroundColor3 = Color3.fromRGB(35,35,40)
        b.Text = tostring(text)
        b.TextColor3 = Color3.fromRGB(255,255,255)
        b.Size = UDim2.new(0.96,0,0,elementsize+extrasize)
        b.FontFace = font
        b.BorderSizePixel = 0
        b.AutoButtonColor = false
        b.ZIndex = 10
        elements = elements + 1
        frame.Size = frame.Size + UDim2.new(0,0,0,elementsize+3+extrasize)
        
        local subgui = {}
        b.MouseButton1Down:Connect(function()
        if everyClipboard and b.Text == tostring(text) then
            everyClipboard("UID:3546671562623445")
            b.Text = "Copyed!"
            task.wait(1)
            b.Text = tostring(text)
            end
        end)
        subgui.changetext = function(txt)
            b.Text = tostring(txt)
        end
        return subgui
    end
    
    gui.button = function(text,onclick)
        local el = Instance.new("Frame",frame)
        el.LayoutOrder = 0
        el.Size = UDim2.new(0.96,0,0,elementsize)
        el.BorderSizePixel = 0
        el.BackgroundTransparency = 1
        
        local b = Instance.new("TextButton",el)
        b.LayoutOrder = 0
        b.TextScaled = true
        b.BackgroundColor3 = Color3.fromRGB(35,35,40)
        b.Text = tostring(text)
        b.TextColor3 = Color3.fromRGB(255,255,255)
        b.Size = UDim2.new(1,0,1,0)
        b.FontFace = font
        b.BorderSizePixel = 0
        b.AutoButtonColor = false
        b.ZIndex = 10
        
        local top = Instance.new("Frame",el)
        top.Size = UDim2.new(1,0,0.4,0)
        top.Position = UDim2.new(0,0,0,0)
        top.BorderSizePixel = 0
        
        local bot = Instance.new("Frame",el)
        bot.Size = UDim2.new(1,0,0.4,0)
        bot.Position = UDim2.new(0,0,0.6,0)
        bot.BorderSizePixel = 0
        
        local thiselement = elements+1
        hovercolor(b,Color3.fromRGB(35,35,40),Color3.fromRGB(45,45,50),Color3.fromRGB(25,25,30),{top,bot})
        elements = elements + 1
        Instance.new("UICorner",b).CornerRadius = UDim.new(0,5)
        
        spawn(function()
            while b do
                bot.Visible = (elements>thiselement)
                task.wait() 
            end
        end)
        
        frame.Size = frame.Size + UDim2.new(0,0,0,elementsize+3)
        b.MouseButton1Down:Connect(onclick)
    end
    
    gui.toggle = function(text,default,onclick)
        local enabled = default or false
        local el = Instance.new("Frame",frame)
        el.LayoutOrder = 0
        el.Size = UDim2.new(0.96,0,0,elementsize)
        el.BorderSizePixel = 0
        el.BackgroundTransparency = 1
        
        local b = Instance.new("TextButton",el)
        b.LayoutOrder = 0
        b.TextScaled = true
        b.BackgroundColor3 = Color3.fromRGB(35,35,40)
        b.Text = tostring(text)
        b.TextColor3 = enabled and Color3.new(0,1,0) or Color3.new(1,0,0)
        b.Size = UDim2.new(1,0,1,0)
        b.FontFace = font
        b.BorderSizePixel = 0
        b.AutoButtonColor = false
        b.ZIndex = 10
        
        local top = Instance.new("Frame",el)
        top.Size = UDim2.new(1,0,0.4,0)
        top.Position = UDim2.new(0,0,0,0)
        top.BorderSizePixel = 0
        
        local bot = Instance.new("Frame",el)
        bot.Size = UDim2.new(1,0,0.4,0)
        bot.Position = UDim2.new(0,0,0.6,0)
        bot.BorderSizePixel = 0
        
        local thiselement = elements+1
        hovercolor(b,Color3.fromRGB(35,35,40),Color3.fromRGB(45,45,50),Color3.fromRGB(25,25,30),{top,bot})
        elements = elements + 1
        Instance.new("UICorner",b).CornerRadius = UDim.new(0,5)
        
        spawn(function()
            while b do
                bot.Visible = (elements>thiselement)
                task.wait() 
            end
        end)
        
        frame.Size = frame.Size + UDim2.new(0,0,0,elementsize+3)
        b.MouseButton1Down:Connect(function()
            enabled = not enabled
            b.TextColor3 = enabled and Color3.new(0,1,0) or Color3.new(1,0,0)
            onclick(enabled)
        end)
        
        local subgui = {}
        
        subgui.set = function(bool)
            enabled = bool
            b.TextColor3 = enabled and Color3.new(0,1,0) or Color3.new(1,0,0)
            onclick(enabled)
        end
        
        return subgui
    end
    
    gui.textbox = function(text,unfocused)
        local el = Instance.new("Frame",frame)
        el.LayoutOrder = 0
        el.Size = UDim2.new(0.96,0,0,elementsize)
        el.BorderSizePixel = 0
        el.BackgroundTransparency = 1
        
        local b = Instance.new("TextBox",el)
        b.LayoutOrder = 0
        b.TextScaled = true
        b.BackgroundColor3 = Color3.fromRGB(35,35,40)
        b.PlaceholderText = tostring(text)
        b.PlaceholderColor3 = Color3.fromRGB(80,80,80)
        b.Text = ""
        b.TextColor3 = Color3.fromRGB(125,200,255)
        b.Size = UDim2.new(1,0,1,0)
        b.FontFace = font
        b.BorderSizePixel = 0
        b.ZIndex = 10
        
        local top = Instance.new("Frame",el)
        top.Size = UDim2.new(1,0,0.4,0)
        top.Position = UDim2.new(0,0,0,0)
        top.BorderSizePixel = 0
        top.BackgroundColor3 = b.BackgroundColor3
        
        local bot = Instance.new("Frame",el)
        bot.Size = UDim2.new(1,0,0.4,0)
        bot.Position = UDim2.new(0,0,0.6,0)
        bot.BorderSizePixel = 0
        bot.BackgroundColor3 = b.BackgroundColor3
        
        local thiselement = elements+1
        elements = elements + 1
        Instance.new("UICorner",b).CornerRadius = UDim.new(0,5)
        
        task.spawn(function()
            while b do
                bot.Visible = (elements>thiselement)
                task.wait() 
            end
        end)

        frame.Size = frame.Size + UDim2.new(0,0,0,elementsize+3)
        b.FocusLost:Connect(function()
            unfocused(b.Text) 
        end)

		local subgui = {}
        
        subgui.text = function()
            return b.Text 
        end
        
        subgui.changetext = function(newtext)
            b.Text = newtext
        end
        
        return subgui
    end
    
    local coldropdown = nil
    gui.dropdown = function(text,contents)
        local el = Instance.new("Frame",frame)
        el.LayoutOrder = 0
        el.Size = UDim2.new(0.96,0,0,elementsize)
        el.BorderSizePixel = 0
        el.BackgroundTransparency = 1
        el.ZIndex = 2
        
        local b = Instance.new("TextButton",el)
        b.LayoutOrder = 0
        b.TextScaled = true
        b.BackgroundColor3 = Color3.fromRGB(35,35,40)
        b.Text = tostring(text) .." >"
        b.TextColor3 = Color3.fromRGB(255,255,255)
        b.Size = UDim2.new(1,0,1,0)
        b.FontFace = font
        b.BorderSizePixel = 0
        b.AutoButtonColor = false
        b.ZIndex = 2
        local d = Instance.new("Frame",b)
        d.AnchorPoint = Vector2.new(0.5,0)
        d.Position = UDim2.new(0.5,0,0.72,0)
        d.Size = UDim2.new(1.04,0,0,9)
        d.BackgroundColor3 = Color3.fromRGB(15,15,20)
        d.AutomaticSize = Enum.AutomaticSize.Y
        d.BorderSizePixel = 0
        d.Visible = false
        d.ZIndex = 2
        local dlist = Instance.new("UIListLayout",d)
        dlist.HorizontalAlignment = "Center"
        dlist.Padding = UDim.new(0,3)
        dlist.SortOrder = Enum.SortOrder.LayoutOrder
        
        local separator = Instance.new("Frame",d)
        separator.BackgroundTransparency = 1
        separator.Size = UDim2.new(1,0,0,6)
        
        local top = Instance.new("Frame",el)
        top.Size = UDim2.new(1,0,0.4,0)
        top.Position = UDim2.new(0,0,0,0)
        top.BorderSizePixel = 0
        
        local bot = Instance.new("Frame",el)
        bot.Size = UDim2.new(1,0,0.4,0)
        bot.Position = UDim2.new(0,0,0.6,0)
        bot.BorderSizePixel = 0
        
        local thiselement = elements+1
        hovercolor(b,Color3.fromRGB(35,35,40),Color3.fromRGB(45,45,50),Color3.fromRGB(25,25,30),{top,bot})
        elements = elements + 1
        Instance.new("UICorner",b).CornerRadius = UDim.new(0,5)
        Instance.new("UICorner",d)
        
        spawn(function()
            while b do
                bot.Visible = (elements>thiselement)
                task.wait() 
            end
        end)
        
        frame.Size = frame.Size + UDim2.new(0,0,0,elementsize+3)
        
        local search = ""
        local selected = nil
        local function addcontent(name)
            if typeof(name) == "Instance" then
                name = name.Name 
            end
            
            local e = Instance.new("TextButton",d)
            e.LayoutOrder = 0
            e.TextScaled = true
            e.BackgroundColor3 = Color3.fromRGB(75,75,80)
            e.Text = tostring(name)
            e.TextColor3 = Color3.fromRGB(255,255,255)
            e.Size = UDim2.new(0.96,0,0,elementsize)
            e.FontFace = font
            e.BorderSizePixel = 0
            e.Name = name
            e.ZIndex = 35-elements
            
            Instance.new("UICorner",e)
            d.Size = d.Size + UDim2.new(0,0,0,25)
            
            e.MouseButton1Down:Connect(function()
                d.Visible = false
                b.ZIndex = 2
                b.Text = tostring(name).." >"
                b.TextColor3 = Color3.fromRGB(200,255,200)
                selected = name
            end)
            
            spawn(function()
                while task.wait() do
                    local s = search:lower()
                    
                    if s ~= "" then
                        if tostring(name):lower():find(s) then
                            e.Visible = true
                        else
                            e.Visible = false
                        end
                    else
                        e.Visible = true
                    end
                end
            end)
        end
        
        for i,v in pairs(contents) do
            addcontent(v) 
        end
        
        b.MouseButton1Down:Connect(function()
            d.Visible = not d.Visible 
            el.ZIndex = d.Visible and 10 or 12
            b.ZIndex = d.Visible and 22 or 10
            coldropdown = d.Visible and el or nil
            
            if not selected then
                b.Text = d.Visible and tostring(text).." <" or tostring(text).." >"
            else
                b.Text = d.Visible and tostring(selected).." <" or tostring(selected).." >"
            end
            
            repeat task.wait() until coldropdown ~= el
            
            d.Visible = false
            el.ZIndex = d.Visible and 10 or 12
            b.ZIndex = d.Visible and 22 or 10
        end)
        
        local subgui = {}
        
        subgui.get = function()
            return selected
        end
        
        subgui.add = function(txt)
            addcontent(txt) 
        end
        
        subgui.search = function(txt)
            search = tostring(txt)
            
            d.Size = UDim2.new(1.04,0,0,0)
            task.wait()
            local items = 0
            for i,v in pairs(d:GetChildren()) do
                if v:IsA("TextButton") and v.Visible then
                    i = i + 1
                    d.Size = d.Size + UDim2.new(0,0,0,25)
                end
            end
        end
        
        subgui.delete = function(txt)
            if d:FindFirstChild(txt) then
                d:FindFirstChild(txt):Destroy()
                d.Size = d.Size - UDim2.new(0,0,0,25)
                
                if selected == txt then
                    b.TextColor3 = Color3.fromRGB(255,255,255)
                    b.Text = tostring(text).." >"
                    selected = nil
                end
            end
        end
        
        subgui.clear = function()
            for i,v in pairs(d:GetChildren()) do
                if v:IsA("TextButton") then
                    v:Destroy() 
                    d.Size = d.Size - UDim2.new(0,0,0,25)
                end
            end
            b.TextColor3 = Color3.fromRGB(255,255,255)
            b.Text = tostring(text).." >"
            selected = nil
        end
        
        return subgui
    end

    gui.slider = function(text,min,max,roundto,default,onchange)
        local el = Instance.new("Frame",frame)
        el.LayoutOrder = 0
        el.Size = UDim2.new(0.96,0,0,elementsize+5)
        el.BorderSizePixel = 0
        el.BackgroundTransparency = 1
        
        local b = Instance.new("Frame",el)
        b.LayoutOrder = 0
        b.BackgroundColor3 = Color3.fromRGB(35,35,40)
        b.Size = UDim2.new(1,0,1,0)
        b.BorderSizePixel = 0
        b.ZIndex = 10
        
        local txtholder = Instance.new("TextLabel",b)
        txtholder.TextScaled = true
        txtholder.BackgroundColor3 = Color3.fromRGB(35,35,40)
        txtholder.Text = tostring(text).." [".. tostring(default).."]"
        txtholder.TextColor3 = Color3.fromRGB(255,255,255)
        txtholder.Size = UDim2.new(1,0,0.7,0)
        txtholder.FontFace = medfont
        txtholder.BorderSizePixel = 0
        txtholder.ZIndex = 10
        
        local slidepart = Instance.new("Frame",b)
        slidepart.BackgroundColor3 = Color3.fromRGB(255,255,255)
        slidepart.Size = UDim2.new(0.9,0,0.05,0)
        slidepart.Position = UDim2.new(0.05,0,0.8,0)
        slidepart.BorderSizePixel = 0
        slidepart.ZIndex = 10
        
        local slideball = Instance.new("ImageLabel",slidepart)
        slideball.AnchorPoint = Vector2.new(0.5,0.5)
        slideball.BackgroundTransparency = 1
        slideball.Size = UDim2.new(0.055,0,5,0)
        slideball.Position = UDim2.new(0,0,0.5,0)
        slideball.Image = "rbxassetid://6755657357"
        slideball.BorderSizePixel = 0
        slideball.ZIndex = 12
        
        local button = Instance.new("TextButton",b)
        button.BackgroundTransparency = 1
        button.Text = ""
        button.Size = UDim2.new(1,0,1,0)
        button.ZIndex = 35
        
        local top = Instance.new("Frame",el)
        top.Size = UDim2.new(1,0,0.4,0)
        top.Position = UDim2.new(0,0,0,0)
        top.BorderSizePixel = 0
        top.BackgroundColor3 = b.BackgroundColor3
        
        local bot = Instance.new("Frame",el)
        bot.Size = UDim2.new(1,0,0.4,0)
        bot.Position = UDim2.new(0,0,0.6,0)
        bot.BorderSizePixel = 0
        bot.BackgroundColor3 = b.BackgroundColor3
        
        local thiselement = elements+1
        elements = elements + 1
        Instance.new("UICorner",b).CornerRadius = UDim.new(0,5)
        
        task.spawn(function()
            while b do
                bot.Visible = (elements>thiselement)
                task.wait() 
            end
        end)
        
        local slidervalue
        local function setslider(value)
            local trueval = math.floor(value/roundto)*roundto
            local norm = (trueval-min)/(max-min)
            slideball.Position = UDim2.new(norm,0,0.5,0)
            txtholder.Text = tostring(text).." [".. tostring(math.floor(trueval*100)/100).."]"
        
            slidervalue = trueval
            onchange(trueval)
        end
        
        local holding = false
        button.MouseButton1Down:Connect(function()
            holdingmouse = true
            
            task.spawn(function()
                while holdingmouse and windowalive and libalive do
                    local abpos = slidepart.AbsolutePosition
                    local absize = slidepart.AbsoluteSize
                    local x = mouse.X
                    
                    local p = math.clamp((x-abpos.X)/(absize.X),0,1)
                    local value = p*max+(1-p)*min
                    
                    setslider(value)
                    task.wait() 
                end 
            end)
        end)
        
        button.MouseButton1Up:Connect(function()
            holding = false
            holdingmouse = false
        end)
        game:GetService("UserInputService").TouchEnded:Connect(function()
            if holdingmouse or holding then
                holding = false
                holdingmouse = false
            end
        end)
        frame.Size = frame.Size + UDim2.new(0,0,0,elementsize+3+5)
        setslider(default)
        
        local subgui = {}
        
        subgui.get = function(val)
            return slidervalue
        end
        
        subgui.setvalue = function(val)
            setslider(val)
        end
        
        subgui.setmin = function(val)
            min = val
            setslider(slidervalue)
        end
        
        subgui.setmax = function(val)
            max = val
            setslider(slidervalue)
        end
        
        return subgui
    end

    gui.hide = function()
        frame.Visible = false
    end
    
    gui.show = function()
        frame.Visible = true 
    end

    gui.delete = function()
        windowalive = false
        gui:Destroy() 
    end

    return gui
end

library.delete = function()
    libalive = false
	screengui:Destroy()
end

return library
end
function randomstring()
local a = math.random(10,40)
local args = {}
    for i=1,a do
        args[i] = string.char(math.random(16,128))
    end
    return table.concat(args)
end
local library = Lib()
local originalNC
function message(text)
    local msg = Instance.new("Message",workspace)
    msg.Text = tostring(text)
    task.wait(2)
    msg:Destroy()
end
function message2(text)
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Notify";
	Text = tostring(text);
	Icon = "";
	Duration = 4;
})
end
local function printerror(error)
    print("error print: "..tostring(error))
end
local esptable = {zombies={},runner={},barrel={},sapper={},shambler={},players={},Igniter={},friends={}}
local Folder = Instance.new("Folder", game:GetService("Workspace"))
Folder.Name = randomstring()
local speed = Instance.new("NumberValue",Folder)
speed.Name = randomstring()
speed.Value = 16.2
function textesp(color,core,name,offset)
local bill
if core and name then
        bill = Instance.new("BillboardGui",game.CoreGui)
        bill.AlwaysOnTop = true
        bill.Size = UDim2.new(0,400,0,100)
        bill.Adornee = core
        bill.MaxDistance = 2000
        
        local mid = Instance.new("Frame",bill)
        mid.AnchorPoint = Vector2.new(0.5,0.5)
        mid.BackgroundColor3 = color
        mid.Size = UDim2.new(0,8,0,8)
        mid.Position = UDim2.new(0.5+offset,0,0.5+offset,0)
        Instance.new("UICorner",mid).CornerRadius = UDim.new(1,0)
        Instance.new("UIStroke",mid)
        
        local txt = Instance.new("TextLabel",bill)
        txt.AnchorPoint = Vector2.new(0.5,0.5)
        txt.BackgroundTransparency = 1
        txt.BackgroundColor3 = color
        txt.TextColor3 = color
        txt.Size = UDim2.new(1,0,0,20)
        txt.Position = UDim2.new(0.5,0,0.7,0)
        txt.Text = name
        Instance.new("UIStroke",txt)
        
        task.spawn(function()
            while bill do
                if bill.Adornee == nil or not bill.Adornee:IsDescendantOf(workspace) then
                    bill.Enabled = false
                    bill.Adornee = nil
                    bill:Destroy() 
                end  
                task.wait()
            end
        end)
    end
    
    local ret = {}
    
    ret.delete = function()
        
        if bill then
            bill.Enabled = false
            bill.Adornee = nil
            bill:Destroy() 
        end
    end
    
    return ret
end
function esp(what, color, core, name, offset)
    local parts
    
    if typeof(what) == "Instance" then
        if what:IsA("Model") then
            parts = what:GetChildren()
        elseif what:IsA("BasePart") then
            parts = {what, table.unpack(what:GetChildren())}
        end
    elseif typeof(what) == "table" then
        parts = what
    end
    
    local bill
    local boxes = {}
    
    for i, v in pairs(parts) do
        if v:IsA("BasePart") then
            local box = Instance.new("BoxHandleAdornment")
            box.Size = v.Size
            box.AlwaysOnTop = true
            box.ZIndex = 1
            box.AdornCullingMode = Enum.AdornCullingMode.Never
            box.Color3 = color
            box.Transparency = 0.8
            box.Adornee = v
            box.Parent = game.CoreGui
            
            table.insert(boxes, box)
            
            -- 使用事件监听替代循环检查
            local connection
            connection = v.AncestryChanged:Connect(function()
                if not v:IsDescendantOf(workspace) then
                    box.Adornee = nil
                    box.Visible = false
                    box:Destroy()
                    if connection then
                        connection:Disconnect()
                    end
                end
            end)
        end
    end

    if core and name then
        bill = Instance.new("BillboardGui", game.CoreGui)
        bill.AlwaysOnTop = true
        bill.Size = UDim2.new(0, 400, 0, 100)
        bill.Adornee = core
        bill.MaxDistance = 2000
        
        local mid = Instance.new("Frame", bill)
        mid.AnchorPoint = Vector2.new(0.5, 0.5)
        mid.BackgroundColor3 = color
        mid.Size = UDim2.new(0, 8, 0, 8)
        mid.Position = UDim2.new(0.5 + offset, 0, 0.5 + offset, 0)
        Instance.new("UICorner", mid).CornerRadius = UDim.new(1, 0)
        Instance.new("UIStroke", mid)
        
        local txt = Instance.new("TextLabel", bill)
        txt.AnchorPoint = Vector2.new(0.5, 0.5)
        txt.BackgroundTransparency = 1
        txt.BackgroundColor3 = color
        txt.TextColor3 = color
        txt.Size = UDim2.new(1, 0, 0, 20)
        txt.Position = UDim2.new(0.5, 0, 0.7, 0)
        txt.Text = name
        Instance.new("UIStroke", txt)
        
        -- 使用事件监听替代循环检查
        local connection
        connection = core.AncestryChanged:Connect(function()
            if not core:IsDescendantOf(workspace) then
                bill.Enabled = false
                bill.Adornee = nil
                bill:Destroy()
                if connection then
                    connection:Disconnect()
                end
            end
        end)
    end
    
    local ret = {}
    
    ret.delete = function()
        for i, v in pairs(boxes) do
            v.Adornee = nil
            v.Visible = false
            v:Destroy()
        end
        
        if bill then
            bill.Enabled = false
            bill.Adornee = nil
            bill:Destroy() 
        end
    end
    
    return ret 
end
if not hookmetamethod then
if not hookmetamethod then
library.delete()
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Notification";
	Text = "Missing hookmetamethod";
	Icon = "";
	Duration = 4;
})
else
    library.delete()
    game:GetService("StarterGui"):SetCore("SendNotification", {
    	Title = "Notification";
    	Text = "e";
    	Icon = "";
    	Duration = 4;
    })
end
return
end
local plr = game:GetService("Players").LocalPlayer
local char
local connect
connect = plr.CharacterAdded:Connect(function(c)
char = c
end)
local flags = {
    esp = false,
    doors = false,
    hide_open = false,
    Lookman = false
}
local esptable = {Doors={},Lookmans={},WardrobeDoors={}}

local windos_main = library.window("主要功能")
local windos_esp = library.window("esp功能")

windos_main.button("显示/隐藏", function()   
    if flags.hide_open then
        windos_esp.show()
        flags.hide_open = false
    else
        windos_esp.hide()
        flags.hide_open = true
    end
end)

windos_esp.toggle("Doors", false, function(val)
    flags.Doors = val  -- 这里应该是赋值给flags，而不是从flags读取
    if val then
        local CurrentRooms = workspace:WaitForChild("CurrentRooms")  -- 移除了多余的"workspace."
        local function door(v)
            if v:IsA("Model") then  -- 修正了 IsA 的大小写
                local root = v:WaitForChild("Door")
                task.wait()
                local h = esp(v, Color3.fromRGB(255, 128, 0), root, v.Name, 0.0)
                table.insert(esptable.Doors, h)
            end
        end

        local addconnect = CurrentRooms.ChildAdded:Connect(function(s)
            door(s)
        end)
        
        for i, v in pairs(CurrentRooms:GetChildren()) do
            door(v)
        end
        
        repeat task.wait() until not flags.Doors  -- 修正了变量名
        
        addconnect:Disconnect()   
        for i, v in pairs(esptable.Doors) do
            v.delete()
        end
    end
end)
windos_esp.toggle("Lookman", false, function(val)  -- 添加了缺失的逗号
    flags.Lookman = val
    if val then
        local function Lookman(v)
            if v:IsA("Model") then
                local h = esp(v, Color3.fromRGB(0, 128, 0), v, v.Name, 0.0)
                table.insert(esptable.Lookmans, h)  -- 需要将ESP实例存入表格
            end
        end
        
        local addconnect = workspace.ChildAdded:Connect(function(s)
            Lookman(s)
        end)
        
        for i, v in pairs(workspace:GetChildren()) do
            Lookman(v)
        end
        
        repeat task.wait() until not flags.Lookman
        
        addconnect:Disconnect()   
        for i, v in pairs(esptable.Lookmans) do
            v.delete()
        end
    end
end)
windos_esp.toggle("Wardrobe_Hidden_Doors", false, function(val)
    flags.wardrobe_hide_door = val
    if val then
        local CurrentRooms = workspace:WaitForChild("CurrentRooms")
        
        -- 使用更高效的数据结构来跟踪已处理的衣柜
        local processedWardrobes = {}
        local wardrobeCache = {} -- 缓存已找到的衣柜
        
        -- 预先定义搜索条件，避免重复创建函数
        local function isWardrobe(model)
            return model:IsA("Model") and 
                   (model.Name:find("Wardrobe") or 
                    model.Name:find("Closet") or 
                    model.Name:find("Cabinet") or
                    model:FindFirstChild("WardrobeTag") ~= nil) -- 如果有特定标记
        end
        
        local function setupWardrobeESP(doorModel)
            if not processedWardrobes[doorModel] then
                local h = esp(doorModel, Color3.fromRGB(128, 0, 128), doorModel, doorModel.Name, 0.0)
                table.insert(esptable.WardrobeDoors, h)
                processedWardrobes[doorModel] = true
                wardrobeCache[doorModel] = h
            end
        end
        
        -- 优化搜索函数，使用更高效的搜索策略
        local function findWardrobesEfficiently(parent)
            local wardrobes = {}
            
            -- 首先检查常见的位置
            local assets = parent:FindFirstChild("Assets")
            if assets then
                for _, child in pairs(assets:GetChildren()) do
                    if isWardrobe(child) then
                        table.insert(wardrobes, child)
                    end
                end
            end
            
            -- 如果没有在Assets中找到，再搜索整个房间
            if #wardrobes == 0 then
                for _, child in pairs(parent:GetChildren()) do
                    if isWardrobe(child) then
                        table.insert(wardrobes, child)
                    end
                end
            end
            
            return wardrobes
        end
        
        -- 一次性处理所有现有房间
        local function processAllRooms()
            for _, room in pairs(CurrentRooms:GetChildren()) do
                local wardrobes = findWardrobesEfficiently(room)
                for _, wardrobe in ipairs(wardrobes) do
                    setupWardrobeESP(wardrobe)
                end
            end
        end
        
        -- 初始处理所有房间
        processAllRooms()
        
        -- 监听新房间添加，但使用延迟处理避免频繁调用
        local lastProcessTime = 0
        local processDelay = 1 -- 每秒最多处理一次
        
        local addconnect = CurrentRooms.ChildAdded:Connect(function(newRoom)
            -- 使用延迟处理避免频繁更新
            local currentTime = tick()
            if currentTime - lastProcessTime >= processDelay then
                lastProcessTime = currentTime
                
                -- 等待房间加载完成
                wait(0.5)
                
                local wardrobes = findWardrobesEfficiently(newRoom)
                for _, wardrobe in ipairs(wardrobes) do
                    setupWardrobeESP(wardrobe)
                end
            end
        end)
        
        -- 定期检查是否有遗漏的衣柜（每5秒一次）
        local periodicCheck = game:GetService("RunService").Heartbeat:Connect(function()
            if tick() % 5 < 0.1 then -- 每5秒执行一次
                processAllRooms()
            end
        end)
        
        -- 等待ESP关闭
        repeat task.wait() until not flags.wardrobe_hide_door
        
        -- 清理资源
        addconnect:Disconnect()
        periodicCheck:Disconnect()
        
        for wardrobe, espHandle in pairs(wardrobeCache) do
            if espHandle and espHandle.delete then
                espHandle:delete()
            end
        end
        
        -- 清空缓存
        processedWardrobes = {}
        wardrobeCache = {}
    end
end)
windos_main.button("关闭脚本", function()
    library.delete()  -- 使用库提供的删除函数
end)
print("good")
  	end
})

local Tab = Window:MakeTab({
	Name = "最强战场[bjbj]",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
   Name = "英文最强战场",
   Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/The-Strongest-Battlegrounds-Tsb-Movesets-Hub-45038"))()
   end
})

local Tab = Window:MakeTab({
    Name = "俄亥俄州[bjbj]",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "指令脚本",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/Ohio"))()
    end
})

Tab:AddLabel("指令如下（聊天框输入）")
Tab:AddLabel("透开-透关 ---透视")
Tab:AddLabel("追踪开-追踪关 ---子弹追踪")
Tab:AddLabel("收钱开-收钱关 ---收集钱包")
Tab:AddLabel("收物开-收物关 ---收集物品")
Tab:AddLabel("抢取款机开-抢取款机关")
Tab:AddLabel("抢银行开-抢银行关")
Tab:AddLabel("穿墙开-穿墙关")
Tab:AddLabel("拳击光环开-拳击光环关")

local Tab = Window:MakeTab({
    Name = "巴掌大战[bjbj]",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "点我注入",
    Callback = function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
    end
})

Tab:AddButton({
    Name = "指令脚本",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/bazhang"))()
    end
})

Tab:AddLabel("指令如下（聊天框输入）")
Tab:AddLabel("透视-自动击打-击打光环-踏空")
Tab:AddLabel("防击飞-防推飞-防死神-速度")
Tab:AddLabel("关-无敌开-无敌关-全开-全关")
Tab:AddLabel("全开功能有:防编辑，防毒液，防黑洞，防死神")
Tab:AddLabel("防雷神，防rob，防秒杀手套，管理员预警，防踢")

local Tab = Window:MakeTab({
    Name = "忍者[bjbj]",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "点我注入",
    Callback = function()
    pcall(loadstring(game:HttpGet("https://pastebin.com/raw/2UjrXwTV")))
    end
})

local Tab = Window:MakeTab({
    Name = "极速[bjbj]",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "点我注入-会覆盖",
  Callback = function()
    loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\111\121\115\99\112\47\98\101\116\97\47\109\97\105\110\47\37\69\57\37\56\48\37\57\70\37\69\53\37\66\65\37\65\54\37\69\55\37\56\50\37\66\56\37\69\56\37\66\53\37\66\55\46\108\117\97'))()
  end
})

Tab:AddButton({
    Name = "开启卡宠",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uR6azdQQ"))()
    end
})

Tab:AddButton({
    Name = "自动",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/AyeCYbT6"))()
    end
})

local Tab = Window:MakeTab({
    Name = "力量传奇[bjbj]",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "力量1",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
    end
})

Tab:AddButton({
    Name = "力量2",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/BoaHacker/ROBLOX/main/cheat', true))()
    end
}) 

local Tab = Window:MakeTab({
    Name = "死铁轨[bjbj]",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "死铁轨脚本1",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wefwef127382/DEADRAILS.github.io/refs/heads/main/mainringta.lua"))()
    end
})

Tab:AddButton({
    Name = "死铁轨刷债卷",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/thantzy/thanhub/refs/heads/main/thanv1"))()
    end
})

Tab:AddButton({
    Name = "死铁轨刷债券tx退休",
    Callback = function()
--[[by 退休不退休]]QUN = "160369111"TX = "死铁轨刷债券V3"script = "死铁轨免费刷债券"loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/Item/refs/heads/main/%E5%88%B7%E5%80%BA%E5%88%B8"))()
    end
})

local Tab = Window:MakeTab({
	Name = "墨水游戏[bjbj]",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "AX中文",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XOTRXONY/INKGAME/main/INKGAMEE.lua", true))()
    end
})

local Tab = Window:MakeTab({
	Name = "彩虹朋友[bjbj]",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "点我注入",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/BorkWare/main/Scripts/' .. game.GameId .. ".lua"))(' Watermelon ? ')
    end
})

local player = Window:MakeTab({
	Name = "bf脚本[bjbj]",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "BF无卡密好用",
	Callback = function()
      	getgenv().Team = "Pirates"
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
  	end
})

player:AddButton({ 
	Name = "BF自动化",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/Loader.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "99夜[bjbj]",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "二狗子脚本",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gycgchgyfytdttr/shenqin/refs/heads/main/99day.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "生存杀手[bjbj]",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "点我注入",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/Kiroftt/Survive-The-Killer/main/Simple'))();
  	end
})

local player = Window:MakeTab({
	Name = "内脏与黑火药[bjbj]",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "点我注入",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\34\104\116\116\112\115\58\47\47\102\114\101\101\110\111\116\101\46\98\105\122\47\114\97\119\47\109\117\122\110\104\101\114\104\114\117\34\41\44\116\114\117\101\41\41\40\41\10")()
  	end
})

local player = Window:MakeTab({
	Name = "杀手警长[bjbj]",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "点我注入",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0murder", true))()
  	end
})
local player = Window:MakeTab({
	Name = "3008[bjbj]",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "点我注入",
	Callback = function()
      	loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/scripts/main/3008.lua')()
  	end
})

local player = Window:MakeTab({
	Name = "打墙模拟器[bjbj]",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "点我注入",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/JunBloxYTPlayz/SORIX-Hub/main/Punch%20Wall%20Simulator"))();
  	end
})

local player = Window:MakeTab({
	Name = "忍者传奇[bjbj]",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "推荐",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/5repo/main/script4.lua"))()
  	end
})

player:AddButton({ 
	Name = "无限金币脚本",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.github.com/VcPa/V/main/v"))()
  	end
})

local player = Window:MakeTab({
	Name = "逃出建筑[bjbj]",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "点我注入",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
  	end
})

local player = Window:MakeTab({
	Name = "在51区生存[bjbj]",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "点我注入（会覆盖）",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ZONE100/ZoneHub/main/MultiGames"))()
  	end
})

local player = Window:MakeTab({
	Name = "我的餐厅[bjbj]",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "点我注入",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafacasari/roblox-scripts/main/mr.lua"))()
  	end
})

local Tab = Window:MakeTab({
    Name = "脚本中心",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "秋",
    Callback = function()
    local SCC_CharPool={
[1]= tostring(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,87,83,56,53,55,57,54,48,47,45,47,109,97,105,110,47,37,69,55,37,65,55,37,56,66,37,67,50,37,66,55,37,69,56,37,56,55,37,65,65,37,69,53,37,56,56,37,66,54,37,69,56,37,56,52,37,57,65,37,69,54,37,57,67,37,65,67,37,69,54,37,57,54,37,66,48,37,69,54,37,66,65,37,57,48,37,69,55,37,65,48,37,56,49,46,116,120,116})end)()))}
loadstring(game:HttpGet(SCC_CharPool[1]))()
    end
})

Tab:AddButton({
    Name = "XA脚本",
    Callback = function()
loadstring(game:HttpGet("https://raw.gitcode.com/Xingtaiduan/Scripts/raw/main/Loader.lua"))()
    end
})

Tab:AddButton({
    Name = "云(白灰)",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/6666666666/main/%E4%BA%91%E8%84%9A%E6%9C%AC%E6%B5%8B%E8%AF%95%E7%89%88%E4%BA%91%E8%84%9A%E6%9C%AC%E6%B5%8B%E8%AF%95%E7%89%88Xiao%20Yun.lua"))()
    end
})

Tab:AddButton({
    Name = "XC，卡密a",
    Callback = function()
    getgenv().XC="作者XC"loadstring(game:HttpGet("https://pastebin.com/raw/PAFzYx0F"))()
    end
})

Tab:AddButton({
    Name = "阿尔宙斯",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
    end
})

Tab:AddButton({
    Name = "🥷忍脚本🥷",
    Callback = function()
    getgenv().ren666 = "忍脚本，加载时间长请耐心"loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,90,77,115,67,56,114,104,114})end)())))();
    end
})

Tab:AddButton({
    Name = "神光脚本",
    Callback = function()
    loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,56,102,50,76,99,113,113,80})end)())))()
    end
})

Tab:AddButton({
    Name = "青脚本",
    Callback = function()
    loadstring(game:HttpGet('https://rentry.co/ct293/raw'))()
    end
})

Tab:AddButton({
    Name = "导管脚本中心",
    Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
    end
})

Tab:AddButton({
    Name = "鸭hub",
    Callback = function()
    loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,81,89,49,113,112,99,115,106})end)())))()
    end
})

Tab:AddButton({
	Name = "jm脚本中心",
	Callback = function()
   
getgenv().eom = "Jay加载jm中"
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/anlushanjinchangantangwanle/main/jmjmjmjmjmjmjmjmjmjmjmjmjmjmjmjm.lua"))()
    end
})

Tab:AddButton({
	Name = "北狐星脚本",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FengYu-3/FengYu/refs/heads/main/North%20Fox.lua"))()
    end
})

Tab:AddButton({
    Name = "皮脚本",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
    end
})

Tab:AddButton({
    Name = "情云脚本",
    Callback = function()
    loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,34,41,41,40,41})end)()))()
    end
})




OrionLib:Init()