function upd_menu(dt)
	
end

function drw_menu()
	love.graphics.clear(.2,.2,.2)
	love.graphics.print("MENU",
		love.graphics.getWidth() / 2,
		love.graphics.getHeight() /2)
end

function upd_game(dt)
end

function drw_game()
	love.graphics.clear(1,0,0)
	love.graphics.print("GAME",
		love.graphics.getWidth() / 2,
		love.graphics.getHeight() /2)
end
