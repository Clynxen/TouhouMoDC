function debuggingDraws()
  --RGB:0-255 ->0-1 debugging textes
  love.graphics.setColor(0, 0, 0)
  love.graphics.print("MouseX: "..love.mouse.getX(), 0, 0)
  love.graphics.print("MouseY: "..love.mouse.getY(), 0, 15)
  love.graphics.print("Active Players: "..#playerList, 0, 30)
  love.graphics.print("Active Grids: "..#gridList, 0, 45)
  love.graphics.print("Grid 20 x:"..gridList[20].x, 0, 60)
  love.graphics.print("Grid 20 y:"..gridList[20].y, 0, 75)
  love.graphics.print("Grid 21 x:"..gridList[21].x, 0, 90)
  love.graphics.print("Grid 21 y:"..gridList[21].y, 0, 105)


  -----to tell what player is being selected
  if tellWhatSelected == nil then
    love.graphics.print("Player is not selected", 0, 300)
  else
    tellWhatSelected()
  end
  -------------------
end
