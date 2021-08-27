schedule function map_traking:main_20t 20t
# craft
execute as @e[type=item,scores={mt_dropMap=10}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:ender_pearl"}}] run function map_traking:floor_crafting/craft_map_traking
execute as @a[gamemode=!spectator,scores={mt_dropMap=1..}] at @s run function map_traking:floor_crafting/drop_map
execute as @a[gamemode=!spectator,scores={mt_dropFMap=1..}] at @s run function map_traking:floor_crafting/drop_fmap
# have map traking
execute as @a[predicate=map_traking:if_map_mainhand] run function map_traking:check_coord
execute as @a[predicate=map_traking:if_map_offhand] run function map_traking:map_offhand