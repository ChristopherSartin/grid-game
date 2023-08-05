require "Helper"
require "classes/Tile"
require "classes/ClassHelper"

Board = newClass(
	function (self)
		self.width = 0
		self.height = 0
		self.tiles = {}
	end
)

function Board.new(width, height)
	local newinst = {}
	local self = setmetatable(newinst, Board)
	--generateCells
	self.width = width
	self.height = height
	
	self.tiles = create2DArray(self.width, self.height, GroundTile.new)
	
	return self
end

function Board:getWidth()
	return self.width
end

function Board:addSubject(subject, location)
	self.tiles[location[1]][location[2]]:push(subject)
end

function Board:toString()
	local string = ""
	
	for i = 1, self.height do
		string = string .. "["
		for j = 1, self.width do
		  string = string .. 
		  (self.tiles[i][j]:canAddSubject() and " " or "#")
		end
		string = string .. "]\n"
	end
	
	return string
end