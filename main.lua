--Todo: Fix grid system -> use grid table instead of printing them one by one, Fix background color,
--#gridList -> tells how many grids inside this table
--if you have a table but it has two values, then the way to refer to it is tableName[numberOfIndex].variable
require ("grid")
require ("playerMovementSnapGrid")

local player = {}
player.hp = 30
player.atk = 5
player.hit = 5
player.spd = 5
player.eva = 5

totalsec = 1
secondsec = 0.9
playerMove = 0
--0: not selected, 1:selected, 2:for movement

--drawing multiple boxes
p_grid_x = 320
p_grid_y = 160
grid_size = 32
grid_limit_X = 928
grid_limit_Y = 768
grid_bg_size = 640
----

--0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19-- x
--19-y

--player info
player1 = {}
player1.cSize = 32
player1.startX = p_grid_x + grid_size * 10
player1.startY = p_grid_y + grid_size * 10

player1.currentX = player1.startX
player1.currentY = player1.startY

player1.red_ifNotClked = 1
player1.grn_ifNotClked = 0.3
player1.ble_ifNotClked = 0
player1.red_hovered = 0.55
player1.ble_hovered = 1
player1.grn_hovered = 0.66
player1.red_ifClked = 1
player1.ble_ifClked = 1
player1.grn_ifClked = 1

player1.currentRed = 1
player1.currentBlue = 0
player1.currentGreen = 0

player1.currentSelected = false

player1.hp = 30
player1.atk = 5
player1.spd = 3
player1.hit = 5
player1.spd = 5
player1.eva = 5
-------------------

--test
clickCondition = "nope"

--function to insert the grid to the gridList
function newGrid(x, y)
  return {x = x, y = y}
end
-----

---tabble of grids
gridList = {}


--

function love.load()
  --load all them grids
  for z = 0, 19, 1 do
    for i = 0, 19, 1 do
      table.insert(gridList, newGrid((p_grid_x + grid_size / 2) + grid_size * i, (p_grid_y + grid_size / 2) + grid_size * z))
    end
  end
  --

end

--dt = delta time, in seconds every 1 second
function love.update(dt)
  totalsec = totalsec - dt
  secondsec = secondsec + dt
  --player1 display interaction with cursor
  function love.mousepressed(x, y, button, isTouch)
    if button == 1 then
      if distanceBetween(player1.currentX + player1.cSize / 2, player1.currentY + player1.cSize / 2, love.mouse.getX(), love.mouse.getY()) <= player1.cSize / 2 then
        player1.currentRed = player1.red_ifClked
        player1.currentBlue = player1.ble_ifClked
        player1.currentGrn = player1.grn_ifClked
        clickCondition = "YAY"
        player1.currentSelected = true
        playerMove = 1
      end
    elseif button == 2 then
      player1.currentRed = player1.red_ifNotClked
      player1.currentBlue = player1.ble_ifNotClked
      player1.currentGrn = player1.grn_ifNotClked
      clickCondition = "nope"
      player1.currentSelected = false
      playerMove = 0
    end
  end
  ---------------------------playermove


---------


end
------




--Image drawn first obviously will be drawn over by the following image/object
function love.draw()
  --background color
  love.graphics.clear(0.5, 0.5, 1)
  ---

--love.graphics.rectangle( mode, x, y, width, height, rx, ry, segments )
  love.graphics.setColor(1, 1, 1)
  love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_bg_size, grid_bg_size)
--background white box


--withManhattanDistance --i gets every index 'grid' inside gridLists
  love.graphics.setColor(0, 0, 0)
  for i, grid in ipairs(gridList) do
    love.graphics.setColor(0.5, 0.5, 0.5)
    love.graphics.rectangle("fill", gridList[i].x - grid_size / 2, gridList[i].y - grid_size / 2, grid_size, grid_size)
  end
  -------

  grids()
  -- grids, I know it is tedious, please fix this

--player 1 display
if distanceBetween(player1.currentX + player1.cSize / 2, player1.currentY + player1.cSize / 2, love.mouse.getX(), love.mouse.getY()) <= player1.cSize / 2 then
  love.graphics.setColor(player1.currentRed, player1.currentBlue, player1.currentGreen)
  love.graphics.rectangle("fill", player1.currentX, player1.currentY, player1.cSize, player1.cSize)
else
  love.graphics.setColor(player1.red_hovered, player1.ble_hovered, player1.grn_hovered)
  love.graphics.rectangle("fill", player1.currentX, player1.currentY, player1.cSize, player1.cSize)
end
---
---other
  love.graphics.setColor(0, 0, 0)
  love.graphics.print("Your screen size is x:"..love.graphics.getWidth())
  love.graphics.print("Your screen size is y:"..love.graphics.getHeight(), 0, 15)
  love.graphics.print(p_grid_x, 0, 30)
  love.graphics.print(p_grid_y, 0, 45)
  love.graphics.print("fuk u win", 0, 60)
  love.graphics.print("clicked: "..clickCondition, 0, 75)
  love.graphics.print("totalsec: "..totalsec, 0, 90)
  love.graphics.print("secondsec: "..secondsec, 0, 105)
  love.graphics.print("playerMove: "..playerMove, 0, 120)
  love.graphics.print("playerX: "..player1.currentX, 0, 135)
  love.graphics.print("playerY: "..player1.currentY, 0, 150)
  love.graphics.print("mouseX: "..love.mouse.getX(), 0, 180)
  love.graphics.print("mouseY: "..love.mouse.getY(), 0, 195)
  love.graphics.print("gridList index 400.x: "..gridList[400].x, 0, 210)
  love.graphics.print("gridList index 400.y: "..gridList[400].y, 0, 225)
  love.graphics.print("gridList index 21.x: "..gridList[21].x, 0, 240)
  love.graphics.print("gridList index 21.y: "..gridList[21].y, 0, 255)
  love.graphics.print("How many grids in grid table: "..#gridList, 0, 270)

  --buttontest
  createButton(1, 1, 1, 15, 860, 65, 25, "Move", 0, 0, 0, 1)
  createButton(1, 1, 1, 15, 900, 65, 25, "Attack", 0, 0, 0, 2)
  --

  if player1.currentSelected == true then
    movePlayer()
    ----playerlimitmovegrid
    if player1.currentX < p_grid_x then
      player1.currentX = p_grid_x
    elseif player1.currentX > grid_limit_X then
      player1.currentX = grid_limit_X
    end

    if player1.currentY < p_grid_y then
      player1.currentY = p_grid_y
    elseif player1.currentY > grid_limit_Y then
      player1.currentY = grid_limit_Y
    end
  -----------

    playerMaxMovementHighlight()
  end

end
---



--create button function
function createButton(buttonRed, buttonGreen, buttonBlue, buttonX, buttonY, buttonWidth, buttonHeight, textButton, textRed, textGreen, textBlue, buttonID, buttonFunction)
  --buttonsetting
  love.graphics.setColor(buttonRed, buttonGreen, buttonBlue)
  love.graphics.rectangle("fill", buttonX, buttonY, buttonWidth, buttonHeight)
  love.graphics.setColor(1, 1, 1)
  love.graphics.rectangle("line", buttonX - 2, buttonY - 2, buttonWidth + 4, buttonHeight + 4)
  buttonFunction = buttonFunction
  buttonID = buttonID
  --buttontextsetting
  love.graphics.setColor(textRed, textGreen, textBlue)
  love.graphics.printf(textButton, buttonX, buttonY, buttonWidth, "center")
end
--------------------
---player move function
function movePlayer()
  if manhattanDistance(player1.currentX + player1.cSize / 2, love.mouse.getX(), player1.currentY + player1.cSize / 2, love.mouse.getY()) < (player1.spd * player1.cSize) + player1.cSize / 2 then
    if love.mouse.isDown(1) then
        player1.currentX = love.mouse.getX()
        player1.currentY = love.mouse.getY()

        playerGridSnapper()
    end
  -- elseif manhattanDistance(player1.currentX + player1.cSize / 2, love.mouse.getX(), player1.currentY + player1.cSize / 2, love.mouse.getY()) == (player1.spd * player1.cSize) + player1.cSize / 2 then
  --   if love.mouse.getX() + player1.cSize / 2
  end
end
----
