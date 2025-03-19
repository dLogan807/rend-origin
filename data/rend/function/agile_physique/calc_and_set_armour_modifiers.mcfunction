#Get current armour points
execute store result score @s rend.agile_phys.armour_points run attribute @s generic.armor get 1
execute if items entity @s weapon.* minecraft:shield run scoreboard players operation @s rend.agile_phys.armour_points += @s rend.agile_phys.SHIELD_POINTS

#Return if xp level and armour points are unchanged
execute if score @s rend.xp_level = @s rend.agile_phys.armour_prev_xp_level if score @s rend.agile_phys.armour_points = @s rend.agile_phys.prev_armour_points run return 0
scoreboard players operation @s rend.agile_phys.armour_prev_xp_level = @s rend.xp_level
scoreboard players operation @s rend.agile_phys.prev_armour_points = @s rend.agile_phys.armour_points

#Remove modifier and return if the modifier shouldn't apply
execute if entity @s[scores={rend.agile_phys.armour_points=0}] run return run attribute @s generic.movement_speed modifier remove rend:armour_movement_inhibition
execute if entity @s[scores={rend.xp_level=30..}] run return run attribute @s generic.movement_speed modifier remove rend:armour_movement_inhibition

#Set scaled momement detriment for xp level and armour points (y=-(100/22+c)x+c), c=xp level, x=armour points
scoreboard players operation @s rend.agile_phys.armour_numerator = @s rend.agile_phys.NEG_ONE_HUNDRED
scoreboard players operation @s rend.agile_phys.armour_denominator = @s rend.agile_phys.TOTAL_ARMOUR_POINTS
scoreboard players operation @s rend.agile_phys.armour_denominator += @s rend.xp_level
scoreboard players operation @s rend.agile_phys.armour_numerator /= @s rend.agile_phys.armour_denominator
scoreboard players operation @s rend.agile_phys.armour_numerator *= @s rend.agile_phys.armour_points
scoreboard players operation @s rend.agile_phys.armour_numerator += @s rend.xp_level

#Return if move speed reduction is -10% or above (if positive, should not apply)
execute if entity @s[scores={rend.agile_phys.armour_numerator=-10..}] run return run attribute @s generic.movement_speed modifier remove rend:armour_movement_inhibition

#Store and set modifier
execute store result storage minecraft:rend agile_phys.armour_speed_modifier double 0.01 run scoreboard players get @s rend.agile_phys.armour_numerator
function rend:agile_physique/set_armour_speed_modifier with storage minecraft:rend agile_phys