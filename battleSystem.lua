function listBattleLoad()
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

function listBattleDraw()
  --background color of game
  love.graphics.clear(0.5, 0.5, 1)
  -------------------

  --Board drawing background (white)
  love.graphics.setColor(1, 1, 1)
  love.graphics.rectangle("fill", boardX, boardY, boardSize, boardSize)
  --mode: "fill", "line"
  ----
end
