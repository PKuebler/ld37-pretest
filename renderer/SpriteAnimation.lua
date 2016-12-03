function SpriteAnimation()
	local self = {
		sprites = {}
	}

	------------------------
	-- Load Sprites
	------------------------
	local tileset = love.graphics.newImage( "assets/peoples.png" )
	local tileSize = 16
	self.sprites["peoples"] = {}
	local actions = {
		s = 0,
		sw = 3,
		w = 6,
		wn = 9,
		n = 12,
		no = 15,
		o = 18,
		os = 21
	}

	-- get tiles
	for i = 0, (tileset:getWidth()/tileSize)*(tileset:getHeight()/tileSize) do
        local x,y = (i%tileSize), math.floor(i/tileSize)
        self.sprites["peoples"][i] = love.graphics.newQuad(x*tileSize, y*tileSize, tileSize, tileSize, tileset:getWidth(), tileset:getHeight())
    end

	-- image(set)
	-- action
	-- step

	function self.render(set, action, step)
		-- add start
		local s = step+actions[action]
		love.graphics.draw( tileset, self.sprites["peoples"][s])
	end

	return self
end

return SpriteAnimation