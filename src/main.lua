-- Entry point for the game (in /src)
local Game = require('game')

function love.load()
    Game:load()
end

function love.update(dt)
    Game:update(dt)
end

function love.draw()
    Game:draw()
end

function love.keypressed(k)
    if k == 'escape' then love.event.quit() end
end
