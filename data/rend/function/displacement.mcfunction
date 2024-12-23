execute at @e[tag=player_position] run tp @e[tag=!player_position,distance=..1,sort=nearest,limit=1] @s
tp @s @e[tag=player_position,sort=nearest,limit=1]
particle minecraft:flash ~ ~.5 ~ .1 .1 .1 0.30 0 normal @a
playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~
kill @e[tag=player_position]