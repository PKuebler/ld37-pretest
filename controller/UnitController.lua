function UnitController()
	local self = {
		lastSpawn = 0
	}

	function spawn(dt, data)
		self.lastSpawn = self.lastSpawn+dt

		if self.lastSpawn > 2 then
			self.lastSpawn = 0
			local w,h = 0,0
			w,h = spawnLocation() 
			data.units[#data.units+1] = {
				--x = (#data.units+1)*10,
				--y = (#data.units+1)*10
				x = w,
				y = h 
			}
		end
	end

	function update(dt, data)
	end

	function self.update(dt, data)
		----------------------
		-- Spawn Units
		----------------------
		spawn(dt, data)
		----------------------
		-- Update Units
		----------------------
		update(dt, data)
	end
  
	function spawnLocation()

		local space = 10 -- Abstand zur Seite
		local rndm = love.math.random(1,4)
		print(rndm)
		local windowWidth = love.graphics.getWidth()
		local windowHeight = love.graphics.getHeight()
		local x = love.math.random(space,windowWidth-space)
		local y = love.math.random(space,windowHeight-space)

		if rndm == 1 then -- Norden
			y = space
		elseif rndm == 2 then -- Osten
			x = windowWidth 

		elseif rndm == 3 then -- Sueden
			y = windowHeight 

		elseif rndm == 4 then -- Westen
			x = space

		end

		return x,y 
	end

	return self
end

return UnitController