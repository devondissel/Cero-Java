execute as @s[tag=normiecard] run title @a[tag=stacking] actionbar ["",{"text":"You can't play this card","color":"dark_red"}]
execute as @s[tag=reverse] run title @a[tag=stacking] actionbar ["",{"text":"You can't play this card","color":"dark_red"}]
execute as @s[tag=skip] run title @a[tag=stacking] actionbar ["",{"text":"You can't play this card","color":"dark_red"}]
execute as @s[tag=wild] run title @a[tag=stacking] actionbar ["",{"text":"You can't play this card","color":"dark_red"}]






execute as @s[tag=+2] run function placecard:card_draw_stack2
execute as @s[tag=wild+4] run function placecard:card_wild4_stack