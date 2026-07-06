item replace entity 0010ccd2-0010-cd37-0010-cd360010c8e1 container.0 from entity @s weapon

$data modify entity 0010ccd2-0010-cd37-0010-cd360010c8e1 item.components.minecraft:custom_data.terf.fluid_type set value '$(id)'
$data modify entity 0010ccd2-0010-cd37-0010-cd360010c8e1 item.components.minecraft:item_name set value "Fluid ID Tool: $(id)"
$function terf:entity/player/tool/fluid_id/as_fluid_dictionary with storage terf:constants fluid_dictionary.$(id)

item replace entity @s weapon from entity 0010ccd2-0010-cd37-0010-cd360010c8e1 container.0
item replace entity 0010ccd2-0010-cd37-0010-cd360010c8e1 container.0 with air

$title @s actionbar {"text":"Copied fluid type $(id)","color":"yellow"}

playsound terf:alarms.toolbeep player @a[distance=0..] ~ ~ ~ 1 1

$execute positioned $(outpos) run function terf:entity/player/tool/fluid_id/particle {color:"1,1,0"}