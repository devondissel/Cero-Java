kill @e[tag=armorstand4draw]
scoreboard players operation @a[tag=stacking] hastodraw = @e[tag=dummy] hastodraw2
tellraw @a ["",{"selector":"@a[tag=stacking,limit=1]","color":"aqua"},{"text":" is drawing ","color":"aqua"},{"score":{"name":"@e[tag=dummy]","objective":"hastodraw2"},"color":"aqua"},{"text":" cards.","color":"aqua"}]

###remove turntag to wait
tag @a[tag=stacking] add faketurn
tag @a[tag=stacking] remove stacking


###draw card loop until done
scoreboard players set @e[tag=dummy] hastodraw2 0
schedule function shuffle:draw 15t