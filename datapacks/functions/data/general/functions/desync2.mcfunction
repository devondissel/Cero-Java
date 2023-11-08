scoreboard players add @e[tag=dummy] desync 1
scoreboard players set @e[tag=dummy,scores={desync=3..}] desync 1
execute as @s[tag=card] at @s if score @e[tag=dummy,limit=1] desync matches 1 run tp @s ~ ~ ~ ~ ~-10
execute as @s[tag=card] at @s if score @e[tag=dummy,limit=1] desync matches 2 run tp @s ~ ~ ~ ~ ~10