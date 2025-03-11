execute store result score @s rend.soul_purge.current_height run data get entity @s Pos[1] 1
scoreboard players operation @s rend.soul_purge.current_height += @s rend.soul_purge.height_mod
execute store result storage rend soul_purge.max_height int 1 run scoreboard players get @s rend.soul_purge.current_height