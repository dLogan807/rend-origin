summon bat ~ ~4 ~ {Silent:1b,NoAI:1b,Invulnerable:1b,NoGravity:1b,active_effects:[{id:invisibility,duration:400,amplifier:1,show_particles:0b}],Tags:["vortex_position"],}
execute as @e[tag=vortex_position] run power grant @s rend:vortex
execute as @e[tag=vortex_position] run execute store result score #vortexX pos run data get entity @s Pos[0] 1
execute as @e[tag=vortex_position] run execute store result score #vortexZ pos run data get entity @s Pos[2] 1

summon minecraft:armor_stand ~ ~ ~ {Tags:["rend_vortex_1"],Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~ ~ {Tags:["rend_vortex_2"],Invulnerable:1b,Invisible:1b}