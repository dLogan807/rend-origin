summon minecraft:armor_stand ~ ~ ~ {Tags:["rend_vortex_inner"],Invulnerable:1b,NoGravity:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~ ~ {Tags:["rend_vortex_outer"],Invulnerable:1b,NoGravity:1b,Invisible:1b}

execute as @e[tag=rend_vortex_inner,distance=..1,limit=1] run power grant @s rend:vortex