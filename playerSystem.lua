
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

--draw function for the players
function drawPlayer()
  for i, player in ipairs(playerList) do
    love.graphics.setColor(1, 0.4, 0.4)
    love.graphics.rectangle("fill", playerList[i].currentX, playerList[i].currentY, nativeGrid, nativeGrid)
  end
end
---
