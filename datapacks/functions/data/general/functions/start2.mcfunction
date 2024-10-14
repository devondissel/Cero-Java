team leave @a
tag @a[tag=pool,limit=1,sort=random] add player1
tag @a[tag=player1] remove pool
tag @a[tag=pool,limit=1,sort=random] add player2
tag @a[tag=player2] remove pool
tag @a[tag=pool,limit=1,sort=random] add player3
tag @a[tag=player3] remove pool
tag @a[tag=pool,limit=1,sort=random] add player4
tag @a[tag=player4] remove pool

scoreboard players set @a sneak 0
scoreboard players set @e[tag=dummy] ingame 2
scoreboard players set @e[tag=dummy] startanimation 1
scoreboard players set @e[tag=dummy] hastodraw2 0
function general:summon_cards

tp @a[tag=player1] 38 27 -45 0 0
tp @a[tag=player2] 38 27 -33 180 0
tp @a[tag=player3] 44 27 -39 90 0
tp @a[tag=player4] 32 27 -39 -90 0

scoreboard players set @a[tag=player1] cardcount 7
scoreboard players set @a[tag=player2] cardcount 7
scoreboard players set @a[tag=player3] cardcount 7
scoreboard players set @a[tag=player4] cardcount 7

fill 42 27 -36 42 27 -42 minecraft:spruce_fence
fill 34 27 -36 34 27 -42 minecraft:spruce_fence
execute if score @e[tag=dummy,limit=1] playercount matches 3.. run fill 42 27 -36 42 27 -42 minecraft:air
execute if score @e[tag=dummy,limit=1] playercount matches 4 run fill 34 27 -36 34 27 -42 minecraft:air

tag @a[tag=player1] add turn

team leave @a
team join player1 @a[tag=player1]
team join player2 @a[tag=player2]
team join player3 @a[tag=player3]
team join player4 @a[tag=player4]

scoreboard players set @a rightclick 0
scoreboard players set @e[tag=dummy] clockwise 1
scoreboard players set @e[tag=dummy] turn 1
scoreboard players set @e[tag=dummy] skipcard 1

execute as @a at @s run title @s times 20 55 10
execute as @a at @s if block ~ 7 ~ minecraft:crafting_table run title @s title ["",{"text":"# ","obfuscated":true,"color":"yellow"},{"text":"Cero","color":"red"},{"text":" #","obfuscated":true,"color":"yellow"}]
execute as @a at @s if block ~ 7 ~ minecraft:crafting_table run title @s subtitle ["",{"text":"Por: Mynckey","color":"gray"}]
execute as @a at @s unless block ~ 7 ~ minecraft:crafting_table run title @s title ["",{"text":"Ha comenzado una partida de Cero","color":"red"}]
execute as @a at @s unless block ~ 7 ~ minecraft:crafting_table run title @s subtitle ["",{"text":"Mantente agachado para espectar"}]


scoreboard players set @a stop 0
scoreboard players set @e[tag=dummy] wait 0




####mention the modifiers
execute if score @e[tag=dummy,limit=1] lobbysign1 matches 1 run tellraw @a ["",{"text":"El jugador no puede terminar con una carta negra.","color":"gray"}]
execute if score @e[tag=dummy,limit=1] lobbysign1 matches 2 run tellraw @a ["",{"text":"El jugador puede terminar con cualquier carta.","color":"gray"}]

execute if score @e[tag=dummy,limit=1] lobbysign3 matches 1 run tellraw @a ["",{"text":"Las cartas robadas se pueden apilar.","color":"gray"}]
execute if score @e[tag=dummy,limit=1] lobbysign3 matches 2 run tellraw @a ["",{"text":"Las cartas robadas no se pueden apilar.","color":"gray"}]

scoreboard players set @a[tag=spectator] sneak 0
scoreboard players set @a[tag=spectator] sneaktimer 0
scoreboard players set @a[tag=spectator] cameraposition 1

scoreboard players reset @a cardcount
function general:cardcount







####signs


data merge block 66 20 -78 {Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
data merge block 66 20 -77 {Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
data merge block 66 20 -76 {Text1:'{"text":"No puedes","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"<Chopper2112> Se supone que debía decir \'mientras\' y no \'cuando\' reeeeee\\"}]"},"color":"dark_red"}',Text2:'{"text":"cambiar la config","color":"dark_red"}',Text3:'{"text":"mientras el juego","color":"dark_red"}',Text4:'{"text":"está en curso","color":"dark_red"}'}
data merge block 66 20 -75 {Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
data merge block 66 20 -74 {Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}