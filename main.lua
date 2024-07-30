love = require('love')
require('screens')

function love.load()
	GameState = "menu"
	_upd = upd_menu
	_drw = drw_menu
	print("Game is working...")
end

function love.update(dt)
	_upd()
end

function love.draw()
	_drw()
end

function love.keypressed(key)
	if key == 'escape' then love.event.quit() end
	
	if GameState == "menu" then
		if key == 'space' then
			GameState = "game"
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
