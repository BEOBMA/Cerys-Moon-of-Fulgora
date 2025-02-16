local merge = require("lib").merge
local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
	merge(data.raw.item["fission-reactor-equipment"], {
		name = "mixed-oxide-reactor-equipment",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/mixed-oxide-reactor-equipment.png",
		icon_size = 64,
		place_as_equipment_result = "mixed-oxide-reactor-equipment",
		order = "a[energy-source]-b[fission-reactor]-b[mixed-oxide-reactor-equipment]",
		default_import_location = "cerys",
	}),
	{
		type = "item",
		flags = { "not-stackable" },
		name = "cerys-fulgoran-reactor-scaffold",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/scaffold.png",
		icon_size = 64,
		subgroup = "tool",
		order = "b[repair]-b[reactor-repair-scaffolding]",
		inventory_move_sound = item_sounds.metal_large_inventory_move,
		pick_sound = item_sounds.metal_large_inventory_pickup,
		drop_sound = item_sounds.metal_large_inventory_move,
		stack_size = 1,
		place_result = "cerys-fulgoran-reactor-scaffold",
	},
	{
		type = "item",
		name = "ancient-structure-repair-part",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/ancient-repair-part.png",
		icon_size = 64,
		subgroup = "tool",
		order = "b[repair]-b[ancient-structure-repair-part]",
		inventory_move_sound = item_sounds.repair_pack_inventory_move,
		pick_sound = item_sounds.repair_pack_inventory_pickup,
		drop_sound = item_sounds.repair_pack_inventory_move,
		stack_size = 1,
	},
	merge(data.raw.item["lightning-rod"], {
		name = "charging-rod",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/charging-rod.png",
		icon_size = 64,
		order = "e[accumulator]-b[charging-rod]",
		subgroup = "energy",
		place_result = "charging-rod",
		default_import_location = "cerys",
	}),
	merge(data.raw.item["nuclear-fuel"], {
		name = "plutonium-fuel",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/plutonium-fuel.png",
		icon_size = 64,
		subgroup = "plutonium-processing",
		order = "c-a",
		fuel_value = "4GJ",
		default_import_location = "cerys",
		fuel_acceleration_multiplier = 4,
		fuel_top_speed_multiplier = 1.25,
	}),
	merge(data.raw.item["uranium-235"], {
		name = "plutonium-238",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/plutonium-238.png",
		icon_size = 64,
		pictures = {
			layers = {
				{
					size = 64,
					filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/plutonium-238.png",
					scale = 0.5,
					mipmap_count = 4,
				},
				{
					draw_as_light = true,
					blend_mode = "additive",
					size = 64,
					filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/plutonium-238.png",
					scale = 0.5,
					tint = { 0.3, 0.3, 0.3, 0.3 },
				},
			},
		},
		subgroup = "plutonium-processing",
		order = "b-b",
		default_import_location = "cerys",
	}),
	merge(data.raw.item["uranium-238"], {
		name = "plutonium-239", -- Fissile
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/plutonium-239.png",
		icon_size = 64,
		pictures = {
			layers = {
				{
					size = 64,
					filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/plutonium-239.png",
					scale = 0.5,
					mipmap_count = 4,
				},
				{
					draw_as_light = true,
					blend_mode = "additive",
					size = 64,
					filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/plutonium-239.png",
					scale = 0.5,
					tint = { 0.3, 0.3, 0.3, 0.3 },
				},
			},
		},
		subgroup = "plutonium-processing",
		order = "b-c",
		default_import_location = "cerys",
	}),
	merge(data.raw.tool["electromagnetic-science-pack"], {
		name = "cerys-science-pack",
		localised_description = "nil",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/cerys-science-pack.png",
		icon_size = 64,
		weight = 1 * 1000 * 1000000, -- Cannot be launched on rocket
		order = "j-a[cerys]",
		default_import_location = "cerys",
	}),
	merge(data.raw.tool["electromagnetic-science-pack"], {
		name = "fulgoran-cryogenics-progress",
		localised_description = "nil",
		hidden = true,
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/empty-science-pack.png",
		icon_size = 64,
		weight = 1 * 1000 * 1000000,
		order = "j-a[cerys]-b[fulgoran-cryogenics-progress]",
	}),
	merge(data.raw.item["lab"], {
		name = "cerys-lab",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/cerys-lab-cropped.png",
		icon_size = 64,
		order = "zzzz",
		place_result = "cerys-lab",
		default_import_location = "cerys",
	}),
	merge(data.raw.item["ice"], {
		name = "methane-ice",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/methane-ice.png",
		icon_size = 64,
		subgroup = "cerys-processes",
		order = "d-a",
		default_import_location = "cerys",
	}),
	merge(data.raw.item["iron-ore"], {
		name = "cerys-nitrogen-rich-minerals",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nitrogen-rich-minerals.png",
		icon_size = 64,
		subgroup = "cerys-processes",
		order = "d-b",
		pictures = {
			{
				size = 64,
				filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nitrogen-rich-minerals.png",
				scale = 0.5,
				mipmap_count = 4,
			},
			{
				size = 64,
				filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nitrogen-rich-minerals-1.png",
				scale = 0.5,
				mipmap_count = 4,
			},
			{
				size = 64,
				filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nitrogen-rich-minerals-2.png",
				scale = 0.5,
				mipmap_count = 4,
			},
			{
				size = 64,
				filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nitrogen-rich-minerals-3.png",
				scale = 0.5,
				mipmap_count = 4,
			},
		},
		default_import_location = "cerys",
	}),
	{
		type = "item",
		name = "cerys-nuclear-scrap",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/nuclear-scrap.png",
		icon_size = 64,
		pictures = {
			{
				size = 64,
				filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/nuclear-scrap.png",
				scale = 0.5,
				mipmap_count = 4,
			},
			{
				size = 64,
				filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/nuclear-scrap-1.png",
				scale = 0.5,
				mipmap_count = 4,
			},
			{
				size = 64,
				filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/nuclear-scrap-2.png",
				scale = 0.5,
				mipmap_count = 4,
			},
			{
				size = 64,
				filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/nuclear-scrap-3.png",
				scale = 0.5,
				mipmap_count = 4,
			},
			{
				size = 64,
				filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/nuclear-scrap-4.png",
				scale = 0.5,
				mipmap_count = 4,
			},
			{
				size = 64,
				filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/nuclear-scrap-5.png",
				scale = 0.5,
				mipmap_count = 4,
			},
		},
		subgroup = "cerys-processes",
		order = "a-c",
		inventory_move_sound = item_sounds.resource_inventory_move,
		pick_sound = item_sounds.resource_inventory_pickup,
		drop_sound = item_sounds.resource_inventory_move,
		stack_size = 50,
		default_import_location = "cerys",
		weight = 2 * 1000,
	},
	-- {
	-- 	type = "item",
	-- 	name = "ancient-nuclear-fuel-cell",
	-- 	icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/ancient-nuclear-fuel-cell.png",
	-- 	subgroup = "cerys-processes",
	-- 	order = "a-b",
	-- 	inventory_move_sound = item_sounds.nuclear_inventory_move,
	-- 	pick_sound = item_sounds.nuclear_inventory_pickup,
	-- 	drop_sound = item_sounds.nuclear_inventory_move,
	-- 	stack_size = 50,
	-- 	weight = 100 * 1000,
	-- 	default_import_location = "cerys",
	-- },
	{
		-- Non-obtainable. It's here to make non-minable entities trigger a 'this entity cannot be mind' text when mined, without showing anything unusual in Factoriopedia.
		type = "item",
		name = "cerys-fulgoran-crusher",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/crusher.png",
		icon_size = 280,
		subgroup = "production-machine",
		order = "h[cryogenic-plant]-e[fulgoran-crusher]",
		hidden = true,
		default_import_location = "cerys",
		weight = 1000 * 1000,
		stack_size = 20,
	},
	{
		-- Non-obtainable. It's here to make non-minable entities trigger a 'this entity cannot be mind' text when mined, without showing anything unusual in Factoriopedia.
		type = "item",
		name = "cerys-fulgoran-cryogenic-plant",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/cryogenic-plant.png",
		icon_size = 223,
		subgroup = "production-machine",
		order = "h[cryogenic-plant]-b[fulgoran-cryogenic-plant]",
		hidden = true,
		default_import_location = "cerys",
		weight = 1000 * 1000,
		stack_size = 20,
	},
	{
		-- Non-obtainable. It's here to make non-minable entities trigger a 'this entity cannot be mind' text when mined, without showing anything unusual in Factoriopedia.
		type = "item",
		name = "cerys-fulgoran-reactor",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/fulgoran-reactor.png",
		icon_size = 64,
		subgroup = "production-machine",
		order = "h[cryogenic-plant]-c[fulgoran-reactor]",
		hidden = true,
		default_import_location = "cerys",
		weight = 1000 * 1000,
		stack_size = 10,
	},
	{
		-- Non-obtainable. It's here to make non-minable entities trigger a 'this entity cannot be mind' text when mined, without showing anything unusual in Factoriopedia.
		type = "item",
		name = "cerys-fulgoran-radiative-tower",
		icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/radiative-tower.png",
		icon_size = 64,
		subgroup = "production-machine",
		order = "h[cryogenic-plant]-d[fulgoran-radiative-tower]",
		hidden = true,
		default_import_location = "cerys",
		weight = 1000 * 1000,
		stack_size = 20,
		place_result = "cerys-fulgoran-radiative-tower-contracted-container",
	},
})

local e1 = merge(data.raw.ammo["uranium-rounds-magazine"], {
	name = "plutonium-rounds-magazine",
	icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/plutonium-rounds-magazine.png",
	icon_size = 64,
	order = "a[basic-clips]-d[plutonium-rounds-magazine]",
	default_import_location = "cerys",
})
-- e1.pictures.layers[1].filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/plutonium-rounds-magazine.png"
e1.pictures = {
	layers = {
		{
			size = 64,
			filename = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/plutonium-rounds-magazine.png",
			scale = 0.5,
			mipmap_count = 4,
		},
		{
			draw_as_light = true,
			size = 64,
			filename = "__base__/graphics/icons/uranium-rounds-magazine-light.png",
			scale = 0.5,
		},
	},
}
e1.ammo_type.action.action_delivery.target_effects[2].damage.amount = 48

local e2 = merge(data.raw.item["uranium-fuel-cell"], {
	name = "mixed-oxide-fuel-cell",
	fuel_category = "nuclear-mixed-oxide",
	icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/mixed-oxide-fuel-cell.png",
	icon_size = 64,
	subgroup = "plutonium-processing",
	order = "b-d",
	burnt_result = "depleted-mixed-oxide-fuel-cell",
	fuel_value = "128GJ",
	default_import_location = "cerys",
})

local e3 = merge(data.raw.item["depleted-uranium-fuel-cell"], {
	name = "depleted-mixed-oxide-fuel-cell",
	icon = "__Cerys-Moon-of-Fulgora__/graphics/icons/nuclear/depleted-mixed-oxide-fuel-cell.png",
	icon_size = 64,
	subgroup = "plutonium-processing",
	order = "b-e",
	default_import_location = "cerys",
})

data:extend({ e1, e2, e3 })
