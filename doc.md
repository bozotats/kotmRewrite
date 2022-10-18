# Documentation for kotm 
KOTM was made with love 11.3
In windows 10 atleast under the version from october/13/2022.
initially written with notepad, but being currently being rewritten in vscode 
sprites were prototyped on fireAlpaca and actually produced using aseprite

## Section 1: Style
### Modules
Modules were written in-file with PascalCase and their instances are written using snake_case

## Section 2: Rendering Handler
The rendering handler module is composed of a layer construction system and how to display each layer. it also goes through every layer and draws each one.
### RenderingHandler.draw()

### Layers

#### ObjList

### Layer List

### Layer Constructor
```
function layerConstructor(xOffsetRate, yOffsetRate)
```
#### xOffsetRate, yOffsetRate 
both are number parameters, that take the value and move every item in the layer by that amount times the camera movement.
#### Layer Creation
layers are made in an order from 1 to N, and are put in a layer list, where the layers key is the order they were made in 



 


