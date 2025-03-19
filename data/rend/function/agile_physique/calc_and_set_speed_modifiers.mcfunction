#Remove modifiers if in Nether or below 30 levels
execute if dimension minecraft:the_nether run return run function rend:agile_physique/remove_speed_modifiers
execute if entity @s[scores={rend.xp_level=..30}] run return run function rend:agile_physique/remove_speed_modifiers

#Do not calculate if xp has not changed
execute if score @s rend.xp_level = @s rend.agile_phys.speed_prev_xp_level run return 0
scoreboard players operation @s rend.agile_phys.speed_prev_xp_level = @s rend.xp_level

#Calculate speed modifier (y=1.2x-36)
scoreboard players operation @s rend.agile_phys.speed_calc = @s rend.agile_phys.speed_prev_xp_level 
scoreboard players operation @s rend.agile_phys.speed_calc *= @s rend.agile_phys.SPEED_GRADIENT
execute store result storage minecraft:rend agile_phys.speed_bonus_modifier double 0.001 run scoreboard players operation @s rend.agile_phys.speed_calc += @s rend.agile_phys.SPEED_Y_MOD

function rend:agile_physique/set_speed_bonus_modifiers with storage minecraft:rend agile_phys