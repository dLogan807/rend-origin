execute as @e[tag=rend_vortex_inner] at @s run function rend:vortex/inner_circle
execute as @e[tag=rend_vortex_outer] at @s run function rend:vortex/outer_circle

execute as @e[tag=rend_vortex_inner] at @s run tp @s ~ ~ ~ ~-.9 ~
execute as @e[tag=rend_vortex_outer] at @s run tp @s ~ ~ ~ ~.7 ~