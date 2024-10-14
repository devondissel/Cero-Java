kill @e[tag=card]


tag @a remove player1
tag @a remove player2
tag @a remove player3 
tag @a remove player4 
tag @a remove player5 
tag @a remove player6 
tag @a remove player7 
tag @a remove player8
tag @a remove turn
tag @a remove pool

tag @a add pool
tag @a[scores={spectator=1}] remove pool
scoreboard players set @e[tag=dummy] playercount 0
execute as @a[tag=pool] run scoreboard players add @e[tag=dummy] playercount 1
execute if score @e[tag=dummy,limit=1] playercount matches ..1 run title @s actionbar ["",{"text":"Necesitas al menos 2 jugadores para comenzar","color":"dark_red"}]
execute if score @e[tag=dummy,limit=1] playercount matches 5.. run title @s[tag=!spectator] actionbar ["",{"text":"Este juego solo admite un máximo de 4 jugadores","color":"dark_red"}]
execute if score @e[tag=dummy,limit=1] playercount matches 2..4 run function general:start2