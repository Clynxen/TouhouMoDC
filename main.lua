require("constructors")

---Load all variables or functions before all things
function love.load()
  ---Table list all players
  playerList = {}
  -----------
  ---insert table (currentX, currentY, hp, atk, hit, spd, eva)
  table.insert(playerList, createPlayer(200, 200, 30, 5, 5, 5, 5))
  -----


end


--Call functions for every delta time (computer time)
function love.update(dt)






end

--Call functions to DRAW for every delta time
function love.draw()

  --background color of game
  love.graphics.clear(0.5, 0.5, 1)
  -------------------

  --RGB:0-255 ->0-1
  love.graphics.setColor(0, 0, 0)
  love.graphics.print("MouseX: "..love.mouse.getX(), 0, 0)
  love.graphics.print("MouseY: "..love.mouse.getY(), 0, 15)
  -------------------

end
