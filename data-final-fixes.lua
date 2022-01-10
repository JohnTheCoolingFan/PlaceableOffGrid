local entity_list = require("entity-list")

local function has_value(tab, val)
	for _, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

local function place_off_grid(dataType)
	for _, entity_prototype in pairs(data.raw[dataType]) do
        if not entity_prototype.flags then
            entity_prototype.flags = {}
        end
		local flags = entity_prototype.flags
		if not has_value(flags, "placeable-off-grid") then
			table.insert(flags, "placeable-off-grid")
			entity_prototype.flags = flags
		end
	end
end

for _, entity_type in pairs(entity_list) do
	if not settings.startup["pof-disable-"..entity_type].value then
		place_off_grid(entity_type)
	end
end
