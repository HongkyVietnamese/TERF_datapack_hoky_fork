execute store result storage terf:temp args.arg4 int 1 run scoreboard players add index terf_states 1
$execute positioned $(outpos) run function datapipes_lib:require/with_args/5 with storage terf:temp args

data remove storage terf:temp temp[0]
execute if data storage terf:temp temp[0] run function terf:entity/machines/multiblock_core_show_tanks_iterate with storage terf:temp temp[0]