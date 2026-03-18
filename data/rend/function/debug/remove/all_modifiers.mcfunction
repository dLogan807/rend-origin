attribute @s generic.movement_speed modifier remove rend:armour_movement_inhibition
attribute @s generic.attack_speed modifier remove rend:attack_speed_bonus
attribute @s generic.movement_speed modifier remove rend:move_speed_bonus
attribute @s generic.max_health modifier remove rend:max_health_reduction
attribute @s generic.attack_damage modifier remove rend:attack_damage_reduction

attribute @s generic.max_health modifier remove rend:agile_physique/attribute_modifiers_health_limit
attribute @s generic.attack_damage modifier remove rend:agile_physique/attribute_modifiers_axe_attack_damage_limit
attribute @s generic.attack_speed modifier remove rend:agile_physique/attribute_modifiers_axe_attack_speed_limit
tellraw @s [{"color": "yellow", "text": "[Rend Origin] "} ,{"color": "white", "text": "Removed all attributes"}]