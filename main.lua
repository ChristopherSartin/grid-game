require "classes/Board"
require "classes/Subject"
require "classes/TextRenderer"

function love.load()
	board = Board.new(3, 3)
	local wall = Wall.new()
	
	board:addSubject(wall, {1, 1})
	
	text = TextRenderer.new()
	text.width = 255
	text.color = {1, 1, 1, 1}
	text.text = love.graphics.getWidth() .. " x " .. love.graphics.getHeight()
	text:setPosition(love.graphics.getWidth() / 2, love.graphics.getHeight() / 2)
	
	text.text = board:toString()
	
	font = love.graphics.newFont("font/SpaceMono-Regular.ttf", 20)
	love.graphics.setFont(font)
end

function love.update(dt)	
end

function love.draw()
	for i, renderer in ipairs(renderers) do
		renderer:draw()
	end
end