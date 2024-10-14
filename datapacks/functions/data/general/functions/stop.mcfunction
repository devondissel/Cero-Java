kill @e[tag=card]
execute as @a at @s if block ~ 7 ~ crafting_table run tp @s 91 19 -76 -90 0
execute as @a at @s if block ~ 7 ~ crafting_table run tp @s 91 19 -76 -90 0
execute as @a at @s if block ~ 7 ~ crafting_table run tp @s 91 19 -76 -90 0
execute as @a at @s if block ~ 7 ~ crafting_table run tp @s 91 19 -76 -90 0
gamemode adventure @a
scoreboard players reset @a spectating
team leave @a
tag @a remove player1
tag @a remove player2
tag @a remove player3 
tag @a remove player4
tag @a remove turn
tag @a remove pool
tag @a remove stacking
tag @a remove choosingcolor
tag @a remove selecting
tag @a remove faketurn
tag @a remove spectating
kill @e[tag=decknumber]
kill @e[tag=colorselect]
kill @e[tag=armorstand4draw]
kill @e[tag=select_draw1]
kill @e[tag=select_draw2]
scoreboard objectives remove cardcount
scoreboard objectives add cardcount dummy {"text":"Cartas","color":"gold","bold":true}
function settings:lobbysign4
function settings:lobbysign4


scoreboard players set @a sneak 0
scoreboard players set @e[tag=dummy] startanimation 0
scoreboard players set @a hastodraw 0
scoreboard players set @e[tag=dummy] ingame 1
schedule function general:clear 1t

schedule function general:hidetower 10t

scoreboard players set @e[tag=dummy] decknumber 0




#fix the signs
execute if score @e[tag=dummy,limit=1] lobbysign1 matches 1 run data merge block 66 20 -78 {Text1:'{"text":"No se puede","clickEvent":{"action":"run_command","value":"function settings:lobbysign1"}}',Text2:'{"text":"terminar con una"}',Text3:'{"text":"carta negra"}',Text4:'{"text":"Habilitado","bold":true,"color":"green"}'}
execute if score @e[tag=dummy,limit=1] lobbysign1 matches 2 run data merge block 66 20 -78 {Text1:'{"text":"No se puede","clickEvent":{"action":"run_command","value":"function settings:lobbysign1"}}',Text2:'{"text":"terminar con una"}',Text3:'{"text":"carta negra"}',Text4:'{"text":"Deshabilitado","bold":true,"color":"dark_red"}'}

execute if score @e[tag=dummy,limit=1] lobbysign2 matches 1 run data merge block 66 20 -75 {Text1:'{"text":"Cartas iniciales","clickEvent":{"action":"run_command","value":"function settings:lobbysign2"}}',Text2:"",Text3:'{"text":"- 1 -"}'}
execute if score @e[tag=dummy,limit=1] lobbysign2 matches 2 run data merge block 66 20 -75 {Text1:'{"text":"Cartas iniciales","clickEvent":{"action":"run_command","value":"function settings:lobbysign2"}}',Text2:"",Text3:'{"text":"- 2 -"}'}
execute if score @e[tag=dummy,limit=1] lobbysign2 matches 3 run data merge block 66 20 -75 {Text1:'{"text":"Cartas iniciales","clickEvent":{"action":"run_command","value":"function settings:lobbysign2"}}',Text2:"",Text3:'{"text":"- 3 -"}'}
execute if score @e[tag=dummy,limit=1] lobbysign2 matches 4 run data merge block 66 20 -75 {Text1:'{"text":"Cartas iniciales","clickEvent":{"action":"run_command","value":"function settings:lobbysign2"}}',Text2:"",Text3:'{"text":"- 4 -"}'}
execute if score @e[tag=dummy,limit=1] lobbysign2 matches 5 run data merge block 66 20 -75 {Text1:'{"text":"Cartas iniciales","clickEvent":{"action":"run_command","value":"function settings:lobbysign2"}}',Text2:"",Text3:'{"text":"- 5 -"}'}
execute if score @e[tag=dummy,limit=1] lobbysign2 matches 6 run data merge block 66 20 -75 {Text1:'{"text":"Cartas iniciales","clickEvent":{"action":"run_command","value":"function settings:lobbysign2"}}',Text2:"",Text3:'{"text":"- 6 -"}'}
execute if score @e[tag=dummy,limit=1] lobbysign2 matches 7 run data merge block 66 20 -75 {Text1:'{"text":"Cartas iniciales","clickEvent":{"action":"run_command","value":"function settings:lobbysign2"}}',Text2:"",Text3:'{"text":"- 7 -"}'}
execute if score @e[tag=dummy,limit=1] lobbysign2 matches 8 run data merge block 66 20 -75 {Text1:'{"text":"Cartas iniciales","clickEvent":{"action":"run_command","value":"function settings:lobbysign2"}}',Text2:"",Text3:'{"text":"- 8 -"}'}
execute if score @e[tag=dummy,limit=1] lobbysign2 matches 9 run data merge block 66 20 -75 {Text1:'{"text":"Cartas iniciales","clickEvent":{"action":"run_command","value":"function settings:lobbysign2"}}',Text2:"",Text3:'{"text":"- 9 -"}'}
execute if score @e[tag=dummy,limit=1] lobbysign2 matches 10 run data merge block 66 20 -75 {Text1:'{"text":"Cartas iniciales","clickEvent":{"action":"run_command","value":"function settings:lobbysign2"}}',Text2:"",Text3:'{"text":"- 10 -"}'}
execute if score @e[tag=dummy,limit=1] lobbysign2 matches 11 run data merge block 66 20 -75 {Text1:'{"text":"Cartas iniciales","clickEvent":{"action":"run_command","value":"function settings:lobbysign2"}}',Text2:"",Text3:'{"text":"- 11 -"}'}
execute if score @e[tag=dummy,limit=1] lobbysign2 matches 12 run data merge block 66 20 -75 {Text1:'{"text":"Cartas iniciales","clickEvent":{"action":"run_command","value":"function settings:lobbysign2"}}',Text2:"",Text3:'{"text":"- 12 -"}'}
execute if score @e[tag=dummy,limit=1] lobbysign2 matches 13 run data merge block 66 20 -75 {Text1:'{"text":"Cartas iniciales","clickEvent":{"action":"run_command","value":"function settings:lobbysign2"}}',Text2:"",Text3:'{"text":"- 13 -"}'}
execute if score @e[tag=dummy,limit=1] lobbysign2 matches 14 run data merge block 66 20 -75 {Text1:'{"text":"Cartas iniciales","clickEvent":{"action":"run_command","value":"function settings:lobbysign2"}}',Text2:"",Text3:'{"text":"- 14 -"}'}

data merge block 66 20 -76 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function settings:reset"}}',Text2:'{"text":"Reiniciar valores"}',Text3:'{"text":"por defecto"}',Text4:'{"text":""}'}

execute if score @e[tag=dummy,limit=1] lobbysign3 matches 1 run data merge block 66 20 -77 {Text1:'{"text":"Las cartas de","clickEvent":{"action":"run_command","value":"function settings:lobbysign3"}}',Text2:'{"text":"robar se"}',Text3:'{"text":"pueden apilar"}',Text4:'{"text":"Habilitado","bold":true,"color":"green"}'}
execute if score @e[tag=dummy,limit=1] lobbysign3 matches 2 run data merge block 66 20 -77 {Text1:'{"text":"Las cartas de","clickEvent":{"action":"run_command","value":"function settings:lobbysign3"}}',Text2:'{"text":"robar se"}',Text3:'{"text":"pueden apilar"}',Text4:'{"text":"Deshabilitado","bold":true,"color":"dark_red"}'}

execute if score @e[tag=dummy,limit=1] lobbysign4 matches 1 run data merge block 66 20 -74 {Text1:'{"text":"Muestra cuántas","clickEvent":{"action":"run_command","value":"function settings:lobbysign4"}}',Text2:'{"text":"cartas tiene"}',Text3:'{"text":"cada uno"}',Text4:'{"text":"Habilitado","bold":true,"color":"green"}'}
execute if score @e[tag=dummy,limit=1] lobbysign4 matches 2 run data merge block 66 20 -74 {Text1:'{"text":"Muestra cuántas","clickEvent":{"action":"run_command","value":"function settings:lobbysign4"}}',Text2:'{"text":"cartas tiene"}',Text3:'{"text":" cada uno"}',Text4:'{"text":"Deshabilitado","bold":true,"color":"dark_red"}'}

















