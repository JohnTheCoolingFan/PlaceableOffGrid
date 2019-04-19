local entity_list = require("entity-list")

function has_value(tab, val)
	for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

function placeOffGrid(dataType)
	for i, e in pairs(data.raw[dataType]) do
		local flags = e.flags
		if not has_value(flags, "placeable-off-grid") then
			table.insert(flags, "placeable-off-grid")
			e.flags = flags
		end
	end
end

for i, e in pairs(entity_list) do
	if not settings.startup["pof-disable-"..e].value then
		placeOffGrid(e)
	end
end