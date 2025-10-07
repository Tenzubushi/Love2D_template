-- Simple smoke test using busted or plain Lua asserts
local Game = require('game')

local function run()
    assert(type(Game.load) == 'function', 'Game.load must exist')
    assert(type(Game.update) == 'function', 'Game.update must exist')
    assert(type(Game.draw) == 'function', 'Game.draw must exist')
    print('smoke tests passed')
end

run()
