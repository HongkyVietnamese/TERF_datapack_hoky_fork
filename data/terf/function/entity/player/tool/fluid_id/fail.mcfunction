playsound terf:alarms.toolbeep player @a[distance=0..] ~ ~ ~ 1 0
playsound terf:alarms.toolbeep player @a[distance=0..] ~ ~ ~ 1 1
playsound terf:alarms.toolbeep player @a[distance=0..] ~ ~ ~ 1 2

function terf:entity/player/tool/fluid_id/particle {color:"1,0,0"}

execute if score error terf_states matches -1 run return run title @s actionbar {"text":"This tank is not empty!","color":"gold"}
execute if score error terf_states matches 2 run return run title @s actionbar {"text":"This tank is currently locked!","color":"yellow"}
execute if score error terf_states matches 3 run return run title @s actionbar {"text":"This tank can't accept this type!","color":"gold"}
title @s actionbar {"text":"This tank's type is not changable!","color":"red"}
