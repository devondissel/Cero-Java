scoreboard players add @e[tag=dummy] lobbysign1 1
scoreboard players set @e[tag=dummy,scores={lobbysign1=3..}] lobbysign1 1

execute if score @e[tag=dummy,limit=1] lobbysign1 matches 1 run data merge block 66 20 -78 {Text1:'{"text":"No se puede","clickEvent":{"action":"run_command","value":"function settings:lobbysign1"}}',Text2:'{"text":"terminar con una"}',Text3:'{"text":"carta negra"}',Text4:'{"text":"Habilitado","bold":true,"color":"green"}'}
execute if score @e[tag=dummy,limit=1] lobbysign1 matches 2 run data merge block 66 20 -78 {Text1:'{"text":"No se puede","clickEvent":{"action":"run_command","value":"function settings:lobbysign1"}}',Text2:'{"text":"terminar con una"}',Text3:'{"text":"carta negra"}',Text4:'{"text":"Deshabilitado","bold":true,"color":"dark_red"}'}