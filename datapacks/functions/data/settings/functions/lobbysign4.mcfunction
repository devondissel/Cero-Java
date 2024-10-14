scoreboard players add @e[tag=dummy] lobbysign4 1
scoreboard players set @e[tag=dummy,scores={lobbysign4=3..}] lobbysign4 1

execute if score @e[tag=dummy,limit=1] lobbysign4 matches 1 run data merge block 66 20 -74 {Text1:'{"text":"Muestra cuántas","clickEvent":{"action":"run_command","value":"function settings:lobbysign4"}}',Text2:'{"text":"cartas tiene"}',Text3:'{"text":"cada uno"}',Text4:'{"text":"Habilitado","bold":true,"color":"green"}'}
execute if score @e[tag=dummy,limit=1] lobbysign4 matches 2 run data merge block 66 20 -74 {Text1:'{"text":"Muestra cuántas","clickEvent":{"action":"run_command","value":"function settings:lobbysign4"}}',Text2:'{"text":"cartas tiene"}',Text3:'{"text":"cada uno"}',Text4:'{"text":"Deshabilitado","bold":true,"color":"dark_red"}'}

execute if score @e[tag=dummy,limit=1] lobbysign4 matches 1 run scoreboard objectives setdisplay sidebar cardcount
execute if score @e[tag=dummy,limit=1] lobbysign4 matches 2 run scoreboard objectives setdisplay sidebar