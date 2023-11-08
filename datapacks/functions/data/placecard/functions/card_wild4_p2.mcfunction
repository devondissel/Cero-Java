#teleport card to center

scoreboard objectives remove color
scoreboard objectives add color dummy

kill @e[tag=select_draw1]
kill @e[tag=select_draw2]

scoreboard players set @e[tag=dummy] compatible 1

scoreboard players set @e[tag=table,scores={age=1},tag=red] color 0
scoreboard players set @e[tag=table,scores={age=1},tag=blue] color 1
scoreboard players set @e[tag=table,scores={age=1},tag=yellow] color 2
scoreboard players set @e[tag=table,scores={age=1},tag=green] color 3

scoreboard players set @e[tag=deck2,tag=red] color 0
scoreboard players set @e[tag=deck2,tag=blue] color 1
scoreboard players set @e[tag=deck2,tag=yellow] color 2
scoreboard players set @e[tag=deck2,tag=green] color 3

execute as @e[tag=deck2] if score @s color = @e[tag=table,scores={age=1},limit=1] color run scoreboard players set @e[tag=dummy] compatible 0

execute if score @e[tag=dummy,limit=1] compatible matches 0 run title @a[tag=turn] actionbar ["",{"text":"You can't play this card","color":"dark_red"}]
execute if score @e[tag=dummy,limit=1] compatible matches 1 run function placecard:card_wild4