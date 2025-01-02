local entity_list = require("entity-list")
local result = {}

local belted_categories = {
	'lane-splitter',
	'linked-belt',
	'loader-1x1',
	'loader',
	'splitter',
	'transport-belt',
	'underground-belt'
}

local function has_value(val, list)
	for _, v in pairs(list) do
		if v == val then
			return true
		end
	end
	return false
end

for _, e in pairs(entity_list) do
	if has_value(e, belted_categories) then
		table.insert(result,
			{
				type = "bool-setting",
				name = "pof-disable-" .. e,
				setting_type = "startup",
				localised_name = { "mod-setting-name.pof-disable-name", e },
				localised_description = { "mod-setting-description.pof-disable-description-on-by-default", e },
				default_value = true
			}
		)
	else
		table.insert(result,
			{
				type = "bool-setting",
				name = "pof-disable-" .. e,
				setting_type = "startup",
				localised_name = { "mod-setting-name.pof-disable-name", e },
				localised_description = { "mod-setting-description.pof-disable-description", e },
				default_value = false
			}
		)
	end
end

data:extend(result)
