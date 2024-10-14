execute as @s[tag=normiecard] run function placecard:card_normie
execute as @s[tag=reverse] run function placecard:card_reverse
execute as @s[tag=skip] run function placecard:card_skip
execute as @s[tag=wild] if score @e[tag=dummy,limit=1] lobbysign1 matches 2 run function placecard:card_wild



execute as @s[tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign1 matches 2 if entity @a[tag=turn,tag=player1] run function placecard:card_wild4_p1
execute as @s[tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign1 matches 2 if entity @a[tag=turn,tag=player2] run function placecard:card_wild4_p2
execute as @s[tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign1 matches 2 if entity @a[tag=turn,tag=player3] run function placecard:card_wild4_p3
execute as @s[tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign1 matches 2 if entity @a[tag=turn,tag=player4] run function placecard:card_wild4_p4

execute as @s[tag=wild+4] if entity @a[tag=selecting,tag=player1] run function placecard:card_wild5_p1
execute as @s[tag=wild+4] if entity @a[tag=selecting,tag=player2] run function placecard:card_wild5_p2
execute as @s[tag=wild+4] if entity @a[tag=selecting,tag=player3] run function placecard:card_wild5_p3
execute as @s[tag=wild+4] if entity @a[tag=selecting,tag=player4] run function placecard:card_wild5_p4
execute as @s[tag=wild] if entity @a[tag=selecting] run function placecard:card_wild



#### cant finish with a black card is ENABLED

function general:update_cardcount



#if cardcount is 1
execute as @s[tag=wild] if score @e[tag=dummy,limit=1] lobbysign1 matches 1 run title @a[tag=turn,scores={cardcount=1}] actionbar ["",{"text":"No puedes usar esta carta","color":"dark_red"}]
execute as @s[tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign1 matches 1 if entity @a[tag=turn,tag=player1,scores={cardcount=1}] run title @a[tag=turn] actionbar ["",{"text":"No puedes usar esta carta","color":"dark_red"}]
execute as @s[tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign1 matches 1 if entity @a[tag=turn,tag=player2,scores={cardcount=1}] run title @a[tag=turn] actionbar ["",{"text":"No puedes usar esta carta","color":"dark_red"}]
execute as @s[tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign1 matches 1 if entity @a[tag=turn,tag=player3,scores={cardcount=1}] run title @a[tag=turn] actionbar ["",{"text":"No puedes usar esta carta","color":"dark_red"}]
execute as @s[tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign1 matches 1 if entity @a[tag=turn,tag=player4,scores={cardcount=1}] run title @a[tag=turn] actionbar ["",{"text":"No puedes usar esta carta","color":"dark_red"}]



#if cardcount is more than 2..

execute as @s[tag=wild] if score @e[tag=dummy,limit=1] lobbysign1 matches 1 if entity @a[tag=turn,scores={cardcount=2..}] run function placecard:card_wild
execute as @s[tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign1 matches 1 if entity @a[tag=turn,tag=player1,scores={cardcount=2..}] run function placecard:card_wild4_p1
execute as @s[tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign1 matches 1 if entity @a[tag=turn,tag=player2,scores={cardcount=2..}] run function placecard:card_wild4_p2
execute as @s[tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign1 matches 1 if entity @a[tag=turn,tag=player3,scores={cardcount=2..}] run function placecard:card_wild4_p3
execute as @s[tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign1 matches 1 if entity @a[tag=turn,tag=player4,scores={cardcount=2..}] run function placecard:card_wild4_p4

execute as @s[tag=wild] if score @e[tag=dummy,limit=1] lobbysign1 matches 1 if entity @a[tag=turn] run function placecard:card_wild






#### dit is als de drawkaarten NIET kunnen stacken
execute if score @e[tag=dummy,limit=1] lobbysign3 matches 2 as @s[tag=+2] run function placecard:card_draw


#### dit is als de drawkaarten WEL kunnen stacken
execute if score @e[tag=dummy,limit=1] lobbysign3 matches 1 as @s[tag=+2] run function placecard:card_draw_stack



clear @a minecraft:lime_concrete
replaceitem entity @e[tag=select_draw1] armor.head minecraft:lime_concrete 1