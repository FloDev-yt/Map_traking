advancement revoke @s only map_traking:open_carto_table
scoreboard players reset @s mt_cartoTable
execute store result score @s mt_nbMapT run clear @s minecraft:filled_map{Enchantments:[{}]} 0
execute store result score @s mt_lookY run data get entity @s Rotation[0]
execute store result score @s mt_lookX run data get entity @s Rotation[1]
schedule function map_traking:cartography_table/check_1t 1t