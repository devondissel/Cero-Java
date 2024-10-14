function general:update_cardcount
execute if entity @a[tag=turn] unless entity @a[scores={cardcount=0}] unless entity @e[tag=dummy,scores={deckshuffle2=1..}] run tellraw @a ["",{"selector":"@e[tag=turn]","color":"gold"},{"selector":"@e[tag=stacking]","color":"gold"},{"text":" está jugando.","color":"gold"}]
stopsound @a master minecraft:block.note_block.chime
execute if entity @a[tag=turn] unless entity @a[scores={cardcount=0}] unless entity @e[tag=dummy,scores={deckshuffle2=1..}] run execute as @a[tag=turn] at @s run playsound minecraft:block.note_block.chime master @s
execute if entity @a[tag=turn] unless entity @a[scores={cardcount=0}] unless entity @e[tag=dummy,scores={deckshuffle2=1..}] run execute as @a[tag=stacking] at @s run playsound minecraft:block.note_block.chime master @s
function general:testforvictory