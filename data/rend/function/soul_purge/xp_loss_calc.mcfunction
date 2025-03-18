#Get current level, scaled by 100 for better precision with scoreboards
execute store result score @s rend.soul_purge.xp_level run data get entity @s XpLevel 100

#Find 85% of current xp level
scoreboard players set @s rend_xp_percent_reduction 8500
scoreboard players operation @s rend_xp_percent_reduction *= @s rend.soul_purge.xp_level
scoreboard players operation @s rend_xp_percent_reduction /= @s rend_xp_subtract_denominator

#Store result of subtracting the % loss of xp levels (divided by 100)
$execute store result storage $(name)$(counter) soul_purge.num_levels int 0.01 run scoreboard players operation @s rend.soul_purge.xp_level -= @s rend_xp_percent_reduction 

#Set new xp value
$function rend:soul_purge/set_xp_levels with storage $(name)$(counter) soul_purge