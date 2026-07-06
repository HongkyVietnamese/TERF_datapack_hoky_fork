#stop the raycast
scoreboard players set terminated terf_states -1

$data modify storage terf:temp syringe_tank set from entity $(uuid) data.fluids[$(tank)]
execute if score sneaking terf_states matches 0 run function terf:entity/player/tool/syringe/insert_fluid
execute if score sneaking terf_states matches 1 run function terf:entity/player/tool/syringe/extract_fluid
$data modify entity $(uuid) data.fluids[$(tank)] set from storage terf:temp syringe_tank
