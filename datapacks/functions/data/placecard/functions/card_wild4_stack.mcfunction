#teleport card to center

scoreboard objectives remove color
scoreboard objectives add color dummy

kill @e[tag=armorstand4draw]

scoreboard players set @e[tag=dummy] compatible 1

function placecard:card_wild4