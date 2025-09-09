local sources = {
    [9898701280] = "loadstring(game:HttpGet("https://raw.githubusercontent.com/NBYYDSZX/Script2/main/%E7%95%8C%E9%9D%A2.lua"))()",
}

local oldRequire = require
require = function(src)
    if src == 9898701280 then
        return loadstring(game:HttpGet(sources[src]))()
    else
        return oldRequire(src)
    end
end

-- 用法示例
require(9898701280).1HUBKMZXNB("你的用户名")