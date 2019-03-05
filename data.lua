data:extend({
	{
    	type = "selection-tool",
    	name = "snap-tool",
    	icon = "__base__/graphics/icons/blueprint.png",
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
  	}
})
