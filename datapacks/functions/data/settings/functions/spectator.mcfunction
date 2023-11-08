scoreboard players add @s spectator 1
execute as @a[scores={spectator=2}] run title @s actionbar ["",{"text":"You will no longer spectate","color":"gray"}]

execute if score @e[tag=dummy,limit=1] ingame matches 2 if score @s spectator matches 1 run tag @s add spectating
execute if score @e[tag=dummy,limit=1] ingame matches 2 if score @s spectator matches 1 run scoreboard players add @s spectator 1

scoreboard players reset @s[scores={spectator=2..}] spectator

tag @a remove spectator
tag @a[scores={spectator=1}] add spectator

team leave @a
team join spectator @a[scores={spectator=1}]