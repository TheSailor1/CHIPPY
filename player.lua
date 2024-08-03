Player = {}

function Player:load()
	self.sp = love.graphics.newImage("Art/spr.png")
	self.x = 32
	self.y = 87
	self.width = 16
	self.height = 16
	self.speedX = 150
	self.speedY = 8
	self.dir = 1
end

function Player:update(dt)
	if love.keyboard.isDown("left") then
		self.x = self.x - self.speedX * dt
		self.dir = -1
	elseif love.keyboard.isDown("right") then
		self.x = self.x + self.speedX * dt
		self.dir = 1
	end

	self.x = clamp(self.x, 
		self.width / 2 - 1, 
		love.graphics.getWidth() / Scale - self.width / 2 + 1)
end

function Player:draw()
	love.graphics.setColor(1,1,1)
	love.graphics.draw(
		self.sp, 
		self.x, self.y, 
		0, 
		self.dir, 1,
		self.width / 2, 0
		)
	love.graphics.print(self.x, 10, 10, 0, 1 / Scale, 1 / Scale)
end
