#######the new things

kill @e[tag=armorstand4draw]
tag @a[tag=stacking] add turn
tag @a[tag=stacking] remove stacking


####################


###do that thing when drawing card where you remove the tag selecting from the player and add tag=turn
execute as @e[tag=selecting] if score @e[tag=dummy,limit=1] compatible matches 1 run tag @a[tag=selecting] add turn
execute as @e[tag=selecting] if score @e[tag=dummy,limit=1] compatible matches 1 run tag @a[tag=selecting] remove selecting
execute if score @e[tag=dummy,limit=1] compatible matches 1 run kill @e[tag=select_draw1]
execute if score @e[tag=dummy,limit=1] compatible matches 1 run kill @e[tag=select_draw2]




execute if score @e[tag=dummy,limit=1] compatible matches 1 run function placecard:stack_2

###announce succes
execute if score @e[tag=dummy,limit=1] compatible matches 0 run title @a[tag=turn] actionbar ["",{"text":"You can't play this card","color":"dark_red"}]
execute if score @e[tag=dummy,limit=1] compatible matches 0 run title @a[tag=selecting] actionbar ["",{"text":"You can't play this card","color":"dark_red"}]
execute as @s if score @e[tag=dummy,limit=1] compatible matches 1 run function placecard:succesful
execute as @s if score @e[tag=dummy,limit=1] compatible matches 1 run tag @e[tag=drawcard] remove drawcard

