#scoreboard objectives add staff_ability dummy
scoreboard objectives add fireball_check dummy
scoreboard objectives add pos dummy
scoreboard objectives add rend_enemy dummy
scoreboard objectives add rend_current_enemy dummy
scoreboard objectives add rend_enemy_deathcheck deathCount
scoreboard objectives add rend_fallen_base_attack dummy

scoreboard objectives add rend_xp_level dummy

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

#Create storage location
data modify storage rend soul_purge set value {"amount":0,"num_levels":0}

team add rend
team join rend @s

#power grant @a[team=!rend] rend:on_attacking_fallen

advancement grant @s only rend:root