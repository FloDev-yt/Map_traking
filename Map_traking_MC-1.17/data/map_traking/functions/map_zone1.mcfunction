scoreboard players add #newValue mt_Xcoords 20
scoreboard players add #newValue mt_Zcoords 20
scoreboard players operation #newValue mt_Zcoords *= #41 mt_Xcoords
scoreboard players operation #newValue mt_Zcoords += #newValue mt_Xcoords
execute store result entity @e[type=armor_stand,name=mt_buffer,distance=..0.1,limit=1] HandItems.[0].tag.map int 1 run scoreboard players add #newValue mt_Zcoords 1000000000
scoreboard players remove #newValue mt_Xcoords 20