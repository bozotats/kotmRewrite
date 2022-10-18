-- luacheck: ignore require
-- luacheck: ignore self
local render_hand
local scene_hand
local ui_sys

function love.load()
    --load renderHandler class
    render_hand = require("modules/RenderingHandler")
    --load uiSystem class
    ui_sys = require("modules/uiSysDir/UiSystem")
    --load scenehandler class
    scene_hand = require("modules/SceneHandler")
    --load assets
    --load config
end

--luacheck: ignore dt
function love.update(dt)
    --Run all actors
    --update all actors screenCoordinates
    --worry about optimization way later, figure out a system to reduce graphical load.
end

function love.draw()

end