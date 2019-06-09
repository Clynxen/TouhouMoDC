--formula distance between points
function pointDistance(x1, y1, x2, y2)
  return math.sqrt((y2-y1)^2 + (x2-x1)^2)
end
-----------

----function for manhattanDistance which makes a diamond like range
function manhattanDistance(fromX, toX, fromY, toY)

  local mDdistanceX = fromX - toX
  local mDdistanceY = fromY - toY

  if mDdistanceX < 0 then
    mDdistanceX = mDdistanceX * -1
  end

  if mDdistanceY < 0 then
    mDdistanceY = mDdistanceY * -1
  end

  return (mDdistanceX + mDdistanceY)
end
---------


---function for creating players
function createPlayer(playerNo, currentX, currentY, hp, atk, hit, spd, eva)
  return { playerNo = playerNo,
          currentX = currentX,
          currentY = currentY,
          hp = hp,
          atk = atk,
          hit = hit,
          spd = spd,
          eva = eva,
          currentSelected = false}
end
-----------

-----function for grid making
function newGrid(x, y)
  return {  x = x,
            y = y }
end
------------


---function for the grids if hovered change color
function hoveredGrid()
  for i, grid in ipairs(gridList) do
    if love.mouse.getX() >= gridList[i].x and love.mouse.getX() <= gridList[i].x + nativeGrid
    and love.mouse.getY() >= gridList[i].y and love.mouse.getY() <= gridList[i].y + nativeGrid then
      love.graphics.setColor(0.4, 1, 1)
      love.graphics.rectangle("fill", gridList[i].x, gridList[i].y, nativeGrid, nativeGrid)
    end
  end
end
---

--function for snapping players to the grids
function playerGridSnapper()
  for i = boardX, boardX + boardSize, nativeGrid do

    for j, players in ipairs(playerList) do
      if playerList[j].currentSelected == true then
        if love.mouse.getX() >= i and love.mouse.getX() <= i + boardSize then
          if love.mouse.isDown(1) then
            playerList[j].currentX = i
          end
        end
      end
    end

  end

  for i = boardY, boardY + boardSize, nativeGrid do

    for j, players in ipairs(playerList) do
      if playerList[j].currentSelected == true then
        if love.mouse.getY() >= i and love.mouse.getY() <= i + boardSize then
          if love.mouse.isDown(1) then
            playerList[j].currentY = i
          end
        end
      end
    end

  end
end
-----

--function for player clicked selected mode and not clicked selected mode
function playerSelectClick()
  function love.mousepressed(x, y, button, isTouch)
    if button == 1 then

      for i, players in ipairs(playerList) do
        if love.mouse.getX() >= playerList[i].currentX and love.mouse.getX() <= playerList[i].currentX + nativeGrid
        and love.mouse.getY() >= playerList[i].currentY and love.mouse.getY() <= playerList[i].currentY + nativeGrid then
          playerList[i].currentSelected = true
        end
      end

    elseif button == 2 then
      for i, players in ipairs(playerList) do
          playerList[i].currentSelected = false
      end
    end

  end
end
---

--function for player movement
function playerMoveIfSelected()
  for i, players in ipairs(playerList) do
    if playerList[i].currentSelected == true then
      if love.mouse.isDown(1) then
        if manhattanDistance(playerList[i].currentX + nativeGrid / 2, love.mouse.getX(), playerList[i].currentY + nativeGrid / 2, love.mouse.getY())
        <= (playerList[i].spd * nativeGrid) then

          for z, grids in ipairs(gridList) do
            if manhattanDistance(playerList[i].currentX, gridList[z].x, playerList[i].currentY, gridList[z].y)
            <= (playerList[i].spd * nativeGrid) then

              playerList[i].currentX = gridList[z].x
              playerList[i].currentY = gridList[z].y

              playerGridSnapper()
            end
          end

        end
      end
    end
  end
end
--

--function for the player grids to be only moved inside the grids
  function playerBoundariesX()
    for i, players in ipairs(playerList) do
      if playerList[i].currentX < boardX then
        playerList[i].currentX = boardX
      elseif playerList[i].currentX > boardX + boardSize - nativeGrid then
        playerList[i].currentX = boardX + boardSize - nativeGrid
      end
    end
  end

  function playerBoundariesY()
    for i, players in ipairs(playerList) do
      if playerList[i].currentY < boardY then
        playerList[i].currentY = boardY
      elseif playerList[i].currentY > boardY + boardSize - nativeGrid then
        playerList[i].currentY = boardY + boardSize - nativeGrid
      end
    end
  end
--------



--function for highlighting movement range
function highlightPlayerMoveRange()
  for i, players in ipairs(playerList) do
    if playerList[i].currentSelected == true then

      for z, grid in ipairs(gridList) do
        if manhattanDistance(playerList[i].currentX + nativeGrid / 2, gridList[z].x + nativeGrid / 2, playerList[i].currentY + nativeGrid / 2, gridList[z].y + nativeGrid / 2) <= playerList[i].spd * nativeGrid then
          love.graphics.setColor(0, 0, 0)
          love.graphics.rectangle("fill", gridList[z].x + nativeGrid / 16, gridList[z].y + nativeGrid / 16, nativeGrid - 4, nativeGrid - 4)
        end
      end

    end
  end
end
--

----draw function for making actual grids
function drawGrid()
  for i, grid in ipairs(gridList) do
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", gridList[i].x, gridList[i].y, nativeGrid, nativeGrid)
  end
end
------

--draw function for the players
function drawPlayer()
  for i, player in ipairs(playerList) do
    love.graphics.setColor(1, 0.4, 0.4)
    love.graphics.rectangle("fill", playerList[i].currentX, playerList[i].currentY, nativeGrid, nativeGrid)
  end
end
---
