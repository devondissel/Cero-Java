execute as @e[tag=cursor] at @s if block ~ ~ ~ spruce_planks run tp @s ^ ^ ^0.5
execute as @e[tag=cursor] at @s if block ~ ~ ~ spruce_stairs run tp @s ^ ^ ^0.5
execute as @e[tag=cursor] at @s if block ~ ~ ~ spruce_slab run tp @s ^ ^ ^0.5
execute as @e[tag=cursor] at @s if block ~ ~ ~ air run tp @s ^ ^ ^0.5


scoreboard players remove @e[tag=dummy] loop 1
execute if score @e[tag=dummy,limit=1] loop matches 1.. run function tracing:loop