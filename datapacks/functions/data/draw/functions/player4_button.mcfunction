tp @e[tag=reserve,limit=1,sort=random] 34.75 26.5 -39 90 0
schedule function announcebutton 2t



tag @a[tag=turn] add selecting
tag @a[tag=turn] remove turn



summon minecraft:armor_stand 34.75 26.5 -39 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["select_draw1"],ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],CustomName:'{"text":"Play","color":"green"}'}
summon minecraft:armor_stand 34.75 26.5 -39 {NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["select_draw2"],ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}],CustomName:'{"text":"Keep","color":"yellow"}'}

tp @e[tag=select_draw1] 34.75 26.5 -40
tp @e[tag=select_draw2] 34.75 26.5 -38

execute as @e[tag=card] at @s if block ~ ~-10 ~ minecraft:bedrock run tag @s add drawcard
tag @e[tag=drawcard] remove reserve	
effect give @e[tag=drawcard] glowing 9999 1 true

schedule function general:update_cards 5t

schedule function general:desync1 4t

stopsound @a master minecraft:block.grass.step
execute as @a at @s if block ~ 7 ~ crafting_table run playsound minecraft:block.grass.step master @s ~ ~ ~ 1 2