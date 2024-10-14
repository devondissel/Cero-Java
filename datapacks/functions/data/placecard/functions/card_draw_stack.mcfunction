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
execute if entity @e[tag=table,scores={age=1},tag=+2,limit=1] run scoreboard players set @e[tag=dummy] compatible 1



###do that thing when drawing card where you remove the tag selecting from the player and add tag=turn
execute as @e[tag=selecting] if score @e[tag=dummy,limit=1] compatible matches 1 run tag @a[tag=selecting] add turn
execute as @e[tag=selecting] if score @e[tag=dummy,limit=1] compatible matches 1 run tag @a[tag=selecting] remove selecting
execute if score @e[tag=dummy,limit=1] compatible matches 1 run kill @e[tag=select_draw1]
execute if score @e[tag=dummy,limit=1] compatible matches 1 run kill @e[tag=select_draw2]




execute if score @e[tag=dummy,limit=1] compatible matches 1 run function placecard:stack_2

###announce succes
execute if score @e[tag=dummy,limit=1] compatible matches 0 run title @a[tag=turn] actionbar ["",{"text":"No puedes usar esta carta","color":"dark_red"}]
execute if score @e[tag=dummy,limit=1] compatible matches 0 run title @a[tag=selecting] actionbar ["",{"text":"No puedes usar esta carta","color":"dark_red"}]
execute as @s if score @e[tag=dummy,limit=1] compatible matches 1 run function placecard:succesful
execute as @s if score @e[tag=dummy,limit=1] compatible matches 1 run tag @e[tag=drawcard] remove drawcard

