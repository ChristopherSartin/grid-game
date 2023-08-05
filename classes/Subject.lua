require "classes/ClassHelper"

Subject = newClass()

function Subject:canWalk()
	return false
end

function Subject:collide(subject)
	return
end

Wall = newClass( nil, Subject)