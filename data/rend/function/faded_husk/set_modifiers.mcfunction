#Remove modifiers
attribute @s generic.max_health modifier remove rend:max_health_reduction
attribute @s generic.attack_damage modifier remove rend:attack_damage_reduction

#Set modifiers if xp level <= 30
$execute if entity @s[scores={rend.faded_husk.prev_xp_level=..30}] run attribute @s generic.max_health modifier add rend:max_health_reduction $(health_modifier) add_multiplied_base
$execute if entity @s[scores={rend.faded_husk.prev_xp_level=..30}] run attribute @s generic.attack_damage modifier add rend:attack_damage_reduction $(attack_modifier) add_value