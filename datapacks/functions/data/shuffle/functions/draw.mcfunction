scoreboard players set @e[tag=dummy] testpassed 0
execute if entity @a[scores={hastodraw=1..},limit=1] run scoreboard players set @e[tag=dummy] testpassed 1
execute unless entity @e[tag=reserve] run scoreboard players set @e[tag=dummy] testpassed 2

effect clear @e[tag=table]

execute if entity @a[scores={hastodraw=1..},tag=player1,limit=1] if score @e[tag=dummy,limit=1] testpassed matches 1 run function draw:player1_single
execute if entity @a[scores={hastodraw=1..},tag=player2,limit=1] if score @e[tag=dummy,limit=1] testpassed matches 1 run function draw:player2_single
execute if entity @a[scores={hastodraw=1..},tag=player3,limit=1] if score @e[tag=dummy,limit=1] testpassed matches 1 run function draw:player3_single
execute if entity @a[scores={hastodraw=1..},tag=player4,limit=1] if score @e[tag=dummy,limit=1] testpassed matches 1 run function draw:player4_single
execute if score @e[tag=dummy,limit=1] testpassed matches 1 run scoreboard players remove @a[scores={hastodraw=1..}] hastodraw 1






execute if score @e[tag=dummy,limit=1] testpassed matches 1 run schedule function shuffle:draw 15t
execute if score @e[tag=dummy,limit=1] testpassed matches 0 run tag @a[tag=faketurn] add turn
execute if score @e[tag=dummy,limit=1] testpassed matches 0 run tag @a[tag=faketurn] remove faketurn
execute if score @e[tag=dummy,limit=1] testpassed matches 0 if score @e[tag=dummy,limit=1] compatible matches 1 if score @e[tag=dummy,limit=1] clockwise matches 1 run function game:nextturn
execute if score @e[tag=dummy,limit=1] testpassed matches 0 if score @e[tag=dummy,limit=1] compatible matches 1 if score @e[tag=dummy,limit=1] clockwise matches 2 run function game:nextturnccw

execute if score @e[tag=dummy,limit=1] testpassed matches 2 run scoreboard players set @e[tag=dummy] deckshuffle 1