###add deck tags
tag @e[tag=deck1] remove deck1
tag @e[tag=deck2] remove deck2
tag @e[tag=deck3] remove deck3
tag @e[tag=deck4] remove deck4
tag @e[tag=deck] remove deck
execute as @e[tag=card] at @s if block ~ ~-10 ~ minecraft:white_terracotta run tag @s add deck1
execute as @e[tag=card] at @s if block ~ ~-10 ~ minecraft:magenta_terracotta run tag @s add deck2
execute as @e[tag=card] at @s if block ~ ~-10 ~ minecraft:light_blue_terracotta run tag @s add deck3
execute as @e[tag=card] at @s if block ~ ~-10 ~ minecraft:orange_terracotta run tag @s add deck4
execute as @e[tag=card] at @s if block ~ ~-10 ~ minecraft:white_terracotta run tag @s add deck
execute as @e[tag=card] at @s if block ~ ~-10 ~ minecraft:magenta_terracotta run tag @s add deck
execute as @e[tag=card] at @s if block ~ ~-10 ~ minecraft:light_blue_terracotta run tag @s add deck
execute as @e[tag=card] at @s if block ~ ~-10 ~ minecraft:orange_terracotta run tag @s add deck



###animation
execute if score @e[tag=dummy,limit=1] startanimation matches 1.. run scoreboard players add @e[tag=dummy] startanimation 1
execute if score @e[tag=dummy,limit=1] startanimation matches 1.. run function general:startanimation
execute if score @e[tag=dummy,limit=1] startanimation matches 220.. run scoreboard players set @e[tag=dummy] startanimation 0
execute if score @e[tag=dummy,limit=1] deckshuffle matches 1.. run scoreboard players add @e[tag=dummy] deckshuffle 1
execute if score @e[tag=dummy,limit=1] deckshuffle matches 1.. run function general:deckshuffle
execute if score @e[tag=dummy,limit=1] deckshuffle matches 85.. run scoreboard players set @e[tag=dummy] deckshuffle 0
execute if score @e[tag=dummy,limit=1] deckshuffle2 matches 1.. run scoreboard players add @e[tag=dummy] deckshuffle2 1
execute if score @e[tag=dummy,limit=1] deckshuffle2 matches 1.. run function general:deckshuffle2
execute if score @e[tag=dummy,limit=1] deckshuffle2 matches 85.. run scoreboard players set @e[tag=dummy] deckshuffle2 0

function shuffle:deckshuffle_draw
function shuffle:deckshuffle_turn


###resize and orientate the cards
execute as @e[tag=card] at @s unless block ~ 22 ~ minecraft:lime_wool run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[tag=card] at @s if block ~ 23 ~ minecraft:red_wool run data merge entity @s {Pose:{Head:[360f,90f,89.5f]}}
execute as @e[tag=card] at @s if block ~ 23 ~ minecraft:yellow_wool run data merge entity @s {Pose:{Head:[360f,-90f,89.5f]}}
execute as @e[tag=card] at @s if block ~ ~-1 ~ minecraft:glowstone run data merge entity @s {Pose:{Head:[90f,0f,0f]}}
execute as @e[tag=card] at @s if block ~ 22 ~ minecraft:lime_wool run data merge entity @s {Small:0b}
execute as @e[tag=card] at @s unless block ~ 22 ~ minecraft:lime_wool run data merge entity @s {Small:1b}


###tracing
execute unless score @e[tag=dummy,limit=1] startanimation matches 1.. if entity @a[tag=player1,tag=turn] run function tracing:start1
execute unless score @e[tag=dummy,limit=1] startanimation matches 1.. if entity @a[tag=player2,tag=turn] run function tracing:start2
execute unless score @e[tag=dummy,limit=1] startanimation matches 1.. if entity @a[tag=player3,tag=turn] run function tracing:start3
execute unless score @e[tag=dummy,limit=1] startanimation matches 1.. if entity @a[tag=player4,tag=turn] run function tracing:start4
execute at @e[tag=turn] run tp @e[tag=rightclick] ^ ^ ^1


###tracing
execute unless score @e[tag=dummy,limit=1] startanimation matches 1.. if entity @a[tag=player1,tag=stacking] run function tracing:start1
execute unless score @e[tag=dummy,limit=1] startanimation matches 1.. if entity @a[tag=player2,tag=stacking] run function tracing:start2
execute unless score @e[tag=dummy,limit=1] startanimation matches 1.. if entity @a[tag=player3,tag=stacking] run function tracing:start3
execute unless score @e[tag=dummy,limit=1] startanimation matches 1.. if entity @a[tag=player4,tag=stacking] run function tracing:start4
execute at @e[tag=stacking] run tp @e[tag=rightclick] ^ ^ ^1


effect clear @e[team=!green,tag=card]
effect give @e[tag=selected] glowing 1 1 true

execute as @a[scores={rightclick=1..}] run function general:camera
scoreboard players set @a rightclick 0






#tower
execute if entity @e[limit=1,tag=dummy,scores={decknumber=0..19}] as @e[tag=tower1] at @s run tp @s ~ 24.65 -39.85 ~ ~
execute if entity @e[limit=1,tag=dummy,scores={decknumber=20..}] as @e[tag=tower1] at @s run tp @s ~ 24.90 -39.85 ~ ~

execute if entity @e[limit=1,tag=dummy,scores={decknumber=0..39}] as @e[tag=tower2] at @s run tp @s ~ 24.65 -39.85 ~ ~
execute if entity @e[limit=1,tag=dummy,scores={decknumber=40..}] as @e[tag=tower2] at @s run tp @s ~ 24.95 -39.85 ~ ~

execute if entity @e[limit=1,tag=dummy,scores={decknumber=0..59}] as @e[tag=tower3] at @s run tp @s ~ 24.65 -39.85 ~ ~
execute if entity @e[limit=1,tag=dummy,scores={decknumber=60..}] as @e[tag=tower3] at @s run tp @s ~ 25.0 -39.85 ~ ~

execute if entity @e[limit=1,tag=dummy,scores={decknumber=0..76}] as @e[tag=tower4] at @s run tp @s ~ 24.65 -39.85 ~ ~
execute if entity @e[limit=1,tag=dummy,scores={decknumber=77..}] as @e[tag=tower4] at @s run tp @s ~ 25.05 -39.85 ~ ~

function general:update_deck_number




#button for draw
execute if block 34 28 -44 minecraft:birch_button[powered=true] if entity @a[tag=player1,tag=turn,limit=1] run function draw:player1_button
execute if block 42 28 -34 minecraft:birch_button[powered=true] if entity @a[tag=player2,tag=turn,limit=1] run function draw:player2_button
execute if block 43 28 -43 minecraft:birch_button[powered=true] if entity @a[tag=player3,tag=turn,limit=1] run function draw:player3_button
execute if block 33 28 -35 minecraft:birch_button[powered=true] if entity @a[tag=player4,tag=turn,limit=1] run function draw:player4_button

execute if block 34 28 -44 minecraft:birch_button[powered=true] run setblock 34 28 -44 minecraft:birch_button[powered=false,facing=north]
execute if block 33 28 -35 minecraft:birch_button[powered=true] run setblock 33 28 -35 minecraft:birch_button[powered=false,facing=west]
execute if block 42 28 -34 minecraft:birch_button[powered=true] run setblock 42 28 -34 minecraft:birch_button[powered=false,facing=south]
execute if block 43 28 -43 minecraft:birch_button[powered=true] run setblock 43 28 -43 minecraft:birch_button[powered=false,facing=east]




#stop trigger
scoreboard players enable @a stop
execute if entity @a[scores={stop=1..}] run function general:stop
scoreboard players set @a stop 0



###colorselect

#when stacking is disabled
execute if score @e[tag=dummy,limit=1] lobbysign3 matches 2 as @a[tag=choosingcolor,nbt={SelectedItem:{id:"minecraft:red_concrete"}}] run function placecard:wildcard_red
execute if score @e[tag=dummy,limit=1] lobbysign3 matches 2 as @a[tag=choosingcolor,nbt={SelectedItem:{id:"minecraft:lime_concrete"}}] run function placecard:wildcard_green
execute if score @e[tag=dummy,limit=1] lobbysign3 matches 2 as @a[tag=choosingcolor,nbt={SelectedItem:{id:"minecraft:light_blue_concrete"}}] run function placecard:wildcard_blue
execute if score @e[tag=dummy,limit=1] lobbysign3 matches 2 as @a[tag=choosingcolor,nbt={SelectedItem:{id:"minecraft:yellow_concrete"}}] run function placecard:wildcard_yellow




#when stacking is enabled
execute if entity @e[team=green,tag=wild] if score @e[tag=dummy,limit=1] lobbysign3 matches 1 as @a[tag=choosingcolor,nbt={SelectedItem:{id:"minecraft:red_concrete"}}] run function placecard:wildcard_red
execute if entity @e[team=green,tag=wild] if score @e[tag=dummy,limit=1] lobbysign3 matches 1 as @a[tag=choosingcolor,nbt={SelectedItem:{id:"minecraft:lime_concrete"}}] run function placecard:wildcard_green
execute if entity @e[team=green,tag=wild] if score @e[tag=dummy,limit=1] lobbysign3 matches 1 as @a[tag=choosingcolor,nbt={SelectedItem:{id:"minecraft:light_blue_concrete"}}] run function placecard:wildcard_blue
execute if entity @e[team=green,tag=wild] if score @e[tag=dummy,limit=1] lobbysign3 matches 1 as @a[tag=choosingcolor,nbt={SelectedItem:{id:"minecraft:yellow_concrete"}}] run function placecard:wildcard_yellow

execute if entity @e[team=green,tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign3 matches 1 as @e[team=green] if entity @a[tag=choosingcolor,nbt={SelectedItem:{id:"minecraft:red_concrete"}}] run function placecard:wildcard_red_stack
execute if entity @e[team=green,tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign3 matches 1 as @e[team=green] if entity @a[tag=choosingcolor,nbt={SelectedItem:{id:"minecraft:lime_concrete"}}] run function placecard:wildcard_green_stack
execute if entity @e[team=green,tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign3 matches 1 as @e[team=green] if entity @a[tag=choosingcolor,nbt={SelectedItem:{id:"minecraft:light_blue_concrete"}}] run function placecard:wildcard_blue_stack
execute if entity @e[team=green,tag=wild+4] if score @e[tag=dummy,limit=1] lobbysign3 matches 1 as @e[team=green] if entity @a[tag=choosingcolor,nbt={SelectedItem:{id:"minecraft:yellow_concrete"}}] run function placecard:wildcard_yellow_stack




execute if entity @a[tag=selecting,nbt={SelectedItem:{id:"minecraft:lime_concrete"}}] as @e[tag=drawcard] run function placecard:identify

execute if entity @a[tag=player1,tag=selecting,nbt={SelectedItem:{id:"minecraft:yellow_concrete"}}] as @e[tag=drawcard] run function draw:player1_keep
execute if entity @a[tag=player2,tag=selecting,nbt={SelectedItem:{id:"minecraft:yellow_concrete"}}] as @e[tag=drawcard] run function draw:player2_keep
execute if entity @a[tag=player3,tag=selecting,nbt={SelectedItem:{id:"minecraft:yellow_concrete"}}] as @e[tag=drawcard] run function draw:player3_keep
execute if entity @a[tag=player4,tag=selecting,nbt={SelectedItem:{id:"minecraft:yellow_concrete"}}] as @e[tag=drawcard] run function draw:player4_keep


execute if entity @a[tag=stacking,nbt={SelectedItem:{id:"minecraft:white_concrete"}}] run function placecard:stack_drawall





#toggle spectating
execute as @a[tag=spectator,scores={sneak=35..},tag=spectator] run function general:spectate
scoreboard players set @a[tag=spectator,scores={sneak=35..}] sneak 0

scoreboard players set @a[tag=spectator,scores={sneak=0}] sneaktimer 0
scoreboard players add @a[tag=spectator,scores={sneak=1..,sneaktimer=..20}] sneaktimer 1
scoreboard players remove @a[tag=spectator,scores={sneaktimer=21,sneak=1..,sneak2=0}] sneak 1

scoreboard players set @a sneak2 0



effect give @a[tag=spectating] invisibility 1 1 true
tp @a[tag=spectating,scores={cameraposition=1}] 38.5 30 -38.5
tp @a[tag=spectating,scores={cameraposition=2}] 38.5 29 -48.5
tp @a[tag=spectating,scores={cameraposition=3}] 38.5 29 -28.5
tp @a[tag=spectating,scores={cameraposition=4}] 48.5 29 -38.5
tp @a[tag=spectating,scores={cameraposition=5}] 28.5 29 -38.5






execute as @a[tag=spectator,scores={sneak=0},tag=spectating] run title @s actionbar ["",{"text":"Right click to switch cameras. Hold sneak to exit.","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=0},tag=!spectating] run title @s actionbar ["",{"text":"Hold sneak to spectate","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=1..2}] run title @s actionbar ["",{"text":"","color":"aqua"},{"text":"█ █ █ █ █ █ █ █ █ █ █ █ █ █ █ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=3..4}] run title @s actionbar ["",{"text":"█ ","color":"aqua"},{"text":"█ █ █ █ █ █ █ █ █ █ █ █ █ █ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=5..6}] run title @s actionbar ["",{"text":"█ █ ","color":"aqua"},{"text":"█ █ █ █ █ █ █ █ █ █ █ █ █ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=7..8}] run title @s actionbar ["",{"text":"█ █ █ ","color":"aqua"},{"text":"█ █ █ █ █ █ █ █ █ █ █ █ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=9..10}] run title @s actionbar ["",{"text":"█ █ █ █ ","color":"aqua"},{"text":"█ █ █ █ █ █ █ █ █ █ █ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=11..13}] run title @s actionbar ["",{"text":"█ █ █ █ █ ","color":"aqua"},{"text":"█ █ █ █ █ █ █ █ █ █ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=14..15}] run title @s actionbar ["",{"text":"█ █ █ █ █ █ ","color":"aqua"},{"text":"█ █ █ █ █ █ █ █ █ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=16..17}] run title @s actionbar ["",{"text":"█ █ █ █ █ █ █ ","color":"aqua"},{"text":"█ █ █ █ █ █ █ █ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=18..19}] run title @s actionbar ["",{"text":"█ █ █ █ █ █ █ █ ","color":"aqua"},{"text":"█ █ █ █ █ █ █ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=20..21}] run title @s actionbar ["",{"text":"█ █ █ █ █ █ █ █ █ ","color":"aqua"},{"text":"█ █ █ █ █ █ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=22..23}] run title @s actionbar ["",{"text":"█ █ █ █ █ █ █ █ █ █ ","color":"aqua"},{"text":"█ █ █ █ █ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=24..25}] run title @s actionbar ["",{"text":"█ █ █ █ █ █ █ █ █ █ █ ","color":"aqua"},{"text":"█ █ █ █ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=26..27}] run title @s actionbar ["",{"text":"█ █ █ █ █ █ █ █ █ █ █ █ ","color":"aqua"},{"text":"█ █ █ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=28..29}] run title @s actionbar ["",{"text":"█ █ █ █ █ █ █ █ █ █ █ █ █ ","color":"aqua"},{"text":"█ █ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=30..31}] run title @s actionbar ["",{"text":"█ █ █ █ █ █ █ █ █ █ █ █ █ █ ","color":"aqua"},{"text":"█ █","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=32..33}] run title @s actionbar ["",{"text":"█ █ █ █ █ █ █ █ █ █ █ █ █ █ █ ","color":"aqua"},{"text":"█","color":"gray"}]
execute as @a[tag=spectator,scores={sneak=34..35}] run title @s actionbar ["",{"text":"█ █ █ █ █ █ █ █ █ █ █ █ █ █ █ █ ","color":"aqua"},{"text":"","color":"gray"}]



###schedule desync on the table
execute as @e[tag=table,scores={age=1..}] unless score @s schedule matches 10.. run scoreboard players add @s schedule 1
execute as @a[scores={schedule=9}] run function general:desync2





###rightclick helmet
replaceitem entity @a container.0 minecraft:leather_helmet{display:{Name:'{"text":" "}'}} 1
replaceitem entity @a container.1 minecraft:leather_helmet{display:{Name:'{"text":" "}'}} 1
replaceitem entity @a container.2 minecraft:leather_helmet{display:{Name:'{"text":" "}'}} 1
replaceitem entity @a container.3 minecraft:leather_helmet{display:{Name:'{"text":" "}'}} 1
replaceitem entity @a container.4 minecraft:leather_helmet{display:{Name:'{"text":" "}'}} 1
replaceitem entity @a container.5 minecraft:leather_helmet{display:{Name:'{"text":" "}'}} 1
replaceitem entity @a container.6 minecraft:leather_helmet{display:{Name:'{"text":" "}'}} 1
replaceitem entity @a container.7 minecraft:leather_helmet{display:{Name:'{"text":" "}'}} 1
replaceitem entity @a container.8 minecraft:leather_helmet{display:{Name:'{"text":" "}'}} 1
scoreboard players add @a[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] rightclick 1
replaceitem entity @a armor.head air
replaceitem entity @a weapon.offhand air




###automatic game stop
scoreboard players set @e[tag=dummy] ingamecount 0
execute as @a[tag=player1] run scoreboard players add @e[tag=dummy] ingamecount 1
execute as @a[tag=player2] run scoreboard players add @e[tag=dummy] ingamecount 1
execute as @a[tag=player3] run scoreboard players add @e[tag=dummy] ingamecount 1
execute as @a[tag=player4] run scoreboard players add @e[tag=dummy] ingamecount 1


execute unless score @e[tag=dummy,limit=1] playercount = @e[tag=dummy,limit=1] ingamecount run function general:stop