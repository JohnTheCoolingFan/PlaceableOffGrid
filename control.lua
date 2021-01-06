local function math_round(num) return math.floor(num+0.5) end

script.on_event(defines.events.on_player_selected_area, function(event)
	local player = game.players[event.player_index]

	-- Check if this is snap-tool
	if event.item ~= "snap-tool" then return end

	-- Setting up some variables
	local entities = event.entities
	local entity_num = 0

	-- Script itself
	for i, entity in pairs(entities) do
		if entity.force == player.force then
			local position = entity.position
			--player.print(position.x.." "..position.y)
			entity.teleport({x = math_round(position.x), y = math_round(position.y)})
			entity_num = entity_num + 1
		end
	end

	player.print({"phrases.snap-message", entity_num})
end)
