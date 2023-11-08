#####every other tick
scoreboard players add @e[tag=dummy] everyothertick 1
scoreboard players set @e[tag=dummy,scores={everyothertick=2}] everyothertick 0


#heart particles
execute if entity @a[name=Mynckey] at Mynckey run tp @e[tag=dummy] ~ ~2.25 ~
execute if entity @a[name=Mynckey] if score @e[tag=dummy,limit=1] everyothertick matches 1 as @e[tag=dummy] at @s run tp @s ~ ~ ~ ~36 ~
execute if entity @a[name=Mynckey] if score @e[tag=dummy,limit=1] everyothertick matches 1 at @e[tag=dummy] run particle heart ^ ^ ^1 0 0 0 1 1 force
execute if score @e[tag=dummy,limit=1] everyothertick matches 1 as @e[tag=particles1] at @s run tp @s ~ ~ ~ ~36 ~
execute if score @e[tag=dummy,limit=1] everyothertick matches 1 at @e[tag=particles1] run particle heart ^ ^ ^1 0 0 0 1 1 force


#leave reset
execute as @a[scores={leave=1..}] run function general:leave

#preparing players 
gamemode adventure @a[gamemode=survival]
effect give @a minecraft:weakness 1 0 true
effect give @a minecraft:saturation 2 0 true
effect give @e[tag=spectating] minecraft:levitation 1 255 true


#lobby particles
scoreboard players add @e[tag=dummy] particletimer 1
execute as @e[type=minecart] at @s run particle end_rod ~ 19 ~ 0 0 0 0 1 force
scoreboard players set @e[tag=dummy,scores={particletimer=195}] particletimer 0
execute if score @e[tag=dummy,limit=1] particletimer matches 1 run summon minecart 54 1 -76
execute if score @e[tag=dummy,limit=1] particletimer matches 1 run summon minecart 91 1 -113
execute if score @e[tag=dummy,limit=1] particletimer matches 1 run summon minecart 128 1 -76
execute if score @e[tag=dummy,limit=1] particletimer matches 1 run summon minecart 91 1 -39
execute if score @e[tag=dummy,limit=1] particletimer matches 194 run kill @e[type=minecart]
effect give @e[type=villager] invisibility 1 1 true

#start game
execute as @a at @s if block ~ ~-1 ~ black_concrete if score @e[tag=dummy,limit=1] ingame matches 1 run function general:start
execute as @a at @s if block ~ ~-1 ~ black_concrete if score @e[tag=dummy,limit=1] ingame matches 2 run title @s[tag=!spectator] actionbar ["",{"text":"There is already a game in progress.","color":"dark_red"}]

tellraw @a[scores={twitter=1..}] ["",{"text":"twitter.com/mynckey","color":"aqua","clickEvent":{"action":"open_url","value":"http://twitter.com/mynckey"}}]
scoreboard players set @a twitter 0




#button for stop
execute if block 42 28 -44 minecraft:birch_button[powered=true] run tellraw @a[tag=player1] ["",{"text":"Are you sure you want to quit? ","color":"dark_red"},{"text":"(click here)","color":"gray","clickEvent":{"action":"run_command","value":"/trigger stop"}}]
execute if block 33 28 -43 minecraft:birch_button[powered=true] run tellraw @a[tag=player4] ["",{"text":"Are you sure you want to quit? ","color":"dark_red"},{"text":"(click here)","color":"gray","clickEvent":{"action":"run_command","value":"/trigger stop"}}]
execute if block 34 28 -34 minecraft:birch_button[powered=true] run tellraw @a[tag=player2] ["",{"text":"Are you sure you want to quit? ","color":"dark_red"},{"text":"(click here)","color":"gray","clickEvent":{"action":"run_command","value":"/trigger stop"}}]
execute if block 43 28 -35 minecraft:birch_button[powered=true] run tellraw @a[tag=player3] ["",{"text":"Are you sure you want to quit? ","color":"dark_red"},{"text":"(click here)","color":"gray","clickEvent":{"action":"run_command","value":"/trigger stop"}}]

execute if block 42 28 -44 minecraft:birch_button[powered=true] run setblock 42 28 -44 minecraft:birch_button[powered=false,facing=north]
execute if block 33 28 -43 minecraft:birch_button[powered=true] run setblock 33 28 -43 minecraft:birch_button[powered=false,facing=west]
execute if block 34 28 -34 minecraft:birch_button[powered=true] run setblock 34 28 -34 minecraft:birch_button[powered=false,facing=south]
execute if block 43 28 -35 minecraft:birch_button[powered=true] run setblock 43 28 -35 minecraft:birch_button[powered=false,facing=east]





#ticklobbyn't
execute if score @e[tag=dummy,limit=1] ingame matches 2 run function general:tickingame
execute as @a at @s if block ~ ~-5 ~ minecraft:soul_sand run tp @s ~8 ~-1 ~-15
team join spectator @a[scores={spectator=1}]
execute if score @e[tag=dummy,limit=1] ingame matches 1 as @a[scores={spectator=1}] run title @s actionbar ["",{"text":"You are a spectator","color":"green"}]


#pinkwoolthingy
execute as @a at @s if block ~ ~-1 ~ pink_wool run function general:pinkwoolthingy


#online
scoreboard players set @e[tag=dummy] online 0
execute as @a run scoreboard players add @e[tag=dummy] online 1
execute if score @e[tag=dummy,limit=1] online matches 0..1 if score @e[tag=dummy,limit=1] ingame matches 2 run function general:stop



#lake reset
scoreboard players remove @e[tag=dummy,scores={lakereset=1..}] lakereset 1
execute if score @e[tag=dummy,limit=1] lakereset matches 1 run function general:fixlake




recipe take @a *

kill @e[type=item]