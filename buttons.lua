--creating buttons w=width h=height
function createButton(name, fn, x, y, w, h, r, g, b)
  return {name = name,
          fn = fn,
           x = x,
           y = y,
           w = w,
           h = h,
           r = r,
           g = g,
           b = b}
end

--button load first time
function buttonLoad()

  buttonList = {}

  table.insert(buttonList, createButton(
  "Move", notyetfn, (love.graphics.getWidth() / 2) - 50 * 2, love.graphics.getHeight() * 0.85,
  50, 30, 1, 1, 1))

  table.insert(buttonList, createButton(
  "Cards", notyetfn, (love.graphics.getWidth() / 2), love.graphics.getHeight() * 0.85,
  50, 30, 1, 1, 1))

  table.insert(buttonList, createButton(
  "Attack", notyetfn, (love.graphics.getWidth() / 2) + 50 * 2, love.graphics.getHeight() * 0.85,
  50, 30, 1, 1, 1))

  table.insert(buttonList, createButton(
  "End", notyetfn, (love.graphics.getWidth() / 2) + 50 * 4, love.graphics.getHeight() * 0.85,
  50, 30, 1, 1, 1))

end

--draw all the buttonList
function buttonDraw()
  for i, buttons in ipairs(buttonList) do

    --hover system mouse on the button
    if love.mouse.getX() >= buttonList[i].x and love.mouse.getX() <= buttonList[i].x + buttonList[i].w
    and love.mouse.getY() >= buttonList[i].y and love.mouse.getY() <= buttonList[i].y + buttonList[i].w then
      love.graphics.setColor(buttonList[i].r - 0.5, buttonList[i].g - 0.5, buttonList[i].b - 0.5)
    else
      love.graphics.setColor(buttonList[i].r, buttonList[i].g, buttonList[i].b)
    end
    --
    love.graphics.rectangle("fill", buttonList[i].x, buttonList[i].y, buttonList[i].w, buttonList[i].h)
    love.graphics.setColor(0, 0, 0)
    love.graphics.printf(buttonList[i].name, buttonList[i].x, buttonList[i].y + 5, buttonList[i].w, "center")
  end
end
