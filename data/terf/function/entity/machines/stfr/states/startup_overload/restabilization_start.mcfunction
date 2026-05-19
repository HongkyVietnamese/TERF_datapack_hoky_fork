scoreboard players set @s terf_data_U 3
scoreboard players set @s terf_data_E 0

tag @s add terf_stfr_surge_unabortable
scoreboard players set @s terf_data_E -1

function terf:entity/machines/stfr/broadcast {bcd:"return 1",voiceline:'stfr.startup_overload.restab_start',level:1,text:'{"text":"Fusion Reactor Startup Overload Restabilization Protocol Has Been Initiated!"}'}

stopsound @a[distance=..512] * terf:music.rudolve_critical_error
playsound terf:music.hacknet_music_end ui @a[distance=0..,tag=!terf_disable_music] ~ ~ ~ 8 1

tag @s remove terf_core_starting_alarm