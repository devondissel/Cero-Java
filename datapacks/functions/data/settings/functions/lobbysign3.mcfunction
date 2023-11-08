scoreboard players add @e[tag=dummy] lobbysign3 1
scoreboard players set @e[tag=dummy,scores={lobbysign3=3..}] lobbysign3 1

execute if score @e[tag=dummy,limit=1] lobbysign3 matches 1 run data merge block 66 20 -77 {Text1:'{"text":"Draw cards","clickEvent":{"action":"run_command","value":"function settings:lobbysign3"}}',Text2:'{"text":"can stack"}',Text4:'{"text":"Enabled","bold":true,"color":"green"}'}
execute if score @e[tag=dummy,limit=1] lobbysign3 matches 2 run data merge block 66 20 -77 {Text1:'{"text":"Draw cards","clickEvent":{"action":"run_command","value":"function settings:lobbysign3"}}',Text2:'{"text":"can stack"}',Text4:'{"text":"Disabled","bold":true,"color":"dark_red"}'}