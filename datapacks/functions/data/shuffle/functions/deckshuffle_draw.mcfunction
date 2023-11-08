execute if score @e[tag=dummy,limit=1] deckshuffle matches 5 run execute as @e[scores={age=1}] at @s run tp @s ~ ~1 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run tag @e[scores={age=2..}] remove table
execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run tag @e[scores={age=2..}] add reserve
execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run tp @e[scores={age=2..}] 39.25 24.85 -39.85 90 0
execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run tag @e[tag=reserve] remove drawcard
execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run tag @e[tag=reserve,tag=wild] remove red
execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run tag @e[tag=reserve,tag=wild] remove blue
execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run tag @e[tag=reserve,tag=wild] remove green
execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run tag @e[tag=reserve,tag=wild] remove yellow
execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run tag @e[tag=reserve,tag=wild+4] remove red
execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run tag @e[tag=reserve,tag=wild+4] remove blue
execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run tag @e[tag=reserve,tag=wild+4] remove green
execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run tag @e[tag=reserve,tag=wild+4] remove yellow

execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run execute as @e[scores={age=2..},tag=wild] run replaceitem entity @s armor.head minecraft:red_banner{BlockEntityTag:{Base:1,Patterns:[{Pattern:tr,Color:5},{Pattern:br,Color:3},{Pattern:bl,Color:4},{Pattern:flo,Color:15}]}}
execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run execute as @e[scores={age=2..},tag=wild+4] run replaceitem entity @s armor.head minecraft:red_banner{BlockEntityTag:{Base:1,Patterns:[{Pattern:tr,Color:5},{Pattern:br,Color:3},{Pattern:bl,Color:4},{Pattern:ss,Color:0},{Pattern:mr,Color:15}]}}

execute if score @e[tag=dummy,limit=1] deckshuffle matches 20 run scoreboard players reset @e[tag=reserve] age
execute if score @e[tag=dummy,limit=1] deckshuffle matches 35 run execute as @e[scores={age=1}] at @s run tp @s ~ ~-1 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 40 run execute as @e[tag=tower1] at @s run tp @s ~ ~ ~ 75 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 40 run execute as @e[tag=tower2] at @s run tp @s ~ ~ ~ 105 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 45 run execute as @e[tag=tower1] at @s run tp @s ~ ~ ~ 105 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 45 run execute as @e[tag=tower2] at @s run tp @s ~ ~ ~ 75 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 50 run execute as @e[tag=tower1] at @s run tp @s ~ ~ ~ 75 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 50 run execute as @e[tag=tower2] at @s run tp @s ~ ~ ~ 105 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 55 run execute as @e[tag=tower1] at @s run tp @s ~ ~ ~ 105 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 55 run execute as @e[tag=tower2] at @s run tp @s ~ ~ ~ 75 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 60 run execute as @e[tag=tower1] at @s run tp @s ~ ~ ~ 75 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 60 run execute as @e[tag=tower2] at @s run tp @s ~ ~ ~ 105 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 65 run execute as @e[tag=tower1] at @s run tp @s ~ ~ ~ 105 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 65 run execute as @e[tag=tower2] at @s run tp @s ~ ~ ~ 75 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 70 run execute as @e[tag=tower1] at @s run tp @s ~ ~ ~ 75 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 70 run execute as @e[tag=tower2] at @s run tp @s ~ ~ ~ 105 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 75 run execute as @e[tag=tower1] at @s run tp @s ~ ~ ~ 105 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 75 run execute as @e[tag=tower2] at @s run tp @s ~ ~ ~ 75 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 80 run execute as @e[tag=tower1] at @s run tp @s ~ ~ ~ 90 ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 80 run execute as @e[tag=tower2] at @s run tp @s ~ ~ ~ 90 ~


execute if score @e[tag=dummy,limit=1] deckshuffle matches 40 run execute as @e[tag=tower3] at @s run tp @s 39.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 40 run execute as @e[tag=tower4] at @s run tp @s 38.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 45 run execute as @e[tag=tower3] at @s run tp @s 38.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 45 run execute as @e[tag=tower4] at @s run tp @s 39.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 50 run execute as @e[tag=tower3] at @s run tp @s 39.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 50 run execute as @e[tag=tower4] at @s run tp @s 38.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 55 run execute as @e[tag=tower3] at @s run tp @s 38.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 55 run execute as @e[tag=tower4] at @s run tp @s 39.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 60 run execute as @e[tag=tower3] at @s run tp @s 39.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 60 run execute as @e[tag=tower4] at @s run tp @s 38.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 65 run execute as @e[tag=tower3] at @s run tp @s 38.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 65 run execute as @e[tag=tower4] at @s run tp @s 39.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 70 run execute as @e[tag=tower3] at @s run tp @s 39.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 70 run execute as @e[tag=tower4] at @s run tp @s 38.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 75 run execute as @e[tag=tower3] at @s run tp @s 38.75 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 75 run execute as @e[tag=tower4] at @s run tp @s 39.75 ~ ~ ~ ~

execute if score @e[tag=dummy,limit=1] deckshuffle matches 80 run execute as @e[tag=tower3] at @s run tp @s 39.25 ~ ~ ~ ~
execute if score @e[tag=dummy,limit=1] deckshuffle matches 80 run execute as @e[tag=tower4] at @s run tp @s 39.25 ~ ~ ~ ~


execute if score @e[tag=dummy,limit=1] deckshuffle matches 40..80 run particle minecraft:end_rod 39.25 26.90 -38.5 0 0 0 0.1 1 force




#continue drawing cards
execute if score @e[tag=dummy,limit=1] deckshuffle matches 80 run schedule function shuffle:draw 15t