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
    	selection_mode = {"buildable-type"},
    	alt_selection_mode = {"buildable-type"},
    	selection_cursor_box_type = "entity",
    	alt_selection_cursor_box_type = "copy",
    	can_be_mod_opened = true,
    	show_in_library = true
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
		item_to_spawn = "snap-tool",
	}
})
