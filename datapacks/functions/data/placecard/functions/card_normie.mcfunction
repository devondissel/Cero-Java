scoreboard players set @e[tag=dummy] compatible 0


###color compatibility
scoreboard objectives remove color
scoreboard objectives add color dummy

execute as @s[tag=red] run scoreboard players set @s color 1
execute as @s[tag=yellow] run scoreboard players set @s color 2
execute as @s[tag=green] run scoreboard players set @s color 3
execute as @s[tag=blue] run scoreboard players set @s color 4

execute as @e[tag=table,scores={age=1},tag=red] run scoreboard players set @s color 1
execute as @e[tag=table,scores={age=1},tag=yellow] run scoreboard players set @s color 2
execute as @e[tag=table,scores={age=1},tag=green] run scoreboard players set @s color 3
execute as @e[tag=table,scores={age=1},tag=blue] run scoreboard players set @s color 4

execute if score @s color = @e[tag=table,scores={age=1},limit=1] color run scoreboard players set @e[tag=dummy] compatible 1




###number compatibility
scoreboard objectives remove number
scoreboard objectives add number dummy


execute as @s[tag=0] run scoreboard players set @s number 0
execute as @s[tag=1] run scoreboard players set @s number 1
execute as @s[tag=2] run scoreboard players set @s number 2
execute as @s[tag=3] run scoreboard players set @s number 3
execute as @s[tag=4] run scoreboard players set @s number 4
execute as @s[tag=5] run scoreboard players set @s number 5
execute as @s[tag=6] run scoreboard players set @s number 6
execute as @s[tag=7] run scoreboard players set @s number 7
execute as @s[tag=8] run scoreboard players set @s number 8
execute as @s[tag=9] run scoreboard players set @s number 9


execute as @e[tag=table,scores={age=1},tag=0] run scoreboard players set @s number 0
execute as @e[tag=table,scores={age=1},tag=1] run scoreboard players set @s number 1
execute as @e[tag=table,scores={age=1},tag=2] run scoreboard players set @s number 2
execute as @e[tag=table,scores={age=1},tag=3] run scoreboard players set @s number 3
execute as @e[tag=table,scores={age=1},tag=4] run scoreboard players set @s number 4
execute as @e[tag=table,scores={age=1},tag=5] run scoreboard players set @s number 5
execute as @e[tag=table,scores={age=1},tag=6] run scoreboard players set @s number 6
execute as @e[tag=table,scores={age=1},tag=7] run scoreboard players set @s number 7
execute as @e[tag=table,scores={age=1},tag=8] run scoreboard players set @s number 8
execute as @e[tag=table,scores={age=1},tag=9] run scoreboard players set @s number 9

execute if score @s number = @e[tag=table,scores={age=1},limit=1] number run scoreboard players set @e[tag=dummy] compatible 1


###do that thing when drawing card where you remove the tag selecting from the player and add tag=turn
execute as @e[tag=selecting] if score @e[tag=dummy,limit=1] compatible matches 1 run tag @a[tag=selecting] add turn
execute as @e[tag=selecting] if score @e[tag=dummy,limit=1] compatible matches 1 run tag @a[tag=selecting] remove selecting
execute if score @e[tag=dummy,limit=1] compatible matches 1 run kill @e[tag=select_draw1]
execute if score @e[tag=dummy,limit=1] compatible matches 1 run kill @e[tag=select_draw2]


###announce succes
execute if score @e[tag=dummy,limit=1] compatible matches 0 run title @a[tag=turn] actionbar ["",{"text":"You can't play this card","color":"dark_red"}]
execute if score @e[tag=dummy,limit=1] compatible matches 0 run title @a[tag=selecting] actionbar ["",{"text":"You can't play this card","color":"dark_red"}]
execute as @s if score @e[tag=dummy,limit=1] compatible matches 1 run function placecard:announce_normie
execute as @s if score @e[tag=dummy,limit=1] compatible matches 1 run function placecard:succesful








###next turn
execute if score @e[tag=dummy,limit=1] compatible matches 1 if score @e[tag=dummy,limit=1] clockwise matches 1 run function game:nextturn
execute if score @e[tag=dummy,limit=1] compatible matches 1 if score @e[tag=dummy,limit=1] clockwise matches 2 run function game:nextturnccw