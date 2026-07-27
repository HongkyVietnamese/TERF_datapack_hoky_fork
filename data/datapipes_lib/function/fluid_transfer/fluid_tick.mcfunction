execute as @e[type=marker,tag=datapipes_lib_fluid_generator] at @s run function datapipes_lib:fluid_transfer/push/as_generators
execute as @e[type=marker,tag=datapipes_lib_fluid_generator] run data remove entity @s data.fluids[{connected:1b}].connected
