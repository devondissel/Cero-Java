scoreboard players reset @a cardcount

scoreboard players set @a[tag=player1] cardcount 0
scoreboard players set @a[tag=player2] cardcount 0
scoreboard players set @a[tag=player3] cardcount 0
scoreboard players set @a[tag=player4] cardcount 0
execute as @e[tag=deck1] run scoreboard players add @a[tag=player1] cardcount 1
execute as @e[tag=deck2] run scoreboard players add @a[tag=player2] cardcount 1
execute as @e[tag=deck3] run scoreboard players add @a[tag=player3] cardcount 1
execute as @e[tag=deck4] run scoreboard players add @a[tag=player4] cardcount 1