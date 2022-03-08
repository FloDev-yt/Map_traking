scoreboard objectives add mt_Xcoords dummy
scoreboard objectives add mt_Zcoords dummy
scoreboard objectives add mt_nbMapT dummy
scoreboard objectives add mt_lookX dummy
scoreboard objectives add mt_lookY dummy
scoreboard players set #1024 mt_Xcoords 1024
scoreboard players set #41 mt_Xcoords 41
scoreboard players reset * mt_dropMap
scoreboard players reset * mt_dropFMap
scoreboard objectives add mt_dropMap minecraft.dropped:minecraft.map
scoreboard objectives add mt_dropFMap minecraft.dropped:minecraft.filled_map
scoreboard objectives add mt_cartoTable minecraft.custom:interact_with_cartography_table

# find admin for give a message
tag @a[gamemode=creative] add adminMsg
## Option for serveur with tag admin
#tag @a[tag=admin] add adminMsg
# if not admin 
execute unless entity @a[tag=adminMsg] run tag @a add adminMsg
tellraw @a[tag=adminMsg] ["",{"text":"[","color":"aqua"},{"text":"Map traking","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://github.com/FloDev-yt/Map_traking"},"hoverEvent":{"action":"show_text","contents":["Lien vers le site du Datapack"]}},{"text":"]","color":"aqua"},{"text":" reloaded","color":"dark_green"}]
tag @a[tag=adminMsg] remove adminMsg

schedule function map_traking:main_20t 20t