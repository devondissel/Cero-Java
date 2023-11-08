scoreboard players set @e[tag=dummy] loop 18

kill @e[tag=cursor]
execute at @e[tag=player2,tag=turn] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Invisible:1b,Tags:["player2cursor","cursor"]}
execute at @e[tag=player2,tag=stacking] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Invisible:1b,Tags:["player2cursor","cursor"]}
data modify entity @e[tag=player2cursor,limit=1] Rotation set from entity @a[tag=player2,limit=1] Rotation
function tracing:loop
tp @e[tag=cursorpoint] @e[tag=player2cursor,limit=1]

tag @e[tag=card] remove selected
execute at @e[tag=player2cursor] as @e[tag=deck2,limit=1,sort=nearest,distance=..1] run tag @s add selected
execute if score @e[tag=turn,limit=1] rightclick matches 1.. as @e[tag=selected] run function placecard:identify
execute if score @e[tag=stacking,limit=1] rightclick matches 1.. as @e[tag=selected] run function placecard:identify2