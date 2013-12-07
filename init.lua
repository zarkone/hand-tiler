
function tileTo(c, sector)
   
   local s = client.focus.screen 
   local screengeom = screen[s].workarea

   local geometrySet = {}

   geometrySet['left'] = {
      x = screengeom.x,
      y = screengeom.y,
      width = screengeom.width / 2,
      height = screengeom.height
   }
   geometrySet['right'] = {
      x = screengeom.width / 2,
      y = screengeom.y,
      width = screengeom.width / 2,
      height = screengeom.height
   }
   
   geometrySet['left-top'] = {
      x = screengeom.x,
      y = screengeom.y,
      width = screengeom.width / 2,
      height = screengeom.height / 2
   }
   geometrySet['left-bottom'] = {
      x = screengeom.x,
      y = screengeom.height / 2,
      width = screengeom.width / 2,
      height = screengeom.height / 2
   }
   geometrySet['right-top'] = {
      x = screengeom.width / 2,
      y = screengeom.y,
      width = screengeom.width / 2,
      height = screengeom.height /2
   }
   geometrySet['right-bottom'] = {
      x = screengeom.width / 2,
      y = screengeom.height / 2 ,
      width = screengeom.width / 2,
      height = screengeom.height / 2
   }
   geometrySet['top'] = {
      x = screengeom.x,
      y = screengeom.y,
      width = screengeom.width, 
      height = screengeom.height / 2
   }
   geometrySet['bottom'] = {
      x = screengeom.x,
      y =  screengeom.height / 2,
      width = screengeom.width,
      height = screengeom.height / 2
   }
   geometrySet['full'] = {
      x = screengeom.x,
      y =  screengeom.y,
      width = screengeom.width,
      height = screengeom.height
   }
   
   c:geometry(geometrySet[sector])
   
end

local handTiler = {}
handTiler.tileTo = tileTo

return  handTiler