require "classes/ClassHelper"

Tile = newClass(
	function(self)
		self.subjects = {}
	end
)

function Tile:canAddSubject(subject)
	if tablelength(self.subjects) <= 0 then return true end
	
	for i, subject in ipairs(self.subjects) do
		if not subject:canWalk() then return false end
	end
	
	return true
end

function Tile:push(subject)
	if self.subjects == nil then
		self.subjects = {}
	end
	
	table.insert(self.subjects, subject)
	
	return true
end

function Tile:pop()
	local subject = self.subjects[tablelength(self.subjects)]
	table.remove(self.subjects)
	return subject
end

function Tile:peek()
	return self.subjects[tablelength(self.subjects)]
end

GroundTile = newClass(nil, Tile)