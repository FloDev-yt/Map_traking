execute store result score #newValue mt_Xcoords run data get entity @s Pos[0]
execute store result score #newValue mt_Zcoords run data get entity @s Pos[2]
scoreboard players add #newValue mt_Xcoords 512
scoreboard players add #newValue mt_Zcoords 512
scoreboard players operation #newValue mt_Xcoords /= #1024 mt_Xcoords
scoreboard players operation #newValue mt_Zcoords /= #1024 mt_Xcoords
execute unless score #newValue mt_Zcoords = @s mt_Zcoords at @s positioned ~ ~400 ~ run function map_traking:map_change
execute unless score #newValue mt_Xcoords = @s mt_Xcoords at @s positioned ~ ~400 ~ run function map_traking:map_change

