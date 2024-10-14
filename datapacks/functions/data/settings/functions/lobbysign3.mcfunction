scoreboard players add @e[tag=dummy] lobbysign3 1
scoreboard players set @e[tag=dummy,scores={lobbysign3=3..}] lobbysign3 1

execute if score @e[tag=dummy,limit=1] lobbysign3 matches 1 run data merge block 66 20 -77 {Text1:'{"text":"Las cartas de","clickEvent":{"action":"run_command","value":"function settings:lobbysign3"}}',Text2:'{"text":"robar se"}',Text3:'{"text":"pueden apilar"}',Text4:'{"text":"Habilitado","bold":true,"color":"green"}'}
execute if score @e[tag=dummy,limit=1] lobbysign3 matches 2 run data merge block 66 20 -77 {Text1:'{"text":"Las cartas de","clickEvent":{"action":"run_command","value":"function settings:lobbysign3"}}',Text2:'{"text":"robar se"}',Text3:'{"text":"pueden apilar"}',Text4:'{"text":"Deshabilitado","bold":true,"color":"dark_red"}'}