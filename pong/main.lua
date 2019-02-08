--[[
    Video aula : https://www.youtube.com/watch?v=jZqYXSmgDuM&t=0s&list=PLWKjhJtqVAbluXJKKbCIb4xd7fcRkpzoz&index=2
]]

push = require 'push'

WINDOW_WIDTH = 1200
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT,{
        fullscreen = false,
        resizable =false,
        vsync = true
    })
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.draw()
    push:apply('start')
    love.graphics.printf(
        'Hello Pong!',
        0,
        VIRTUAL_HEIGHT / 2-6,
        VIRTUAL_WIDTH,
        'center'
    )
    push:apply('end')
end

--25:21 minutos