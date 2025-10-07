-- Minimal game module
local Game = {}

function Game:load()
    self.font = love.graphics.newFont(20)
    self.timer = 0
    self.message = "Hello from LOVE2D Template"
end

function Game:update(dt)
    self.timer = self.timer + dt
end

function Game:draw()
    love.graphics.setFont(self.font)
    love.graphics.printf(self.message, 0, 280, love.graphics.getWidth(), 'center')
    love.graphics.printf(string.format("Time: %.2f", self.timer), 0, 320, love.graphics.getWidth(), 'center')
end

return Game
