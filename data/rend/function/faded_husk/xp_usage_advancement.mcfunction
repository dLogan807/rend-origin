execute store result score @s rend_ending_xp_levels run xp query @s levels
execute store result score @s rend_used_xp_levels run scoreboard players operation @s rend_starting_xp_levels -= @s rend_ending_xp_levels 
execute if entity @s[scores={rend_used_xp_levels=3..}] run advancement grant @s only rend:faded_husk_invisibility