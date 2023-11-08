clear @s
gamemode adventure @s
tp @s 91 19 -76 -90 0

execute if score @e[tag=dummy,limit=1] ingame matches 2 run title @s title ["",{"text":"Game currently in progress","color":"dark_red"}]
execute if score @e[tag=dummy,limit=1] ingame matches 2 run title @s subtitle ["",{"text":"You can watch it by clicking the ","color":"dark_red"},{"text":"[Spectate]","color":"gray"},{"text":" sign","color":"dark_red"}]