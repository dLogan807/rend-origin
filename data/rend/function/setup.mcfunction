scoreboard objectives add staff_ability dummy
scoreboard objectives add fireball_check dummy
scoreboard objectives add xp_level dummy
scoreboard objectives add pos dummy
scoreboard objectives add rend_enemy dummy
scoreboard objectives add rend_current_enemy dummy
scoreboard objectives add rend_enemy_deathcheck deathCount
scoreboard objectives add rend_fallen_base_attack dummy

scoreboard objectives add rend_soul_purge_actor dummy

team add rend
team join rend @s

#power grant @a[team=!rend] rend:on_attacking_fallen

advancement grant @s only rend:root