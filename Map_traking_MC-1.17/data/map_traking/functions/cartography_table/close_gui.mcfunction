summon marker ~ ~ ~ {CustomName:"\"mt_tp\""}
tp @e[type=marker,name=mt_tp,distance=..0.1,limit=1] @s
tp @s ~ ~500 ~
tag @s add mt_tp
function map_traking:cartography_table/reset_scores
function map_traking:messages/close_gui
schedule function map_traking:cartography_table/tp_1t 1t