execute positioned ~-.5 ~-.5 ~-.5 run function terf:entity/player/tool/fluid_id/as_target_tank with entity @n[type=marker,tag=terf_multiblock_tank,dx=0,dy=0,dz=0] data
scoreboard players remove terminated terf_states 1
execute if score terminated terf_states matches ..0 run return run execute if score terminated terf_states matches 0 run playsound terf:alarms.toolbeep player @a[distance=0..] ~ ~ ~ 1 0
execute positioned ^ ^ ^.2 run function terf:entity/player/tool/fluid_id/raycast