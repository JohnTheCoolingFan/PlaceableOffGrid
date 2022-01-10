local entity_list = require("entity-list")

local function has_value(tab, val)
	for _, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

local function add_pog_flag(dataType)
	for _, entity_prototype in pairs(data.raw[dataType]) do
        if not entity_prototype.flags then
            entity_prototype.flags = {"placeable-off-grid"}
        elseif not has_value(entity_prototype.flags, "placeable-off-grid") then
            table.insert(entity_prototype.flags, "placeable-off-grid")
        end
	end
end

for _, entity_type in pairs(entity_list) do
	if not settings.startup["pof-disable-"..entity_type].value then
		add_pog_flag(entity_type)
	end
end
