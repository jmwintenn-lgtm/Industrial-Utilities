local furnace = table.deepcopy(data.raw.furnace["electric-furnace"])
local vanilla_furnace = data.raw.furnace["electric-furnace"]
local throughput = settings.startup["industrial-smelter-throughput"].value
local target_crafting_speed = throughput * 3.2
local speed_multiplier = target_crafting_speed / vanilla_furnace.crafting_speed

furnace.name = "iu-industrial-smelter"
furnace.collision_box = {{-3.5, -3.5}, {3.5, 3.5}}
furnace.selection_box = {{-3.5, -3.5}, {3.5, 3.5}}
furnace.crafting_speed = target_crafting_speed

-- Preserve the electric furnace's energy cost per item at the selected throughput.
local energy_usage_per_tick = util.parse_energy(vanilla_furnace.energy_usage) * speed_multiplier
furnace.energy_usage = string.format("%.0fJ", energy_usage_per_tick)

-- The electric furnace graphics are designed for a 3x3 footprint. Scale every
-- sprite layer to match this smelter's 7x7 footprint.
local function scale_graphics(graphics)
    if type(graphics) ~= "table" then
        return
    end

    if graphics.filename or graphics.filenames or graphics.stripes then
        graphics.scale = (graphics.scale or 1) * (7 / 3)
    end

    for _, value in pairs(graphics) do
        if type(value) == "table" then
            scale_graphics(value)
        end
    end
end

scale_graphics(furnace.graphics_set)
scale_graphics(furnace.graphics_set_flipped)

-- The copied furnace otherwise drops an electric furnace when mined.
furnace.minable.result = "iu-industrial-smelter"

furnace.module_slots = 0
furnace.quality_affects_module_slots = false

data:extend({furnace})
