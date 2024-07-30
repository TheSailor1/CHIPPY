Player = {}

function Player:load()
	self.sp = love.graphics.newImage("Art/spr.png")
	self.x = 32
	self.y = 87
	self.width = 16
	self.height = 16
	self.speedX = 150
	self.speedY = 8
end

function Player:update(dt)
	if love.keyboard.isDown("left") then
		self.x = self.x - self.speedX * dt
	elseif love.keyboard.isDown("right") then
		self.x = self.x + self.speedX * dt
	end

	self.x = clamp(self.x, 0, love.graphics.getWidth() / Scale - self.width)
end

function Player:draw()
	love.graphics.setColor(1,1,1)
	love.graphics.draw(self.sp, self.x, self.y)
	love.graphics.print(self.x, 10, 10)
end
