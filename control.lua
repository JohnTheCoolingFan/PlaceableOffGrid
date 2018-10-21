script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	local phraseNumber = math.random(5)
	player.print({"", "[PlaceableOffGrid]", {"phrases.greeting-"..phraseNumber}})
	player.insert({name = "snapper-to-grid"})
end)

local function math_round(num) return math.floor(num+0.5) end

script.on_event(defines.events.on_player_selected_area, function(event)
	local player = game.players[event.player_index]
	
	--check if this is snapper-to-grid
	if event.item ~= "snapper-to-grid" then return end
	
	--setting up some variables
	local entities = event.entities
	local tiles = event.tiles
	local entity_num = 0
	
	for i, entity in pairs(entities) do
		local position = entity.position
		entity.teleport({x = math_round(position.x), y = math_round(position.y)})
		entity_num = entity_num + 1
	end
	
	player.print({"phrases.snap-message", entity_num})
end)
