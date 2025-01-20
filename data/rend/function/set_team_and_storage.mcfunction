#Create and join team
$team add $(name)$(counter)
$team join $(name)$(counter)

#Create storage locations
$data modify storage $(name)$(counter) soul_purge set value {"amount":0,"num_levels":0}