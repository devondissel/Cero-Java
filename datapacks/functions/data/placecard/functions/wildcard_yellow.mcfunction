clear @a[tag=choosingcolor]
tag @a[tag=choosingcolor] add turn
tag @a[tag=turn] remove choosingcolor

execute if entity @e[team=green,tag=wild] run tellraw @a ["",{"selector":"@a[tag=turn,limit=1]","color":"aqua"},{"text":" placed down a wild card and changed the color to yellow.","color":"aqua"}]
execute if entity @e[team=green,tag=wild+4] run tellraw @a ["",{"selector":"@a[tag=turn,limit=1]","color":"aqua"},{"text":" placed down a wild card and changed the color to yellow. The next player in sequence has to draw 4 cards and misses a turn.","color":"aqua"}]


execute as @e[team=green,tag=wild] run function placecard:succesfulwild
execute as @e[team=green,tag=wild+4] run function placecard:succesfulwild4
tag @e[team=green] add yellow
function general:update_cards

execute as @e[team=green,tag=wild] if score @e[tag=dummy,limit=1] clockwise matches 1 run function game:nextturn
execute as @e[team=green,tag=wild] if score @e[tag=dummy,limit=1] clockwise matches 2 run function game:nextturnccw
team leave @e[team=green]
kill @e[tag=colorselect]