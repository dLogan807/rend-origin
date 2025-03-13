#Store player data for apparating Fallen to their location

#Store team
execute store result storage rend fallen.counter int 1 run scoreboard players get @s rend_team

#Store max height of tp
execute store result score @s rend.fallen.current_height run data get entity @s Pos[1] 1
scoreboard players operation @s rend.fallen.current_height += @s rend.fallen.height_mod
execute store result storage rend fallen.max_height int 1 run scoreboard players get @s rend.fallen.current_height

#Store x and z
execute store result storage rend fallen.x_centre int 1 run data get entity @s Pos[0]
execute store result storage rend fallen.z_centre int 1 run data get entity @s Pos[2]