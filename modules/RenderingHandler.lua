local RenderingHandler = {}
  -- We will by default declare that the number of layers is 0
  RenderingHandler.numberOfLayers = 0

  --This Table will contain data for all the layers
  RenderingHandler.layers = {}

  -- !should probably turn this whole layerConstructor function into a metatable method
  --This is a function that shouldnt be ran during game time, only during load screens n stuff
  --@param OffsetRate movement of the layer in relation to the camera. this is for parallax
  function RenderingHandler.layerConstructor(xOffsetRate, yOffsetRate)
    RenderingHandler.numberOfLayers = RenderingHandler.numberOfLayers + 1
    --Declaring layerToAdd
    local layerToAdd = {}
      layerToAdd.xOffsetRate = xOffsetRate
      layerToAdd.yOffsetRate = yOffsetRate
      layerToAdd.numOfDrawElements = 0
      --Empty placeholder table
      layerToAdd.drawThings = {}
      --[[for current obj to draw (starting at 1),
      while its less than the number of objects to draw do and increment by
      one after.--]]
      function layerToAdd:drawLayer()
        for currentDrawCall = 1,self.numOfDrawElements,1 do
          self.drawThings[currentDrawCall]:draw()
        end
      end
    --End of declaring Layer to add
    --Setting the locally declared layer to an outer index (the layers array)
    RenderingHandler.layers[RenderingHandler.numberOfLayers] = layerToAdd
  end

  --
  function RenderingHandler.draw()
    for currentLayer = 1,RenderingHandler.numberOfLayers,1 do
      RenderingHandler.layers[currentLayer]:drawLayer()
    end
  end
return RenderingHandler