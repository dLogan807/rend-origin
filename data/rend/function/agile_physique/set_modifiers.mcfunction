#Get current armour points
execute store result score @s rend.agile_phys.armour_points run attribute @s generic.armor get 1
execute if items entity @s weapon.* minecraft:shield run scoreboard players operation @s rend.agile_phys.armour_points += @s rend.agile_phys.shield_points

#Return xp level and armour points are unchanged
execute if score @s rend.xp_level = @s rend.agile_phys.prev_xp_level if score @s rend.agile_phys.armour_points = @s rend.agile_phys.prev_armour_points run return 0
scoreboard players operation @s rend.agile_phys.prev_xp_level = @s rend.xp_level
scoreboard players operation @s rend.agile_phys.prev_armour_points = @s rend.agile_phys.armour_points

#Set attack speed bonus modifier
execute if entity @s[nbt={attributes:[{modifiers:[{id:"rend:attack_speed_bonus"}]}]}] run attribute @s generic.attack_speed modifier remove rend:attack_speed_bonus
execute if entity @s[scores={rend.xp_level=30..}] unless dimension minecraft:the_nether run function rend:agile_physique/attack_speed_bonus

#Set appropriate agile_physique modifiers for xp level and armour points
execute if entity @s[nbt={attributes:[{modifiers:[{id:"rend:armour_movement_inhibition"}]}]}] run attribute @s generic.movement_speed modifier remove rend:armour_movement_inhibition
execute if entity @s[scores={rend.xp_level=..5,rend.agile_phys.armour_points=1..}] run return run function rend:agile_physique/5_levels
execute if entity @s[scores={rend.xp_level=..10,rend.agile_phys.armour_points=1..}] run return run function rend:agile_physique/10_levels
execute if entity @s[scores={rend.xp_level=..15,rend.agile_phys.armour_points=1..}] run return run function rend:agile_physique/15_levels
execute if entity @s[scores={rend.xp_level=..20,rend.agile_phys.armour_points=1..}] run return run function rend:agile_physique/20_levels
execute if entity @s[scores={rend.xp_level=..25,rend.agile_phys.armour_points=1..}] run return run function rend:agile_physique/25_levels
execute if entity @s[scores={rend.xp_level=..30,rend.agile_phys.armour_points=1..}] run return run function rend:agile_physique/30_levels