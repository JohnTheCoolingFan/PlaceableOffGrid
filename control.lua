local stash_location = { x = 1000000, y = 1000000 }

local function math_round(num) return math.floor(num + 0.5) end

local function get_shifts(entity)
	local bounding_box = entity.selection_box
	local dimensions = {
		bounding_box.right_bottom.x - bounding_box.left_top.x,
		bounding_box.right_bottom.y - bounding_box.left_top.y
	}
	return {
		(dimensions[1] % 2) / 2,
		(dimensions[2] % 2) / 2
	}
end

script.on_event(defines.events.on_player_selected_area, function(event)
	-- Check if this is snap-tool
	if event.item ~= "snap-tool" then return end

	-- Setting up some variables
	local player = game.players[event.player_index]
	local entities = event.entities
	local entity_num = 0

	local entities_original_locations = {}

	for _, entity in pairs(entities) do
		table.insert(entities_original_locations, {
			entity = entity,
			position = entity.position,
			surface = entity
				.surface
		})
		entity.surface.request_to_generate_chunks(stash_location)
		entity.teleport(stash_location)
	end

	-- Script itself
	for _, entity_data in pairs(entities_original_locations) do
		if entity_data.entity.force == player.force then
			local surface = entity_data.surface
			local position = entity_data.position
			local shifts = get_shifts(entity_data.entity)
			--player.print(position.x.." "..position.y)
			local teleport_dest = {
				x = math_round(position.x + shifts[1]) - shifts[1],
				y = math_round(position.y - shifts[2]) + shifts[2]
			}
			if surface.can_place_entity(
					{
						name = entity_data.entity.name,
						position = teleport_dest,
						direction = entity_data.entity.direction,
						build_check_type = defines.build_check_type.manual,
						force = entity_data.entity.force
					}
				) then
				entity_data.entity.teleport(teleport_dest)
				if entity_data.position.x ~= teleport_dest.x or entity_data.position.y ~= teleport_dest.y then
					entity_num = entity_num + 1
				end
			else
				log("Falling back to finding non colliding position")
				teleport_dest = surface.find_non_colliding_position(entity_data.entity.name, teleport_dest, 32, 0.01,
					true)
				if teleport_dest ~= nil then
					entity_data.entity.teleport(teleport_dest)
					if entity_data.position.x ~= teleport_dest.x or entity_data.position.y ~= teleport_dest.y then
						entity_num = entity_num + 1
					end
				end
			end
		end
	end

	if entity_num > 0 then
		player.print({ "phrases.snap-message", entity_num })
	end
end)
