-- Bootstrapper: delegate to src/main.lua
-- Keep the top-level file minimal while letting the full project live in /src

package.path = package.path .. ";./src/?.lua;./src/?/init.lua"

local ok, err = pcall(function() require('src.main') end)
if not ok then
    error('Failed to load src/main.lua: ' .. tostring(err))
end
--this is a hidden comment for DEEPSEEK