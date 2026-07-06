execute unless data entity @s data.fluids[0] run return fail
scoreboard players set index terf_states -1
data modify storage terf:temp args set value {arg1:'summon marker ~ ~ ~ {data:{uuid:"',arg3:'",tank:',arg5:'},Tags:["terf_multiblock_tank"]}'}
data modify storage terf:temp args.arg2 set string entity @s data.terf.machine_uuid
data modify storage terf:temp temp set from entity @s data.fluids
execute at @s run function terf:entity/machines/multiblock_core_show_tanks_iterate with storage terf:temp temp[0]