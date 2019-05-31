require("constructors")

---Load all variables or functions before all things
function love.load()
  ---Table list all players
  playerList = {}
  -----------
  ---insert table (currentX, currentY, hp, atk, hit, spd, eva)
  table.insert(playerList, createPlayer(200, 200, 30, 5, 5, 5, 5))
  table.insert(playerList, createPlayer(200, 200, 30, 5, 5, 5, 5))
  -----

  ---Background board
  boardX = love.graphics.getWidth() / 4
  boardY = love.graphics.getHeight() / 6
  boardSize = love.graphics.getWidth() / 2 --x&y
  ----------

end
------------------




--Call functions for every delta time (computer time)
function love.update(dt)



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


  --RGB:0-255 ->0-1 debugging
  love.graphics.setColor(0, 0, 0)
  love.graphics.print("MouseX: "..love.mouse.getX(), 0, 0)
  love.graphics.print("MouseY: "..love.mouse.getY(), 0, 15)
  love.graphics.print("Active Players: "..#playerList, 0, 30)
  -------------------

end
---------------
