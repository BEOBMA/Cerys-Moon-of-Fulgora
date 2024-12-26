data:extend({
	{
		type = "recipe",
		name = "ancient-structure-repair-part",
		category = "crafting-or-fulgoran-cryogenics",
		energy_required = 0.7,
		ingredients = {
			{ type = "item", name = "electronic-circuit", amount = 2 },
			{ type = "item", name = "engine-unit", amount = 1 },
		},
		results = {
			{ type = "item", name = "ancient-structure-repair-part", amount = 1 },
		},
	},

	{
		type = "recipe",
		name = "cerys-fulgoran-reactor-scaffold",
		energy_required = 20,
		ingredients = {
			{ type = "item", name = "steel-plate", amount = 500 },
			{ type = "item", name = "refined-concrete", amount = 500 },
			{ type = "item", name = "processing-unit", amount = 50 },
		},
		results = { { type = "item", name = "cerys-fulgoran-reactor-scaffold", amount = 1 } },
	},

	{
		type = "recipe",
		name = "cerys-excavate-nuclear-reactor",
		subgroup = "cerys-repair",
		order = "c",
		icon = "__base__/graphics/icons/concrete.png",
		energy_required = 1.6,
		hide_from_player_crafting = true,
		category = "nuclear-reactor-repair",
		ingredients = {},
		results = {
			{ type = "item", name = "concrete", amount = 100 },
		},
		allow_quality = false,
		hide_from_signal_gui = true,
		show_amount_in_title = false,
	},

	{
		type = "recipe",
		name = "cerys-repair-nuclear-reactor",
		subgroup = "cerys-repair",
		order = "d",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/ancient-repair-part.png",
		icon_size = 268,
		energy_required = 1 / 5,
		hide_from_player_crafting = true,
		category = "nuclear-reactor-repair",
		ingredients = {
			-- The script need to be updated if these change:
			{ type = "item", name = "ancient-structure-repair-part", amount = 4 },
			{ type = "item", name = "processing-unit", amount = 1 },
		},
		results = {},
		allow_quality = false,
		allow_productivity = true,
		hide_from_signal_gui = true,
	},

	{
		type = "recipe",
		name = "cerys-repair-cryogenic-plant",
		subgroup = "cerys-repair",
		order = "b",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/ancient-repair-part.png",
		icon_size = 268,
		energy_required = 1 / 20,
		hide_from_player_crafting = true,
		category = "cryogenic-plant-repair",
		ingredients = {
			{ type = "item", name = "ancient-structure-repair-part", amount = 1 },
		},
		results = {},
		allow_quality = false,
		allow_productivity = true,
		hide_from_signal_gui = true,
	},

	{
		type = "recipe",
		name = "cerys-discover-fulgoran-cryogenics",
		subgroup = "cerys-repair",
		order = "e",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/cerys-science-pack.png",
		icon_size = 64,
		energy_required = 3,
		enabled = true,
		hide_from_player_crafting = true,
		category = "fulgoran-cryogenics",
		ingredients = {
			{ type = "item", name = "cerys-nuclear-scrap", amount = 20 },
		},
		results = {
			{ type = "research-progress", research_item = "cerys-science-pack", amount = 1 },
		},
		allow_quality = false,
		allow_productivity = false,
		hide_from_signal_gui = true,
	},
	{
		type = "recipe",
		name = "cerys-upgrade-fulgoran-cryogenic-plant-quality",
		subgroup = "cerys-repair",
		order = "f",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/technology/cryogenic-plant.png",
		icon_size = 432,
		energy_required = 30,
		enabled = true,
		hide_from_player_crafting = true,
		category = "fulgoran-cryogenics",
		ingredients = {
			{ type = "item", name = "ancient-structure-repair-part", amount = 25 },
			{ type = "item", name = "advanced-circuit", amount = 25 }, -- blue chips here would be too little variety
		},
		results = {},
		allow_quality = true,
		allow_productivity = false,
		hide_from_signal_gui = true,
	},
})
