# save new map zone
scoreboard players operation @s mt_Xcoords_save = @s g_Xcoords
scoreboard players operation @s mt_Zcoords_save = @s g_Zcoords
# summon armor_stand
summon armor_stand ~ ~ ~ {CustomName:"\"mt_buffer\"",Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:filled_map",Count:1b,tag:{map:2147483647,display:{Name:"{\"text\":\"Map Traking\"}",Lore:["{\"text\":\"you are out\"}","{\"text\":\"of max limit\"}"]},Enchantments:[{}]}},{}]}
# calculates the number of maps to be replaced (all maps in inventory)
execute store result entity @e[type=armor_stand,name=mt_buffer,limit=1] HandItems.[0].Count int 1 run clear @s minecraft:filled_map{Enchantments:[{}]}
# calculate map center
scoreboard players operation .#mt_X mt_Xcoords_save = @s g_Xcoords
scoreboard players operation .#mt_Z mt_Xcoords_save = @s g_Zcoords
scoreboard players operation .#mt_X mt_Xcoords_save *= #1024 mt_Xcoords_save
scoreboard players operation .#mt_Z mt_Xcoords_save *= #1024 mt_Xcoords_save
item modify entity @e[type=armor_stand,name=mt_buffer,limit=1] weapon.mainhand map_traking:set_lore

# # Zone1 [x:-10752,z:-10752] at [x:10752,z:10752]
execute if entity @s[scores={g_Xcoords=-10..10,g_Zcoords=-10..10}] run function map_traking:map_zone1
# # Zone 2

# remplace map with new data
execute if entity @s[tag=!mt_offHand] run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,name=mt_buffer,limit=1] weapon.mainhand
execute if entity @s[tag=mt_offHand] run item replace entity @s weapon.offhand from entity @e[type=armor_stand,name=mt_buffer,limit=1] weapon.mainhand
# reset 
kill @e[type=armor_stand,name=mt_buffer,limit=1]
# scoreboard players operation @s g_Zcoords = @s mt_Zcoords_save
