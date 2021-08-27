execute store result score @s g_Xcoords run data get entity @s Pos[0]
execute store result score @s g_Zcoords run data get entity @s Pos[2]
scoreboard players add @s g_Xcoords 512
scoreboard players add @s g_Zcoords 512
scoreboard players operation @s g_Xcoords /= #1024 mt_Xcoords_save
scoreboard players operation @s g_Zcoords /= #1024 mt_Xcoords_save
execute unless score @s g_Zcoords = @s mt_Zcoords_save at @s positioned ~ 1000 ~ run function map_traking:map_change
execute unless score @s g_Xcoords = @s mt_Xcoords_save at @s positioned ~ 1000 ~ run function map_traking:map_change

