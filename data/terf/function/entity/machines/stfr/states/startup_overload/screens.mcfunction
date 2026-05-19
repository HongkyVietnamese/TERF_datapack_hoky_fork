scoreboard players operation time terf_states = @s terf_data_E
scoreboard players remove time terf_states 5745
scoreboard players operation time terf_states /= -1 terf_states
execute if score time terf_states matches ..-1 run scoreboard players set time terf_states 0

#tick to M:SS:TT
scoreboard players operation T2 terf_states = time terf_states
scoreboard players operation T2 terf_states %= 20 terf_states
scoreboard players set T1 terf_states 0
execute if score T2 terf_states matches 10.. run scoreboard players reset T1 terf_states

scoreboard players operation S2 terf_states = time terf_states
scoreboard players operation S2 terf_states /= 20 terf_states
scoreboard players operation S2 terf_states %= 60 terf_states
scoreboard players set S1 terf_states 0
execute if score S2 terf_states matches 10.. run scoreboard players reset S1 terf_states

scoreboard players operation M terf_states = time terf_states
scoreboard players operation M terf_states /= 1200 terf_states

#countdowns
data modify storage terf:temp displays.structure[].color set value red

data modify storage terf:temp displays.group_main[0] set value {has_glowing_text:1b,color:yellow,messages:[{"text":"Required Actions:"},{"text":"! DO NOT !","color":"gold"},{"text":"DISCONNECT THE","color":"gold"},{"text":"COOLING SYSTEM!","color":"gold"}]}
data modify storage terf:temp displays.group_main[1] set value {has_glowing_text:1b,color:orange,messages:[{"text":"Connect Up At","color":"gold"},{"text":"Least 4 Of The","color":"gold"},{"text":"Stabilizers To","color":"gold"},{"text":"The Power Grid","color":"gold"}]}
data modify storage terf:temp displays.group_core[0] set value {has_glowing_text:1b,color:orange,messages:[{"text":"And Give Them","color":"gold"},{"text":"100 MW Each!","color":"gold"},{"text":"The Core Systems","color":"gold"},{"text":"Will Try To","color":"gold"}]}
data modify storage terf:temp displays.group_core[1] set value {has_glowing_text:1b,color:orange,messages:[{"text":"Re-Project","color":"gold"},{"text":"The Shield And","color":"gold"},{"text":"Get The Reactor","color":"gold"},{"text":"To A Stable State.","color":"gold"}]}
data modify storage terf:temp displays.group_core[2] set value {has_glowing_text:1b,color:orange,messages:[{"text":"You Have Until","color":"gold"},{"text":"The Emergency","color":"gold"},{"text":"Capacitor Runs","color":"gold"},{"text":"Out","color":"gold"}]}

data modify storage terf:temp displays.group_main[].color set value red

data modify storage terf:temp temp set value {has_glowing_text:1b,color:red,messages:[{"text":"⚠⚠⚠⚠⚠⚠⚠⚠⚠"},{"text":"SHIELD CREATION","color":"red"},{"text":"FAILURE!","color":"red"},{"text":"⚠⚠⚠⚠⚠⚠⚠⚠⚠"}]}
data modify storage terf:temp displays.group_main[2] set from storage terf:temp temp 
data modify storage terf:temp displays.group_main[3] set from storage terf:temp temp 
data modify storage terf:temp displays.group_main[4] set from storage terf:temp temp 

data modify storage terf:temp temp set value {has_glowing_text:1b,color:red,messages:[{"text":"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!","color":"red"},{"text":"SHIELD CREATION","color":"red"},{"text":"FAILURE!","color":"red"},{"text":"⚠⚠⚠⚠⚠⚠⚠⚠⚠"}]}
data modify storage terf:temp displays.group_main[5] set from storage terf:temp temp 
data modify storage terf:temp displays.group_main[6] set from storage terf:temp temp 
data modify storage terf:temp displays.group_main[7] set from storage terf:temp temp 
data modify storage terf:temp displays.group_main[8] set from storage terf:temp temp 
data modify storage terf:temp displays.group_main[9] set from storage terf:temp temp 

data modify storage terf:temp temp set value {has_glowing_text:1b,color:red,messages:[{"text":"⚠⚠⚠⚠⚠⚠⚠⚠⚠"},{"text":"CORE DETONATION","color":"red"},[{"text":"IN T-","color":"red"},{"score":{"objective":"terf_states","name":"M"},"color":"red"},{"text":":"},{"score":{"objective":"terf_states","name":"S1"},"color":"red"},{"score":{"objective":"terf_states","name":"S2"},"color":"red"},{"text":":","color":"red"},{"score":{"objective":"terf_states","name":"T1"},"color":"red"},{"score":{"objective":"terf_states","name":"T2"},"color":"red"}],{"text":"⚠⚠⚠⚠⚠⚠⚠⚠⚠"}]}
data modify storage terf:temp displays.group_main[10] set from storage terf:temp temp 
data modify storage terf:temp displays.group_main[11] set from storage terf:temp temp 
data modify storage terf:temp displays.group_main[12] set from storage terf:temp temp 
data modify storage terf:temp displays.group_main[15] set from storage terf:temp temp 
data modify storage terf:temp displays.group_main[16] set from storage terf:temp temp 
data modify storage terf:temp displays.group_main[17] set from storage terf:temp temp 
