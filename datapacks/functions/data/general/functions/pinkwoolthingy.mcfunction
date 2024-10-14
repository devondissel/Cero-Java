clear @s
gamemode adventure @s
tp @s 91 19 -76 -90 0

execute if score @e[tag=dummy,limit=1] ingame matches 2 run title @s title ["",{"text":"Partida actualmente en curso","color":"dark_red"}]
execute if score @e[tag=dummy,limit=1] ingame matches 2 run title @s subtitle ["",{"text":"Puedes ver la partida haciendo clic en el cartel de ","color":"dark_red"},{"text":"[Espectar]","color":"gray"}]