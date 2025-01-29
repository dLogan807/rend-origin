#Create and join team
$team add $(name)$(counter)
$team join $(name)$(counter)

#Create storage locations
$data modify storage $(name)$(counter) soul_purge set value {"amount":0,"num_levels":0}

#Create this team's enemy scoreboard objective
$scoreboard objectives add rend$(counter)_enemy dummy