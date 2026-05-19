tag @s add terf_overload_beam
execute store result entity @s Rotation[0] float 0.001 run random value 1..360000
execute store result entity @s Rotation[1] float 0.001 run random value -90000..90000
execute at @s run tp @s ^ ^ ^4