tag @e[team=green] add table
scoreboard players add @e[tag=table] age 1
tp @e[tag=table,scores={age=1}] 37.75 25.275 -39.85 90 90
execute as @e[scores={age=2}] at @s run tp @s ~ ~-0.025 ~
execute as @e[scores={age=3}] at @s run tp @s ~ ~-0.025 ~
replaceitem entity @e[scores={age=3},limit=1] armor.head minecraft:air



schedule function general:update_cardcount 2t


tag @e[tag=drawcard] remove drawcard


schedule clear general:desync1
schedule function general:desync1 10t