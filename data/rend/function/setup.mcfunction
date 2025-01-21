advancement grant @s only rend:root

#scoreboard objectives add staff_ability dummy
scoreboard objectives add rend_vortex_pos_x dummy
scoreboard objectives add rend_vortex_pos_z dummy
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

#Dynamic team creation:

#Increment global rend team counter
scoreboard objectives add rend_team dummy
scoreboard players add #rend_global_team_counter rend_team 1
scoreboard players operation @s rend_team = #rend_global_team_counter rend_team

#Create team storage location
data modify storage rend team set value {"name": "rend","counter": 0}
#Store current team number
execute store result storage minecraft:rend team.counter int 1 run scoreboard players get @s rend_team
#Assign to new team and create storage locations for the namespace
function rend:set_team_and_storage with storage minecraft:rend team