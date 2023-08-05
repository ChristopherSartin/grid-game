buttonValues = {
	left = "a",
	right = "d",
	up = "w",
	down = "s"
}

local speed = 200

buttonActions = {
	left = function(dt) player:move(-speed * dt, 0) end,
	right = function(dt) player:move(speed * dt, 0) end,
	up = function(dt) player:move(0, -speed * dt) end,
	down = function(dt) player:move(0, speed * dt) end,
}

function checkInput(dt)

	for key, value in pairs(buttonValues) do
		if love.keyboard.isDown(value) then
			buttonActions[key](dt)
		end
	end

end