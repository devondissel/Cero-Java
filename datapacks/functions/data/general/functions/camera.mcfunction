scoreboard players add @s cameraposition 1
execute if score @e[tag=dummy,limit=1] playercount matches 2 run scoreboard players set @s[scores={cameraposition=4..}] cameraposition 1
execute if score @e[tag=dummy,limit=1] playercount matches 3 run scoreboard players set @s[scores={cameraposition=5..}] cameraposition 1
execute if score @e[tag=dummy,limit=1] playercount matches 4 run scoreboard players set @s[scores={cameraposition=6..}] cameraposition 1


tp @s[tag=spectating,scores={cameraposition=1}] 38.5 30 -38.5 0 90
tp @s[tag=spectating,scores={cameraposition=2}] 38.5 29 -48.5 0 0
tp @s[tag=spectating,scores={cameraposition=3}] 38.5 29 -28.5 180 0
tp @s[tag=spectating,scores={cameraposition=4}] 48.5 29 -38.5 90 0
tp @s[tag=spectating,scores={cameraposition=5}] 28.5 29 -38.5 270 0