#######The basics as usual
scoreboard players add @e[tag=dummy] hastodraw2 2
execute as @s if score @e[tag=dummy,limit=1] compatible matches 1 run tellraw @a ["",{"selector":"@a[tag=turn,limit=1]","color":"aqua"},{"text":" colocó una carta de robar. El siguiente jugador tiene que robar ","color":"aqua"},{"score":{"name":"@e[tag=dummy]","objective":"hastodraw2"},"color":"aqua"},{"text":" cartas o tirar otra carta de robar.","color":"aqua"}]



##########then comes the part where we switch turns
execute if score @e[tag=dummy,limit=1] compatible matches 1 if score @e[tag=dummy,limit=1] clockwise matches 1 run function game:nextturn
execute if score @e[tag=dummy,limit=1] compatible matches 1 if score @e[tag=dummy,limit=1] clockwise matches 2 run function game:nextturnccw



######replace the turn tag with the special tag "stacking"


tag @a[tag=turn] add stacking
tag @a[tag=turn] remove turn



###########now we summon that weird armorstand
kill @e[tag=armorstand4draw]

execute if entity @e[tag=stacking,tag=player1] run summon minecraft:armor_stand 38.5 24.5 -42.0 {CustomNameVisible:1b,NoGravity:1b,Invisible:1b,Tags:["armorstand4draw"],ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}],CustomName:'{"text":"Robar","color":"white","bold":true}'}
execute if entity @e[tag=stacking,tag=player2] run summon minecraft:armor_stand 38.5 24.5 -35.0 {CustomNameVisible:1b,NoGravity:1b,Invisible:1b,Tags:["armorstand4draw"],ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}],CustomName:'{"text":"Robar","color":"white","bold":true}'}
execute if entity @e[tag=stacking,tag=player3] run summon minecraft:armor_stand 42.0 24.5 -38.5 {CustomNameVisible:1b,NoGravity:1b,Invisible:1b,Tags:["armorstand4draw"],ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}],CustomName:'{"text":"Robar","color":"white","bold":true}'}
execute if entity @e[tag=stacking,tag=player4] run summon minecraft:armor_stand 35.0 24.5 -38.5 {CustomNameVisible:1b,NoGravity:1b,Invisible:1b,Tags:["armorstand4draw"],ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}],CustomName:'{"text":"Robar","color":"white","bold":true}'}
execute as @e[tag=armorstand4draw] at @s run tp @s ~ ~2 ~