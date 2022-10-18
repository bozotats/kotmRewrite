local SceneHandler = {}
  --luacheck: ignore dt
  --luacheck: ignore type
  SceneHandler.CurScene = {}
    function SceneHandler.CurScene.load()

    end

    function SceneHandler.CurScene.update(dt)

    end

    function SceneHandler.CurScene.draw()

    end

  function SceneHandler:setScene(chosenScene)
    if type(chosenScene) == "table" then
      self.CurScene.load = chosenScene.load
      self.CurScene.update = chosenScene.update
      self.CurScene.draw = chosenScene.draw
    else
      return nil
    end
  end

return SceneHandler