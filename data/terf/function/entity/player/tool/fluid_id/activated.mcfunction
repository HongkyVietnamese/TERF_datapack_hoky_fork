execute as @e[type=marker,tag=terf_multiblockcore,distance=..256] run function terf:entity/machines/multiblock_core_show_tanks
execute store result score terminated terf_states run attribute @s block_interaction_range get 5
function terf:entity/player/tool/fluid_id/raycast
kill @e[tag=terf_multiblock_tank]