local item = table.deepcopy(data.raw.item["electric-furnace"])

item.name = "iu-industrial-smelter"
item.place_result = "iu-industrial-smelter"
item.order = "b[production]-c[smelting]-b[iu-industrial-smelter]"

data:extend({item})