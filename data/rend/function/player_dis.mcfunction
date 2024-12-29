summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b,Tags:["player_position"]}
resource change @s rend:mana_capacity -15
particle minecraft:flash ~ ~.5 ~ .1 .1 .1 0.30 0 normal @a
playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~