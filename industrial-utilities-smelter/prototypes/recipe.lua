data:extend({
    {
        type = "recipe",
        name = "iu-industrial-smelter",
        categories = {"crafting-with-fluid"},
        enabled = false,
        energy_required = 30,
        ingredients = {
            {type = "item", name = "electric-furnace", amount = 1},
            {type = "item", name = "steel-plate", amount = 20},
            {type = "item", name = "advanced-circuit", amount = 10},
            {type = "fluid", name = "lubricant", amount = 100}
        },
        results = {
            {type = "item", name = "iu-industrial-smelter", amount = 1}
        }
    }
})
