#Remove modifiers
function rend:agile_physique/remove_speed_modifiers

#Set modifiers
$attribute @s generic.attack_speed modifier add rend:attack_speed_bonus $(speed_modifier) add_multiplied_base
$attribute @s generic.movement_speed modifier add rend:move_speed_bonus $(speed_modifier) add_multiplied_base