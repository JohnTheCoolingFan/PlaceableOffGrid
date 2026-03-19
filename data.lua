-- TODO: better shortcut icon, mipmaps

if settings.startup['enable-snap-tool'] then
	data:extend({
		{
			type = "selection-tool",
			name = "snap-tool",
			icon = "__PlaceableOffGrid__/graphics/icons/snap-tool.png",
			icon_size = 32,
			stack_size = 1,
			subgroup = "tool",
			order = "c[automated-construction]-e[snapper-to-grid]",
			flags = { 'spawnable' },
			select = {
				border_color = { r = 0.9, g = 0.9, b = 0.9, a = 0.2 },
				mode = { "buildable-type", 'same-force' },
				cursor_box_type = "entity",
			},
			alt_select = {
				border_color = { r = 0.9, g = 0.9, b = 0.9, a = 0.2 },
				mode = { "buildable-type", 'same-force' },
				cursor_box_type = "copy",
			}
		},
		{
			type = "shortcut",
			name = "snap-tool",
			action = "spawn-item",
			item_to_spawn = "snap-tool",
			style = "default",
			order = "b[blueprint]-h[snap-tool]",
			icon = "__PlaceableOffGrid__/graphics/icons/new-snap-tool-32.png",
			icon_size = 32,
			small_icon = "__PlaceableOffGrid__/graphics/icons/new-snap-tool-24.png",
			small_icon_size = 24
		}
	})

	if settings.startup['snap-tool-technology'].value then
		data.raw['shortcut']['snap-tool'].technology_to_unlock = 'snap-tool'
		data.raw['shortcut']['snap-tool'].unavailable_until_unlocked = true

		data:extend({
			{
				type = "technology",
				name = "snap-tool",
				icon = "__PlaceableOffGrid__/graphics/icons/snap-tool.png",
				icon_size = 32,
				prerequisites = { "laser" },
				unit =
				{
					count = 100,
					ingredients =
					{
						{ "automation-science-pack", 1 },
						{ "logistic-science-pack",   1 },
						{ "chemical-science-pack",   1 }
					},
					time = 15
				}
			}
		})
	end
end
