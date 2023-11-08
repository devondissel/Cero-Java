scoreboard players remove @e[tag=dummy] turn 1
scoreboard players set @e[tag=dummy,scores={turn=0}] turn 4

execute if score @e[tag=dummy,limit=1] playercount matches 2 if score @e[tag=dummy,limit=1] turn matches 2 run scoreboard players remove @e[tag=dummy] turn 1
execute if score @e[tag=dummy,limit=1] playercount matches 2 if score @e[tag=dummy,limit=1] turn matches 4 run scoreboard players remove @e[tag=dummy] turn 1
execute if score @e[tag=dummy,limit=1] playercount matches 3 if score @e[tag=dummy,limit=1] turn matches 4 run scoreboard players remove @e[tag=dummy] turn 1

scoreboard players set @e[tag=dummy,scores={turn=0}] turn 4



tag @a remove turn
execute if score @e[tag=dummy,limit=1] turn matches 1 run tag @a[tag=player1] add turn
execute if score @e[tag=dummy,limit=1] turn matches 2 run tag @a[tag=player3] add turn
execute if score @e[tag=dummy,limit=1] turn matches 3 run tag @a[tag=player2] add turn
execute if score @e[tag=dummy,limit=1] turn matches 4 run tag @a[tag=player4] add turn


execute as @e[scores={age=2..4}] run function general:desync2