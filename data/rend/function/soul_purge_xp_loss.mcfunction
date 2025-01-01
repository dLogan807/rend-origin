#Get current level, scaled by 100 for better precision with scoreboards
execute store result score @s rend_xp_level run data get entity @s XpLevel 100

#Find 80% of current xp level
scoreboard players set @s rend_xp_percent_reduction 8000
scoreboard players operation @s rend_xp_percent_reduction *= @s rend_xp_level
scoreboard players operation @s rend_xp_percent_reduction /= @s rend_xp_subtract_denominator

#Store result of subtracting the % loss of xp levels (divided by 100)
execute store result storage rend soul_purge.num_levels int 0.01 run scoreboard players operation @s rend_xp_level -= @s rend_xp_percent_reduction 

#Set new
function rend:set_xp_levels with storage minecraft:rend soul_purge