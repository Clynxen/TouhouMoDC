--[[TODO:
-optimise the goddamn range movement
]]

require("constructors")

---Load all variables or functions before all things
function love.load()

  ---Table list all players
  playerList = {}
  -----------

  --Table list all the grids
  gridList = {}
  -----------

  ---Background board & grid
  boardX = love.graphics.getWidth() / 4 --1280/4 = 320
  boardY = love.graphics.getHeight() / 6 --960/6 = 160
  boardSize = love.graphics.getWidth() / 2 --x&y --1280/2 = 640
  nativeGrid =  boardX / 10 --32
  ----------

  ---insert table (playerNo, currentX, currentY, hp, atk, hit, spd, eva) --insert player
  table.insert(playerList, createPlayer(1, 450, 200, 30, 5, 5, 5, 5))
  table.insert(playerList, createPlayer(2, 500, 200, 30, 5, 5, 3, 5))
  -----

  ---table insert for making grids, it loops through x and y, 20 x 20 = 400 grids
  for i = 0, 19, 1 do
    for z = 0, 19, 1 do
      table.insert(gridList, newGrid(boardX + nativeGrid * z, boardY + nativeGrid * i))
    end
  end
  -----------


end
------------------




--Call functions for every delta time (computer time)
function love.update(dt)

  --mouse clicked change the player mode between selected and not
  playerSelectClick()
  playerMoveIfSelected()
  -----

  --player grid snapper to the grids
  --playerGridSnapper()
  --

  --player limit boundaries inside the boardX
  playerBoundariesX()
  playerBoundariesY()
  --

end
---------



--Call functions to DRAW for every delta time
function love.draw()

  --background color of game
  love.graphics.clear(0.5, 0.5, 1)
  -------------------

  --Board drawing
  love.graphics.setColor(1, 1, 1)
  love.graphics.rectangle("fill", boardX, boardY, boardSize, boardSize)
  --mode: "fill", "line"
  ----

  --Grid Drawing
  drawGrid()
  --

  --hovered grid change colors
  hoveredGrid()
  -----

  --highlight player movement range if selected
  highlightPlayerMoveRange()
  --

  --drawing actual players
  drawPlayer()
  ---

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
  for i, players in ipairs(playerList) do
    love.graphics.print("Player "..playerList[i].playerNo.." X:"..playerList[i].currentX, 0, playerList[i].playerNo * 15 + 105)
    love.graphics.print("Player "..playerList[i].playerNo.." Y:"..playerList[i].currentY, 0, playerList[i].playerNo * 15 + 140)
  end
  -------------------

end
---------------
