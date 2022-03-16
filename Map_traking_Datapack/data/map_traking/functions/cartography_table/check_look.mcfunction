execute store result score #newValue mt_lookY run data get entity @s Rotation[0]
execute store result score #newValue mt_lookX run data get entity @s Rotation[1]
execute unless score #newValue mt_lookY = @s mt_lookY run function map_traking:cartography_table/reset_scores
execute unless score #newValue mt_lookX = @s mt_lookX run function map_traking:cartography_table/reset_scores