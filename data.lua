-- TODO: better shortcut icon, mipmaps

data:extend({
	{
    	type = "selection-tool",
    	name = "snap-tool",
    	icon = "__PlaceableOffGrid__/graphics/icons/snap-tool.png",
    	icon_size = 32,
    	stack_size = 1,
    	subgroup = "tool",
    	order = "c[automated-construction]-e[snapper-to-grid]",
    	flags = {},
    	selection_color = {r = 0.9, g = 0.9, b = 0.9, a = 0.2},
    	alt_selection_color = {r = 0.9, g = 0.9, b = 0.9, a = 0.2},
    	selection_mode = {"buildable-type", 'same-force'},
    	alt_selection_mode = {"buildable-type", 'same-force'},
    	selection_cursor_box_type = "entity",
    	alt_selection_cursor_box_type = "copy",
    	can_be_mod_opened = true,
	},
	--[[ No need for recipe in current Factorio design
	{
    	type = "recipe",
    	name = "snap-tool",
    	enabled = true,
    	energy_required = 0.5,
    	ingredients =
    	{
      		{"blueprint", 1}
    	},
    	result = "snap-tool"
  	},]]
	{
		type = "shortcut",
		name = "snap-tool",
		action = "spawn-item",
		item_to_spawn = "snap-tool",
		icon =
		{
			filename = "__PlaceableOffGrid__/graphics/icons/snap-tool.png",
			priority = "extra-high-no-scale",
			size = 32,
			scale = 1,
			flags = {"gui-icon"}
		},
		small_icon =
		{
			filename = "__PlaceableOffGrid__/graphics/icons/snap-tool.png",
			priority = "extra-high-no-scale",
			size = 32,
			scale = 0.75,
			flags = {"gui-icon"}
		},
		disabled_small_icon =
		{
			filename = "__PlaceableOffGrid__/graphics/icons/snap-tool.png",
			priority = "extra-high-no-scale",
			size = 32,
			scale = 0.75,
			flags = {"gui-icon"}
		},
	}
})
