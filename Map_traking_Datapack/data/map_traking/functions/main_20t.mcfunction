schedule function map_traking:main_20t 20t
# craft
execute as @a[scores={mt_dropMap=1..}] at @s run function map_traking:floor_crafting/drop_map
execute as @a[scores={mt_dropFMap=1..}] at @s run function map_traking:floor_crafting/drop_fmap
execute as @e[type=item,scores={mt_dropMap=10..11}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:ender_pearl"}}] run function map_traking:floor_crafting/map_traking
execute as @e[type=item,scores={mt_dropMap=10}] at @s if entity @e[type=item,scores={mt_dropMap=11},distance=..1] run function map_traking:floor_crafting/clone
# have map traking
execute as @a[predicate=map_traking:if_map_mainhand] run function map_traking:check_coord
execute as @a[predicate=map_traking:if_map_offhand] run function map_traking:map_offhand
# info
execute as @a[predicate=map_traking:if_info] run function map_traking:messages/set_flag_info