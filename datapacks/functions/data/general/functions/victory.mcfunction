tag @a remove turn
tag @a remove choosingcolor

kill @e[tag=armorstand4draw]
tellraw @a ["",{"selector":"@a[scores={cardcount=0},limit=1]","color":"green"},{"text":" won the game!","color":"green"}]
scoreboard players add @a[scores={cardcount=0},limit=1] wins 1
setblock 24 24 -26 minecraft:redstone_block

schedule function general:stop 100t