scoreboard objectives add g_Xcoords dummy
scoreboard objectives add g_Zcoords dummy
scoreboard objectives add mt_Xcoords_save dummy
scoreboard objectives add mt_Zcoords_save dummy
scoreboard players set #1024 mt_Xcoords_save 1024
scoreboard players set #21 mt_Xcoords_save 21
scoreboard objectives add mt_dropMap minecraft.dropped:minecraft.map
scoreboard objectives add mt_dropFMap minecraft.dropped:minecraft.filled_map
scoreboard players reset @s mt_dropMap
scoreboard players reset @s mt_dropFMap

# find admin for give a message
tag @a[gamemode=creative] add bp_adminMsg
tag @a[gamemode=creative] add admin
tag @a[tag=admin] add bp_adminMsg
# if not admin 
execute unless entity @a[tag=bp_adminMsg] run tag @a add bp_adminMsg
tellraw @a[tag=bp_adminMsg] ["",{"text":"[","color":"aqua"},{"text":"Map_traking","color":"dark_aqua"},{"text":"]","color":"aqua"},{"text":" reloaded","color":"dark_green"}]
tag @a[tag=bp_adminMsg] remove bp_adminMsg

schedule function map_traking:main_20t 20t