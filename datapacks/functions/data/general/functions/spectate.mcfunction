scoreboard players add @s spectating 1
scoreboard players set @s[scores={spectating=3..}] spectating 1

tag @s[scores={spectating=1}] add spectating
tag @s[scores={spectating=2}] remove spectating





tp @s[tag=spectating] 38.5 30 -38.5 0 90
scoreboard players set @s[tag=spectating] cameraposition 1

tp @s[tag=!spectating] 91 19 -76 -90 0