scoreboard players set terminated terf_states -1

$data modify storage terf:temp temp set from entity $(uuid) data.fluids[$(tank)]
$data modify storage terf:temp temp merge value {uuid:"$(uuid)",tank_index:$(tank)}

scoreboard players set temp terf_states 0
execute if predicate datapipes_lib:pressing_sneak run scoreboard players set temp terf_states 1
$execute if score temp terf_states matches 0 at $(uuid) run function terf:entity/player/tool/fluid_id/set_fluid_type with storage terf:temp temp
$execute if score temp terf_states matches 1 at $(uuid) run function terf:entity/player/tool/fluid_id/copy_fluid_type with storage terf:temp temp
