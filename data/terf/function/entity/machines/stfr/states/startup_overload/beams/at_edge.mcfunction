execute if function terf:entity/machines/stfr/states/startup_overload/beams/is_vertex_clear run return fail
execute positioned ^ ^ ^1 if function terf:entity/machines/stfr/states/startup_overload/beams/is_vertex_clear run return fail

data modify storage terf:temp args.array set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]

#get coords of stfr
execute store result score x terf_states run data get entity @n[tag=terf_stfr] Pos[0] 100
execute store result score y terf_states run data get entity @n[tag=terf_stfr] Pos[1] 100
execute store result score z terf_states run data get entity @n[tag=terf_stfr] Pos[2] 100

#corner 1
execute facing entity @n[tag=terf_stfr] feet run summon marker ^ ^ ^-32 {UUID:[I;1101100,1101101,1100001,1101111]}
execute store result score x2 terf_states run data get entity 0010cd2c-0010-cd2d-0010-c8e10010cd37 Pos[0] 100
execute store result score y2 terf_states run data get entity 0010cd2c-0010-cd2d-0010-c8e10010cd37 Pos[1] 100
execute store result score z2 terf_states run data get entity 0010cd2c-0010-cd2d-0010-c8e10010cd37 Pos[2] 100
kill 0010cd2c-0010-cd2d-0010-c8e10010cd37

execute store result storage terf:temp args.array[0] float 0.01 run scoreboard players operation x2 terf_states -= x terf_states
execute store result storage terf:temp args.array[4] float 0.01 run scoreboard players operation y2 terf_states -= y terf_states
execute store result storage terf:temp args.array[8] float 0.01 run scoreboard players operation z2 terf_states -= z terf_states

#corner 2
execute positioned ^ ^ ^1 facing entity @n[tag=terf_stfr] feet run summon marker ^ ^ ^-32 {UUID:[I;1101100,1101101,1100001,1101111]}
execute store result score x2 terf_states run data get entity 0010cd2c-0010-cd2d-0010-c8e10010cd37 Pos[0] 100
execute store result score y2 terf_states run data get entity 0010cd2c-0010-cd2d-0010-c8e10010cd37 Pos[1] 100
execute store result score z2 terf_states run data get entity 0010cd2c-0010-cd2d-0010-c8e10010cd37 Pos[2] 100
kill 0010cd2c-0010-cd2d-0010-c8e10010cd37

execute store result storage terf:temp args.array[1] float 0.01 run scoreboard players operation x2 terf_states -= x terf_states
execute store result storage terf:temp args.array[5] float 0.01 run scoreboard players operation y2 terf_states -= y terf_states
execute store result storage terf:temp args.array[9] float 0.01 run scoreboard players operation z2 terf_states -= z terf_states

scoreboard players operation temp terf_states = @s terf_data_Af
execute at @n[tag=terf_stfr] summon item_display run function terf:entity/machines/stfr/states/startup_overload/beams/triangle_summon