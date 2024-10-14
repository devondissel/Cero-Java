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

scoreboard players set @e[tag=deck3,tag=red] color 0
scoreboard players set @e[tag=deck3,tag=blue] color 1
scoreboard players set @e[tag=deck3,tag=yellow] color 2
scoreboard players set @e[tag=deck3,tag=green] color 3

execute as @e[tag=deck3] if score @s color = @e[tag=table,scores={age=1},limit=1] color run scoreboard players set @e[tag=dummy] compatible 0

execute if score @e[tag=dummy,limit=1] compatible matches 0 run title @a[tag=selecting] actionbar ["",{"text":"No puedes usar esta carta","color":"dark_red"}]
execute if score @e[tag=dummy,limit=1] compatible matches 0 run summon minecraft:armor_stand 42.25 26.5 -38 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["select_draw1"],ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],CustomName:'{"text":"Jugar","color":"green"}'}
execute if score @e[tag=dummy,limit=1] compatible matches 0 run summon minecraft:armor_stand 42.25 26.5 -40 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["select_draw2"],ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}],CustomName:'{"text":"Guardar","color":"yellow"}'}
execute if score @e[tag=dummy,limit=1] compatible matches 1 run function placecard:card_wild5