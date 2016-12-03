function Renderer()
	local self = {}

	function self.render(data)
		-------------------------
		-- Player
		-------------------------
		love.graphics.circle( "fill", love.graphics.getWidth( )/2, love.graphics.getHeight( )/2, 10 )
		-------------------------
		-- Units
		-------------------------
		for id,unit in pairs(data.units) do
			love.graphics.circle( "fill", unit.x, unit.y, 5 )
		end
		
	end

	return self
end

return Renderer