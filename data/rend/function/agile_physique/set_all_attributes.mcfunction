#Get current xp level and armour points
execute store result score @s rend.xp_level run data get entity @s XpLevel
execute store result score @s rend_armour_points run attribute @s generic.armor get 1
execute if items entity @s weapon.* minecraft:shield run scoreboard players operation @s rend_armour_points += @s rend_shield_armour_points

#Clear attribute modifiers
function rend:remove_all_modifiers

#Set faded husk power attributes
function rend:faded_husk/set_weakness_attributes

#Set appropriate agile_physique modifiers for xp level and armour points
execute if entity @s[scores={rend.xp_level=30..}] unless dimension minecraft:the_nether run function rend:agile_physique/attack_speed_bonus
execute if entity @s[scores={rend.xp_level=..5,rend_armour_points=1..}] run return run function rend:agile_physique/5_levels
execute if entity @s[scores={rend.xp_level=..10,rend_armour_points=1..}] run return run function rend:agile_physique/10_levels
execute if entity @s[scores={rend.xp_level=..15,rend_armour_points=1..}] run return run function rend:agile_physique/15_levels
execute if entity @s[scores={rend.xp_level=..20,rend_armour_points=1..}] run return run function rend:agile_physique/20_levels
execute if entity @s[scores={rend.xp_level=..25,rend_armour_points=1..}] run return run function rend:agile_physique/25_levels
execute if entity @s[scores={rend.xp_level=..30,rend_armour_points=1..}] run return run function rend:agile_physique/30_levels
return 0