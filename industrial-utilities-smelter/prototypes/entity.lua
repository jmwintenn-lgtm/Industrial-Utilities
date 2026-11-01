local furnace = table.deepcopy(data.raw.furnace["electric-furnace"])

furnace.name = "iu-industrial-smelter"
furnace.collision_box = {{-3.5, -3.5}, {3.5, 3.5}}
furnace.selection_box = {{-3.5, -3.5}, {3.5, 3.5}}
furnace.module_slots = 0
furnace.quality_affects_module_slots = false

data:extend({furnace})