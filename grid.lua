function distanceBetween(x1, y1, x2, y2)
  return math.sqrt((y2 - y1)^2 + (x2 - x1)^2)
end


function grids()

for p_grid_x = p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) <= grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 2
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 3
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 4
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 5
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 6
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 7
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 8
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 9
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 10
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 11
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 12
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 13
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 14
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 15
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 16
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 17
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 18
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end
for p_grid_x = (math.floor(p_grid_x / grid_limit_X) * 32) + p_grid_x,grid_limit_X,32 do
  local p_grid_y = p_grid_y + grid_size * 19
  if distanceBetween(p_grid_x + grid_size / 2, p_grid_y + grid_size / 2, love.mouse.getX(), love.mouse.getY()) < grid_size / 2 then
    love.graphics.setColor(0.6, 0.9, 250)
    love.graphics.rectangle("fill", p_grid_x, p_grid_y, grid_size, grid_size)
  else
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", p_grid_x, p_grid_y, grid_size, grid_size)
  end
end

end
