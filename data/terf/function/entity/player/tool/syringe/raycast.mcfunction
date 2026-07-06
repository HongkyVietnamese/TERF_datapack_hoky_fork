#summon a marker to mark the current position
execute positioned ~-.5 ~-.5 ~-.5 run function terf:entity/player/tool/syringe/as_target_tank with entity @n[type=marker,tag=terf_multiblock_tank,dx=0,dy=0,dz=0] data

#continue raycast
scoreboard players remove terminated terf_states 1
execute unless score terminated terf_states matches ..0 positioned ^ ^ ^.2 run function terf:entity/player/tool/syringe/raycast
