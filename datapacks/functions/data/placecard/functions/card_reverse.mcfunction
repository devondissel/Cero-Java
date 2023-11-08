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
execute if entity @e[tag=table,scores={age=1},tag=reverse,limit=1] run scoreboard players set @e[tag=dummy] compatible 1



###do that thing when drawing card where you remove the tag selecting from the player and add tag=turn
execute as @e[tag=selecting] if score @e[tag=dummy,limit=1] compatible matches 1 run tag @a[tag=selecting] add turn
execute as @e[tag=selecting] if score @e[tag=dummy,limit=1] compatible matches 1 run tag @a[tag=selecting] remove selecting
execute if score @e[tag=dummy,limit=1] compatible matches 1 run kill @e[tag=select_draw1]
execute if score @e[tag=dummy,limit=1] compatible matches 1 run kill @e[tag=select_draw2]



###announce succes
execute if score @e[tag=dummy,limit=1] compatible matches 0 run title @a[tag=turn] actionbar ["",{"text":"You can't play this card","color":"dark_red"}]
execute if score @e[tag=dummy,limit=1] compatible matches 0 run title @a[tag=selecting] actionbar ["",{"text":"You can't play this card","color":"dark_red"}]
execute as @s if score @e[tag=dummy,limit=1] compatible matches 1 run function placecard:succesful
execute as @s if score @e[tag=dummy,limit=1] compatible matches 1 run tag @e[tag=drawcard] remove drawcard
execute as @s if score @e[tag=dummy,limit=1] compatible matches 1 unless score @e[tag=dummy,limit=1] playercount matches 2 run tellraw @a ["",{"selector":"@a[tag=turn,limit=1]","color":"aqua"},{"text":" placed down a reverse card. The order of play has been reversed.","color":"aqua"}]
execute as @s if score @e[tag=dummy,limit=1] compatible matches 1 if score @e[tag=dummy,limit=1] playercount matches 2 run tellraw @a ["",{"selector":"@a[tag=turn,limit=1]","color":"aqua"},{"text":" placed down a reverse card.","color":"aqua"}]







###do the thingy where it goes the other way counterclockwise
execute as @e[tag=selected] if score @e[tag=dummy,limit=1] compatible matches 1 run scoreboard players add @e[tag=dummy] clockwise 1
execute as @e[tag=selected] if score @e[tag=dummy,limit=1] compatible matches 1 run scoreboard players set @e[tag=dummy,scores={clockwise=3}] clockwise 1




###next turn
execute if score @e[tag=dummy,limit=1] compatible matches 1 if score @e[tag=dummy,limit=1] clockwise matches 1 run function game:nextturn
execute if score @e[tag=dummy,limit=1] compatible matches 1 if score @e[tag=dummy,limit=1] clockwise matches 2 run function game:nextturnccw