#Remove current modifier
execute if entity @s[nbt={attributes:[{modifiers:[{id:"rend:armour_movement_inhibition"}]}]}] run attribute @s generic.movement_speed modifier remove rend:armour_movement_inhibition

#Set modifier
$attribute @s generic.movement_speed modifier add rend:armour_movement_inhibition $(armour_speed_modifier) add_multiplied_base