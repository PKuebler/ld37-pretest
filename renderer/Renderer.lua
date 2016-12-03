require("renderer.SpriteAnimation")

function Renderer()
	local self = {
		animation = SpriteAnimation()
	}

	function self.render(data)
		-------------------------
		-- Player
		-------------------------
		love.graphics.circle( "fill", love.graphics.getWidth( )/2, love.graphics.getHeight( )/2, 10 )
		-------------------------
		-- Units
		-------------------------
		for id,unit in pairs(data.units) do
			love.graphics.push()
			love.graphics.translate( unit.x, unit.y )
			if unit["step"] == nil then
				unit["step"] = 0
			end
			self.animation.render("peoples", "n", unit.step)
			unit.step = (unit.step+1)%3
			love.graphics.pop()
		end
		
	end

	return self
end

return Renderer