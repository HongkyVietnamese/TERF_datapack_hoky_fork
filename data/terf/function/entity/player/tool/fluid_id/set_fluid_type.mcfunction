#fail if the tanks type is not changeable
scoreboard players set error terf_states 0
$execute unless data storage terf:temp temp.changetype positioned $(outpos) run return run function terf:entity/player/tool/fluid_id/fail

#fail if tank is full
$scoreboard players set tank_amount terf_states $(amount)
scoreboard players set error terf_states -1
execute if score restricted_fluid_id terf_states matches 1 if score tank_amount terf_states matches 1.. run return run function terf:entity/player/tool/fluid_id/fail

data modify storage terf:temp temp.new_id set from entity @s SelectedItem.components.minecraft:custom_data.terf.fluid_type

function terf:entity/player/tool/fluid_id/run_changetype with storage terf:temp temp
$execute unless score error terf_states matches 0 positioned $(outpos) run return run function terf:entity/player/tool/fluid_id/fail

$data modify entity $(uuid) data.fluids[$(tank_index)].amount set value 0
$data modify entity $(uuid) data.fluids[$(tank_index)].id set from storage terf:temp temp.new_id
title @s actionbar [{"text":"Changed tank fluid type to ","color":"green"},{"nbt":"SelectedItem.components.minecraft:custom_data.terf.fluid_type","entity":"@s"}]

$tag $(uuid) remove fluid_filter_$(id)
$execute as $(uuid) run function terf:entity/player/tool/fluid_id/add_filter_tag with entity @s data.fluids[$(tank_index)] 

playsound terf:alarms.toolbeep player @a[distance=0..] ~ ~ ~ 1 0.8
playsound terf:alarms.beep4 player @a[distance=0..] ~ ~ ~ 1 0

$execute positioned $(outpos) run function terf:entity/player/tool/fluid_id/particle {color:"0,1,0"}