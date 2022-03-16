execute store result score @s mt_dropFMap run data get entity @s Item.Count
execute as @s store result entity @s Item.Count byte 1 run scoreboard players remove @s mt_dropFMap 1
execute as @e[type=item,distance=..1,sort=nearest,limit=1,scores={mt_dropMap=11}] at @s run function map_traking:floor_crafting/clone_item
# annimation
playsound ui.cartography_table.take_result master @p ~ ~ ~ 1 1.8
particle minecraft:composter ~ ~0.5 ~ 0.3 0.3 0.3 1 5
# reset
scoreboard players reset @s mt_dropFMap