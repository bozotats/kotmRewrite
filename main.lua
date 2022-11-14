-- luacheck: ignore require
-- luacheck: ignore self
-- !major changes to loading here, having only the scene handler load
-- and having each scene load whatever it needs is a much better idea, all we need is to load
-- the modules necessary per scene, this may also save performance a little bit depending on the
-- amount of modules, although, of course, at the expense of loading times being a little bit bigger.
-- TODO #1 make sure the current scenehandler is enough to work for scene loading. maybe self delete the instance running then have each scene declare its own scenehandler

local scene_hand


function love.load()
    --load renderHandler class
    --load uiSystem class
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