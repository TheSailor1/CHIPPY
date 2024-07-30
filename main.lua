love = require('love')
require('screens')

function love.load()
	-- save the pixels
	love.graphics.setDefaultFilter("nearest", "nearest")

	GameState = "menu"
	_upd = upd_menu
	_drw = drw_menu
end

function love.update(dt)
	_upd()
end

function love.draw()
	love.graphics.scale(4,4)
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
			print(Player.width)
			GameState = "menu"
		end
	end
end
