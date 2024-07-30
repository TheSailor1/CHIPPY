Player = {}

function Player:load()
	self.sp = love.graphics.newImage("Art/spr.png")
	self.x = 32
	self.y = 87
	self.width = 16
	self.height = 16
end

function Player:update(dt)
end

function Player:draw()
	love.graphics.setColor(1,1,1)
	love.graphics.draw(self.sp, self.x, self.y)
end
