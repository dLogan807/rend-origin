#scoreboard objectives add staff_ability dummy
scoreboard objectives add fireball_check dummy
scoreboard objectives add xp_level dummy
scoreboard objectives add pos dummy
scoreboard objectives add rend_enemy dummy
scoreboard objectives add rend_current_enemy dummy
scoreboard objectives add rend_enemy_deathcheck deathCount
scoreboard objectives add rend_fallen_base_attack dummy
scoreboard objectives add rend_level level

#Soul purge scores
scoreboard objectives add rend_soul_purge_actor dummy
scoreboard objectives add rend_soul_purge_damage dummy
scoreboard objectives add rend_damage_mod dummy
scoreboard players set @s rend_damage_mod 3
scoreboard objectives add rend_damage_max dummy
scoreboard players set @s rend_damage_max 18

team add rend
team join rend @s

#power grant @a[team=!rend] rend:on_attacking_fallen

advancement grant @s only rend:root