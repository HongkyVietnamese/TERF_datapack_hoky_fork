#iterate through tanks, if they are output tanks then set their value to 0 and add them to the total fluid amount
execute store result score tank_amount datapipes_lib run data get storage datapipes_lib:temp array[-1].amount
#will automatically fail if it dosent have the macro args
execute unless data storage datapipes_lib:temp array[-1].connected if score tank_amount datapipes_lib matches 1.. run function datapipes_lib:fluid_transfer/push/run_generator_tanks with storage datapipes_lib:temp array[-1]

data remove storage datapipes_lib:temp array[-1]
execute if data storage datapipes_lib:temp array[0] run function datapipes_lib:fluid_transfer/push/as_generator_tanks
