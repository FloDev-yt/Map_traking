scoreboard players add @s g_Xcoords 10
scoreboard players add @s g_Zcoords 10
scoreboard players operation @s g_Zcoords *= #21 g_Zcoords
scoreboard players operation @s g_Zcoords += @s g_Xcoords
scoreboard players remove @s g_Xcoords 10
execute store result entity @e[type=armor_stand,name=mt_buffer,limit=1] HandItems.[0].tag.map int 1 run scoreboard players add @s g_Zcoords 1000000000