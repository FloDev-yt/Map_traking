execute store result score #newValue mt_nbMapT run clear @s minecraft:filled_map{Enchantments:[{}]} 0
execute unless score #newValue mt_nbMapT = @s mt_nbMapT at @s run function map_traking:cartography_table/close_gui
execute if entity @s[scores={mt_nbMapT=0..}] run function map_traking:cartography_table/check_look