#scoreboard objectives add staff_ability dummy
scoreboard objectives add rend_vortex_pos_x dummy
scoreboard objectives add rend_vortex_pos_z dummy
scoreboard objectives add rend_enemy dummy
scoreboard objectives add rend_current_enemy dummy
scoreboard objectives add rend_enemy_deathcheck deathCount
scoreboard objectives add rend_fallen_base_attack dummy

scoreboard objectives add rend_xp_level dummy
scoreboard objectives add rend_xp_points dummy
scoreboard objectives add rend_in_nether dummy

#Agile physique
scoreboard objectives add rend_armour_points dummy
scoreboard objectives add rend_shield_armour_points dummy
scoreboard players set @s rend_shield_armour_points 2

#Soul purge damage scores
scoreboard objectives add rend_soul_purge_actor dummy
scoreboard objectives add rend_soul_purge_damage dummy
scoreboard objectives add rend_damage_mod dummy
scoreboard players set @s rend_damage_mod 3
scoreboard objectives add rend_damage_max dummy
scoreboard players set @s rend_damage_max 18

#Soul purge xp % reduction scores
scoreboard objectives add rend_xp_percent_reduction dummy
scoreboard objectives add rend_xp_subtract_denominator dummy
scoreboard players set @s rend_xp_subtract_denominator 10000

#Faded Husk advancement
scoreboard objectives add rend_starting_xp_levels dummy
scoreboard objectives add rend_ending_xp_levels dummy
scoreboard objectives add rend_used_xp_levels dummy

#Create storage location
data modify storage rend soul_purge set value {"amount":0,"num_levels":0}

team add rend
team join rend @s

#power grant @a[team=!rend] rend:on_attacking_fallen

advancement grant @s only rend:root