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



function playerGridSnapper()
  for i = p_grid_x, grid_limit_X, grid_size do
    if love.mouse.getX() >= i and love.mouse.getX() <= i + grid_size then
      if love.mouse.isDown(1) then
          player1.currentX = i
      end
    end
  end
  for i = p_grid_y, grid_limit_Y, grid_size do
    if love.mouse.getY() >= i and love.mouse.getY() <= i + grid_size then
      if love.mouse.isDown(1) then
        player1.currentY = i
      end
    end
  end
end

function playerMaxMovementHighlight()

    --x right
    for z = player1.currentX + player1.cSize, player1.currentX + player1.spd * player1.cSize, player1.cSize do
      if z <= grid_limit_X and z >= p_grid_x and player1.currentY >= p_grid_y and player1.currentY <= grid_limit_Y then
        love.graphics.setColor(0, 0, 0)
        love.graphics.rectangle("fill", z + 2, player1.currentY + 2, player1.cSize - 4, player1.cSize - 4)
      end
    end
    --x left
    for z = player1.currentX - player1.cSize, player1.currentX - player1.spd * player1.cSize, -player1.cSize do
      if z <= grid_limit_X and z >= p_grid_x and player1.currentY >= p_grid_y and player1.currentY <= grid_limit_Y then
        love.graphics.setColor(0, 0, 0)
        love.graphics.rectangle("fill", z + 2, player1.currentY + 2, player1.cSize - 4, player1.cSize - 4)
      end
    end
    --y down (+)
    for z = player1.currentY + player1.cSize, player1.currentY + player1.spd * player1.cSize, player1.cSize do
      if z <= grid_limit_Y and z >= p_grid_y and player1.currentX <= grid_limit_X and player1.currentX >= p_grid_x then
        love.graphics.setColor(0, 0, 0)
        love.graphics.rectangle("fill", player1.currentX + 2, z + 2, player1.cSize - 4, player1.cSize - 4)
      end
    end
    --y up (-)
    for z = player1.currentY - player1.cSize, player1.currentY - player1.spd * player1.cSize, -player1.cSize do
      if z <= grid_limit_Y and z >= p_grid_y and player1.currentX <= grid_limit_X and player1.currentX >= p_grid_x then
        love.graphics.setColor(0, 0, 0)
        love.graphics.rectangle("fill", player1.currentX + 2, z + 2, player1.cSize - 4, player1.cSize - 4)
      end
    end


      for i, grid in ipairs(gridList) do
        if manhattanDistance(player1.currentX + 16, gridList[i].x, player1.currentY + 16, gridList[i].y) <= (player1.spd * player1.cSize) then
          if player1.currentX + player1.cSize / 2 - gridList[i].x > 0 and player1.currentY + player1.cSize / 2 - gridList[i].y < 0 then
            love.graphics.setColor(0, 0, 0)
            love.graphics.rectangle("fill", gridList[i].x + 2 - grid_size / 2, gridList[i].y + 2 - grid_size / 2, grid_size - 4, grid_size - 4)
          elseif player1.currentX + player1.cSize / 2 - gridList[i].x < 0 and player1.currentY + player1.cSize / 2 - gridList[i].y > 0 then
            love.graphics.setColor(0, 0, 0)
            love.graphics.rectangle("fill", gridList[i].x + 2 - grid_size / 2, gridList[i].y + 2 - grid_size / 2, grid_size - 4, grid_size - 4)
          elseif player1.currentX + player1.cSize / 2 - gridList[i].x > 0 and player1.currentY + player1.cSize / 2 - gridList[i].y > 0 then
            love.graphics.setColor(0, 0, 0)
            love.graphics.rectangle("fill", gridList[i].x + 2 - grid_size / 2, gridList[i].y + 2 - grid_size / 2, grid_size - 4, grid_size - 4)
          elseif player1.currentX + player1.cSize / 2 - gridList[i].x < 0 and player1.currentY + player1.cSize / 2 - gridList[i].y < 0 then
            love.graphics.setColor(0, 0, 0)
            love.graphics.rectangle("fill", gridList[i].x + 2 - grid_size / 2, gridList[i].y + 2 - grid_size / 2, grid_size - 4, grid_size - 4)
          end
        end
      end
    end
