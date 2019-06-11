--[[TODO:
--make players cannot overlap at each other
-optimise the goddamn range movement
]]

require("battleSystem")
require("playerSystem")
require("gridSystem")
require("turnSystem")
require("buttons")
require("debugging")

---Load all variables or functions before all things
function love.load()

  --basic system load
  buttonLoad()
  --

  --load all the preps for battle
  listBattleLoad()
  --

end
------------------


--Call functions for every delta time (computer time)
function love.update(dt)

  --mouse clicked change the player mode between selected and not
  playerSelectClick()
  playerMoveIfSelected()
  -----


  --player limit boundaries inside the boardX
  playerBoundariesX()
  playerBoundariesY()
  --

end
---------



--Call functions to DRAW for every delta time
function love.draw()

  --loads all the necessity for battle
  listBattleDraw()
  --

  --Grid Drawing
  drawGrid()
  --

  --hovered grid change colors
  hoveredGrid()
  -----

  --highlight player movement range if selected
  highlightPlayerMoveRange()
  --

  --drawing actual players
  drawPlayer()
  ---

  --
  debuggingDraws()
  --

  --drawing all the buttons
  buttonDraw()
  --

end
---------------
