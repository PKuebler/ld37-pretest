function UnitController()
	local self = {
		lastSpawn = 0
	}

	function spawn(dt, data)
		self.lastSpawn = self.lastSpawn+dt

		if self.lastSpawn > 2 then
			self.lastSpawn = 0

			data.units[#data.units+1] = {
				x = (#data.units+1)*10,
				y = (#data.units+1)*10
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

	return self
end

return UnitController