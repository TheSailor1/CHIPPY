love = require('love')
require('screens')
require("tools")

function love.load()
	-- save the pixels
	love.graphics.setDefaultFilter("nearest", "nearest")
	windowHeight = love.graphics.getHeight()
	windowWidth = love.graphics.getWidth()
	windowCenterX = windowWidth / 2 / Scale
	windowCenterY = windowHeight / 2 / Scale

	GameState = "menu"
	_upd = upd_menu
	_drw = drw_menu
end

function love.update(dt)
	_upd(dt)
end

function love.draw()
	-- scale pixels up before everything draws
	love.graphics.scale(Scale,Scale)

	_drw()
end

function love.keypressed(key)
	if key == 'escape' then love.event.quit() end
	
	if GameState == "menu" then
		if key == 'space' then
			GameState = "game"
			load_game()
			_upd = upd_game
			_drw = drw_game
		end
	elseif GameState == "game" then
		if key == "return" then
			_upd = upd_menu
			_drw = drw_menu
			GameState = "menu"
		end
	end
end
