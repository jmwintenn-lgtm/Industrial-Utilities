local technology = table.deepcopy(data.raw.technology["advanced-material-processing-2"])

technology.name = "iu-industrial-smelting"
technology.localised_name = {"technology-name.iu-industrial-smelting"}
technology.localised_description = {"technology-description.iu-industrial-smelting"}
technology.prerequisites = {"advanced-material-processing-2", "lubricant"}
technology.unit = {
    count = 100,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
    },
    time = 30
}
technology.effects = {
    {
        type = "unlock-recipe",
        recipe = "iu-industrial-smelter"
    }
}
technology.order = "c-c-a[industrial-smelting]"

data:extend({technology})