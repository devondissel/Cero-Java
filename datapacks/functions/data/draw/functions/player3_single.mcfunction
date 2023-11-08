tp @e[tag=reserve,limit=1,sort=random] 42.25 28 -36 -90 0

stopsound @a master minecraft:block.grass.step
execute as @a at @s if block ~ 7 ~ crafting_table run playsound minecraft:block.grass.step master @s ~ ~ ~ 1 2

###check for free spot
#first layer
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if block ~ ~-10 ~ white_stained_glass run tp @s ~1 ~1 ~7

#second layer
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if block ~ ~-10 ~ orange_stained_glass run tp @s ~1 ~1 ~8

#third layer
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if block ~ ~-10 ~ magenta_stained_glass run tp @s ~1 ~1 ~10


#fourth layer
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if block ~ ~-10 ~ light_blue_stained_glass run tp @s ~1 ~1 ~12


#fifth layer
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if block ~ ~-10 ~ yellow_stained_glass run tp @s ~1 ~1 ~14


#sixth layer
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1
execute as @e[tag=reserve] at @s if entity @e[tag=deck3,distance=..0.01] run tp @s ~ ~ ~-1










schedule function general:update_cards_draw 5t




execute as @e[tag=reserve] at @s if block ~ ~-10 ~ light_blue_terracotta run tag @s add deck3
tag @e[tag=deck3] remove reserve