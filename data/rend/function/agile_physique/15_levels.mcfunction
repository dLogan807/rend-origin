execute if entity @s[scores={rend_armour_points=..4}] run return 1 
execute if entity @s[scores={rend_armour_points=..7,rend_armour_points=5..}] run return run attribute @s generic.movement_speed modifier add rend:armour_movement_inhibition -0.1 add_multiplied_total
execute if entity @s[scores={rend_armour_points=..10}] run return run attribute @s generic.movement_speed modifier add rend:armour_movement_inhibition -0.2 add_multiplied_total
execute if entity @s[scores={rend_armour_points=..15}] run return run attribute @s generic.movement_speed modifier add rend:armour_movement_inhibition -0.5 add_multiplied_total
execute if entity @s[scores={rend_armour_points=..22}] run return run attribute @s generic.movement_speed modifier add rend:armour_movement_inhibition -0.9 add_multiplied_total