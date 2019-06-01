--formula distance between points
function pointDistance(x1, y1, x2, y2)
  return math.sqrt((y2-y1)^2 + (x2-x1)^2)
end

function manhattanDistance(fromX, toX, fromY, toY)

  local mDdistanceX = fromX + toX
  local mDdistanceY = fromY + toY

  if mDdistanceX < 0 then
    mDdistanceX = mDdistanceX * -1
  end

  if mDdistanceY < 0 then
    mDdistanceY = mDdistanceY * -1
  end

  return (mDdistanceX + mDdistanceY)
end



---function for creating players
function createPlayer(currentX, currentY, hp, atk, hit, spd, eva)
  return { currentX = currentX,
          currentY = currentY,
          hp = hp,
          atk = atk,
          hit = hit,
          spd = spd,
          eva = eva }
end
-----------

-----function for grid making
function newGrid(x, y)
  return {  x = x,
            y = y }
end
------------

----draw function for making actual grids
function drawGrid()
  for i, grid in ipairs(gridList) do
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", gridList[i].x, gridList[i].y, nativeGrid, nativeGrid)
  end
end
------
