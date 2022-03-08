# save new map zone
execute store result score #centerMap mt_Xcoords run scoreboard players operation @s mt_Xcoords = #newValue mt_Xcoords
execute store result score #centerMap mt_Zcoords run scoreboard players operation @s mt_Zcoords = #newValue mt_Zcoords
# summon armor_stand
summon armor_stand ~ ~ ~ {CustomName:"\"mt_buffer\"",Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:filled_map",Count:1b,tag:{map:2147483647,display:{Name:"{\"text\":\"Map Traking\"}",Lore:["{\"text\":\"you are out\"}","{\"text\":\"of max limit\"}"]},Enchantments:[{}]}},{}]}
# calculates the number of maps to be replaced (all maps in inventory)
execute store result entity @e[type=armor_stand,name=mt_buffer,distance=..0.1,limit=1] HandItems.[0].Count int 1 run clear @s minecraft:filled_map{Enchantments:[{}]}

# # Zone1 [x:-20992,z:-20992] at [x:20992,z:20992]
execute if entity @s[scores={mt_Xcoords=-20..20,mt_Zcoords=-20..20}] run function map_traking:map_zone1
# # Zone 2 not implemented
execute unless entity @s[scores={mt_Xcoords=-20..20,mt_Zcoords=-20..20}] run function map_traking:map_zone_extended

# calculate map center
scoreboard players operation #centerMap mt_Xcoords *= #1024 mt_Xcoords
scoreboard players operation #centerMap mt_Zcoords *= #1024 mt_Xcoords
execute as @e[type=armor_stand,name=mt_buffer,distance=..0.1,limit=1] unless entity @s[nbt={HandItems:[{tag:{map:2147483647}}]}] run item modify entity @s weapon.mainhand map_traking:set_lore

# remplace map with new data
execute if entity @s[tag=!mt_offHand] run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,name=mt_buffer,distance=..0.1,limit=1] weapon.mainhand
execute if entity @s[tag=mt_offHand] run item replace entity @s weapon.offhand from entity @e[type=armor_stand,name=mt_buffer,distance=..0.1,limit=1] weapon.mainhand
# reset 
kill @e[type=armor_stand,name=mt_buffer,distance=..0.1,limit=1]