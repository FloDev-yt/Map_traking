execute store result score @s mt_dropFMap run data get entity @s Item.Count
execute as @e[type=item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:ender_pearl"}}] store result score @s mt_dropFMap run data get entity @s Item.Count
execute as @e[type=item,distance=..1,limit=2,scores={mt_dropFMap=0..}] store result entity @s Item.Count byte 1 run scoreboard players remove @s mt_dropFMap 1

summon item ~ ~0.3 ~ {Item:{id:"minecraft:filled_map",Count:1b,tag:{tag:{map:1000000220},display:{Name:"{\"text\":\"Map Traking\"}",Lore:["{\"text\":\"Look to update\"}"]},Enchantments:[{}]}},PickupDelay:40s}
# annimation
playsound ui.cartography_table.take_result master @p ~ ~ ~ 1 1.8
particle minecraft:composter ~ ~0.5 ~ 0.3 0.3 0.3 1 5
# reset score
scoreboard players reset @a[gamemode=!spectator,distance=..10,scores={mt_Xcoords_save=-2147483648..}] mt_Xcoords_save