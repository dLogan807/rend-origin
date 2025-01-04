#Get current xp level
execute store result score @s rend_xp_level run data get entity @s XpLevel

#Clear attribute modifiers
execute if entity @s[nbt={attributes:[{modifiers:[{id:"rend:max_health_reduction"}]}]}] run attribute @s generic.max_health modifier remove rend:max_health_reduction
execute if entity @s[nbt={attributes:[{modifiers:[{id:"rend:attack_damage_reduction"}]}]}] run attribute @s generic.attack_damage modifier remove rend:attack_damage_reduction

#Set appropriate modifiers for xp level
execute if entity @s[scores={rend_xp_level=..5}] run return run function rend:faded_husk/5_levels
execute if entity @s[scores={rend_xp_level=..10}] run return run function rend:faded_husk/10_levels
execute if entity @s[scores={rend_xp_level=..15}] run return run function rend:faded_husk/15_levels
execute unless entity @s[scores={rend_xp_level=20..,rend_in_nether=0}] run return run function rend:faded_husk/20_levels
return 0