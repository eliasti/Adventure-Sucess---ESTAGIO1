--
--  ----------------------------------------------------------------------------

-- -----------------------------------------------------------------------------
-- Configuração inicial para a cena
-- -----------------------------------------------------------------------------

-- Carrego o Composer para tratar as cenas da aplicação
local composer = require("composer")

-- Crio uma nova cena
local scene = composer.newScene()

-- -----------------------------------------------------------------------------
-- Variáveis da cena
-- -----------------------------------------------------------------------------

-- -----------------------------------------------------------------------------
-- Métodos e escopo principal da cena
-- -----------------------------------------------------------------------------

-- Leva o usuário até a cena do Jogo
local function gotoGame()
  composer.removeScene("game")
	composer.gotoScene("game", { time=1000, effect="crossFade" })
end

-- Leva o usuário até a cena de pontuação
local function gotoHighScores()
  composer.removeScene("highscores")
	composer.gotoScene("highscores", { time=1000, effect="crossFade" })
end

-- Leva o usuário até a cena de créditos
local function gotoCredits()
  composer.gotoScene("credits", { time=1000, effect="crossFade" })
end

-- -----------------------------------------------------------------------------
-- Eventos da cena
-- -----------------------------------------------------------------------------

-- Quando a cena é criada.
function scene:create(event)
  -- Busco o grupo principal para a cena
	local sceneGroup = self.view

  -- Crio o background da cena
  local background = display.newImageRect(sceneGroup, "images/backgroundMenu.png", 1280, 720)
  background.x = display.contentCenterX
  background.y = display.contentCenterY

  -- Crio a logo go jogo
  

  -- Crio as opções do menu
  local btnPlay = display.newImage(sceneGroup, "images/botao_start.png", (display.contentHeight/ 7.7) * 7, 425)
  


  btnPlay:addEventListener("tap", gotoGame)

  local btnHighScores = display.newImage(sceneGroup, "images/botao_record.png", (display.contentHeight/ 7.7) * 7, 500)
  

  
  btnHighScores:addEventListener("tap", gotoHighScores)

  local btnCredits = display.newImage(sceneGroup, "images/botao_cred.png", (display.contentHeight/7.7) * 7, 575)
  
  
  btnCredits:addEventListener("tap", gotoCredits)

end

-- Quando a cena está pronta para ser mostrada (phase will) e quando é mostrada (phase did).
function scene:show(event)
	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then

	elseif ( phase == "did" ) then

	end
end

-- Quando a cena está prestes a ser escondida (phase will) e assim que é escondida (phase did).
function scene:hide(event)
	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then

	elseif ( phase == "did" ) then

	end
end

-- Quando a cena é destruida
function scene:destroy(event)
	local sceneGroup = self.view
end

-- -----------------------------------------------------------------------------
-- Adicionando os escutadores à cena
-- -----------------------------------------------------------------------------
scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)
-- -----------------------------------------------------------------------------

-- Retorno a cena
return scene
