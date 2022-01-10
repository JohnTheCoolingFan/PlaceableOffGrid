local function math_round(num) return math.floor(num+0.5) end

local function get_shifts(entity)
    local bounding_box = entity.selection_box
    local dimensions = {
        bounding_box.right_bottom.x-bounding_box.left_top.x,
        bounding_box.right_bottom.y-bounding_box.left_top.y
    }
    return {
        (dimensions[1]%2)/2,
        (dimensions[2]%2)/2
    }
end

script.on_event(defines.events.on_player_selected_area, function(event)

	-- Check if this is snap-tool
	if event.item ~= "snap-tool" then return end

	-- Setting up some variables
	local player = game.players[event.player_index]
	local entities = event.entities
	local entity_num = 0

	-- Script itself
	for _, entity in pairs(entities) do
		if entity.force == player.force then
			local position = entity.position
            local shifts = get_shifts(entity)
            --player.print(position.x.." "..position.y)
            entity.teleport({x = math_round(position.x + shifts[1]) - shifts[1], y = math_round(position.y - shifts[2]) + shifts[2]})
			entity_num = entity_num + 1
		end
	end

	if entity_num > 0 then
		player.print({"phrases.snap-message", entity_num})
	end
end)
