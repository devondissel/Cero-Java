execute if entity @s[tag=drawcard] run effect give @s minecraft:glowing 9999 1 true
team join green @s

tellraw @a[tag=selecting] ["",{"text":"Choose a color"}]
tag @a[tag=selecting] add choosingcolor
tag @a[tag=selecting] remove selecting

kill @e[tag=select_draw1]
kill @e[tag=select_draw2]
execute as @e[tag=drawcard] at @s run tp @s ^ ^1.3 ^0.1


###spawning color options
execute if entity @a[tag=player1,tag=choosingcolor] run summon minecraft:armor_stand 38.5 26.5 -42.0 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa1"],ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}],CustomName:'{"text":"Red","color":"red"}'}
execute if entity @a[tag=player1,tag=choosingcolor] run summon minecraft:armor_stand 38.5 26.5 -42.0 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa2"],ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}],CustomName:'{"text":"Yellow","color":"yellow"}'}
execute if entity @a[tag=player1,tag=choosingcolor] run summon minecraft:armor_stand 38.5 26.5 -42.0 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa3"],ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}],CustomName:'{"text":"Blue","color":"blue"}'}
execute if entity @a[tag=player1,tag=choosingcolor] run summon minecraft:armor_stand 38.5 26.5 -42.0 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa4"],ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],CustomName:'{"text":"Green","color":"green"}'}
execute if entity @a[tag=player2,tag=choosingcolor] run summon minecraft:armor_stand 38.5 26.5 -35.0 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa5"],ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}],CustomName:'{"text":"Red","color":"red"}'}
execute if entity @a[tag=player2,tag=choosingcolor] run summon minecraft:armor_stand 38.5 26.5 -35.0 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa6"],ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}],CustomName:'{"text":"Yellow","color":"yellow"}'}
execute if entity @a[tag=player2,tag=choosingcolor] run summon minecraft:armor_stand 38.5 26.5 -35.0 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa7"],ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}],CustomName:'{"text":"Blue","color":"blue"}'}
execute if entity @a[tag=player2,tag=choosingcolor] run summon minecraft:armor_stand 38.5 26.5 -35.0 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa8"],ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],CustomName:'{"text":"Green","color":"green"}'}
execute if entity @a[tag=player3,tag=choosingcolor] run summon minecraft:armor_stand 42.0 26.5 -38.5 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa9"],ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}],CustomName:'{"text":"Red","color":"red"}'}
execute if entity @a[tag=player3,tag=choosingcolor] run summon minecraft:armor_stand 42.0 26.5 -38.5 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa10"],ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}],CustomName:'{"text":"Yellow","color":"yellow"}'}
execute if entity @a[tag=player3,tag=choosingcolor] run summon minecraft:armor_stand 42.0 26.5 -38.5 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa11"],ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}],CustomName:'{"text":"Blue","color":"blue"}'}
execute if entity @a[tag=player3,tag=choosingcolor] run summon minecraft:armor_stand 42.0 26.5 -38.5 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa12"],ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],CustomName:'{"text":"Green","color":"green"}'}
execute if entity @a[tag=player4,tag=choosingcolor] run summon minecraft:armor_stand 35.0 26.5 -38.5 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa13"],ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}],CustomName:'{"text":"Red","color":"red"}'}
execute if entity @a[tag=player4,tag=choosingcolor] run summon minecraft:armor_stand 35.0 26.5 -38.5 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa14"],ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}],CustomName:'{"text":"Yellow","color":"yellow"}'}
execute if entity @a[tag=player4,tag=choosingcolor] run summon minecraft:armor_stand 35.0 26.5 -38.5 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa15"],ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}],CustomName:'{"text":"Blue","color":"blue"}'}
execute if entity @a[tag=player4,tag=choosingcolor] run summon minecraft:armor_stand 35.0 26.5 -38.5 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["colorselect","aa16"],ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],CustomName:'{"text":"Green","color":"green"}'}

tp @e[tag=aa1] 40.0 26.5 -42.0
tp @e[tag=aa2] 39.0 26.5 -42.0
tp @e[tag=aa3] 38.0 26.5 -42.0
tp @e[tag=aa4] 37.0 26.5 -42.0
tp @e[tag=aa5] 37.0 26.5 -35.0
tp @e[tag=aa6] 38.0 26.5 -35.0
tp @e[tag=aa7] 39.0 26.5 -35.0
tp @e[tag=aa8] 40.0 26.5 -35.0
tp @e[tag=aa9] 42.0 26.5 -37.0
tp @e[tag=aa10] 42.0 26.5 -38.0 
tp @e[tag=aa11] 42.0 26.5 -39.0 
tp @e[tag=aa12] 42.0 26.5 -40.0 
tp @e[tag=aa13] 35.0 26.5 -40.0 
tp @e[tag=aa14] 35.0 26.5 -39.0 
tp @e[tag=aa15] 35.0 26.5 -38.0 
tp @e[tag=aa16] 35.0 26.5 -37.0 