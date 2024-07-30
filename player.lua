Player = {}

function Player:load()
	self.sp = love.graphics.newImage("Art/spr.png")
	self.x = 64
	self.y = 64
	self.width = 16
	self.height = 16
end

function Player:update(dt)
end

function Player:draw()
	love.graphics.setColor(1,1,1)
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
	love.graphics.draw(self.sp, 100, 100)
end
