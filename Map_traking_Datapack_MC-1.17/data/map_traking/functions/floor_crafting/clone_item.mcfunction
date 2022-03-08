summon item ~ ~ ~ {Item:{id:"minecraft:filled_map",Count:1b},Tags:[mt_summon]}
data modify entity @e[type=minecraft:item,tag=mt_summon,distance=..0.1,limit=1] Item.tag set from entity @s Item.tag
data remove entity @e[type=minecraft:item,tag=mt_summon,distance=..0.1,limit=1] Item.tag.Enchantments
tag @e[type=minecraft:item,tag=mt_summon,distance=..0.1,limit=1] remove mt_summon