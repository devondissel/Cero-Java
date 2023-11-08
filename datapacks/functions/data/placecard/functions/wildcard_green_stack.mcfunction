clear @a[tag=choosingcolor]
tag @a[tag=choosingcolor] add turn
tag @a[tag=turn] remove choosingcolor

execute as @e[team=green,tag=wild+4] run function placecard:succesfulwild4_stack

tag @e[team=green] add green
function general:update_cards

team leave @e[team=green]
kill @e[tag=colorselect]




#######The basics as usual
scoreboard players add @e[tag=dummy] hastodraw2 4






tellraw @a ["",{"selector":"@a[tag=turn,limit=1]","color":"aqua"},{"text":" placed down a wild +4 card and changed the color to green. The next player in sequence has to draw ","color":"aqua"},{"score":{"name":"@e[tag=dummy]","objective":"hastodraw2"},"color":"aqua"},{"text":" cards or choose to stack another draw card on top.","color":"aqua"}]


##########then comes the part where we switch turns
execute if score @e[tag=dummy,limit=1] clockwise matches 1 run function game:nextturn
execute if score @e[tag=dummy,limit=1] clockwise matches 2 run function game:nextturnccw

function general:oogabooga



######replace the turn tag with the special tag "stacking"
tag @a[tag=turn] add stacking
tag @a[tag=turn] remove turn



###########now we summon that weird armorstand
kill @e[tag=armorstand4draw]

execute if entity @e[tag=stacking,tag=player1] run summon minecraft:armor_stand 38.5 24.5 -42.0 {CustomNameVisible:1b,NoGravity:1b,Invisible:1b,Tags:["armorstand4draw"],ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}],CustomName:'{"text":"Draw","color":"white","bold":true}'}
execute if entity @e[tag=stacking,tag=player2] run summon minecraft:armor_stand 38.5 24.5 -35.0 {CustomNameVisible:1b,NoGravity:1b,Invisible:1b,Tags:["armorstand4draw"],ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}],CustomName:'{"text":"Draw","color":"white","bold":true}'}
execute if entity @e[tag=stacking,tag=player3] run summon minecraft:armor_stand 42.0 24.5 -38.5 {CustomNameVisible:1b,NoGravity:1b,Invisible:1b,Tags:["armorstand4draw"],ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}],CustomName:'{"text":"Draw","color":"white","bold":true}'}
execute if entity @e[tag=stacking,tag=player4] run summon minecraft:armor_stand 35.0 24.5 -38.5 {CustomNameVisible:1b,NoGravity:1b,Invisible:1b,Tags:["armorstand4draw"],ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}],CustomName:'{"text":"Draw","color":"white","bold":true}'}
execute as @e[tag=armorstand4draw] at @s run tp @s ~ ~2 ~

###announce succes
scoreboard players remove @e[scores={age=1..}] age 1
execute as @s run function placecard:succesful



kill @e[tag=select_draw1]
kill @e[tag=select_draw2]





