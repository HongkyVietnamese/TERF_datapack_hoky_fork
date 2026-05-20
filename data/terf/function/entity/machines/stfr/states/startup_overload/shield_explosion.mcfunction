scoreboard players set terminated terf_states 2000
data modify storage terf:temp args set from entity @s data.terf
data modify storage terf:temp args.max_duration set value 20
function terf:entity/machines/stfr/states/overload/shield_explosion_beams/iterate

particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0 20 force
particle minecraft:firework ~ ~ ~ 1 1 1 1 1000 force
particle minecraft:explosion ~ ~ ~ 0 0 0 10 6 force
summon minecraft:text_display ~ ~ ~ {Tags:["terf_random_vel","terf_particle","terf_large_flash"],billboard:"center",text:{"text":"\ueef2"},background:0,view_range:16,brightness:{sky:15,block:15},alignment:center}

title @a[distance=..40] times 0 1 3
title @a[distance=..40] title "\ueff4"

effect give @a[distance=..35] minecraft:blindness 1 0 true

scoreboard players set @a[distance=..80] terf_shake_magnitude 5
scoreboard players set @a[distance=..80] terf_shake_frequency 300
scoreboard players add @a[distance=..80] terf_data_P 60

playsound terf:explosion.shieldboom master @a[distance=0..] ~ ~ ~ 24 1

execute as @a[distance=..20,tag=!terf_wearing_hazmat_suit] run damage @s 5 minecraft:explosion