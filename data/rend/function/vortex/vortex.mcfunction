summon minecraft:armor_stand ~ ~ ~ {Tags:["rend_vortex_inner"],Invulnerable:1b,NoGravity:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~ ~ {Tags:["rend_vortex_outer"],Invulnerable:1b,NoGravity:1b,Invisible:1b}

execute as @e[tag=rend_vortex_inner,limit=1] run power grant @s rend:vortex

execute as @e[tag=rend_vortex_inner,limit=1] run execute store result score #vortexX pos run data get entity @s Pos[0] 1
execute as @e[tag=rend_vortex_inner,limit=1] run execute store result score #vortexZ pos run data get entity @s Pos[2] 1