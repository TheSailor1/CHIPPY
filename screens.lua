require("player")

function upd_menu(dt)
	
end

function drw_menu()
	love.graphics.clear(.2,.2,.2)

	love.graphics.setColor(1,1,1)

	love.graphics.print("CHIPPY!", 60, 60)
end

function load_game()
	Player:load()
end

function upd_game(dt)
end

function drw_game()
	love.graphics.clear(1,0,0)

	Player:draw()

	love.graphics.print("GAME",
		love.graphics.getWidth() / 2,
		love.graphics.getHeight() /2)
end
