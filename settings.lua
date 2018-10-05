local entity_list = require("entity-list")
local result = {}

for i, e in pairs(entity_list) do
	table.insert(result, 
		{
			type = "bool-setting",
			name = "pof-disable-"..e,
			setting_type = "startup",
			localised_name = {"mod-setting-name.pof-disable-name", e},
			localised_description = {"mod-setting-description.pof-disable-description", e},
			default_value = false
		}
	)
end

data:extend(result)