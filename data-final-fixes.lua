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
	for _, e in pairs(data.raw[dataType]) do
        if not e.flags then
            e.flags = {}
        end
		local flags = e.flags
		if not has_value(flags, "placeable-off-grid") then
			table.insert(flags, "placeable-off-grid")
			e.flags = flags
		end
	end
end

for _, e in pairs(entity_list) do
	if not settings.startup["pof-disable-"..e].value then
		place_off_grid(e)
	end
end
