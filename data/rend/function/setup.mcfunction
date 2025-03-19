#Grant player advancement tree
advancement grant @s only rend:root

#Track player xp
scoreboard objectives add rend.xp_level level
scoreboard objectives add rend.xp_points xp

#Faded Husk
scoreboard objectives add rend.xp_level.NETHER_MAX dummy
scoreboard players set @s rend.xp_level.NETHER_MAX 24
# - Setup max health constants (y=2x-60)
scoreboard objectives add rend.faded_husk.HEALTH_GRADIENT dummy
scoreboard players set @s rend.faded_husk.HEALTH_GRADIENT 2
scoreboard objectives add rend.faded_husk.HEALTH_Y_MOD dummy
scoreboard players set @s rend.faded_husk.HEALTH_Y_MOD -60

# - Setup attack damage constants (y=5/30x-5), scaled by 100
scoreboard objectives add rend.faded_husk.ATTACK_GRADIENT dummy
scoreboard players set @s rend.faded_husk.ATTACK_GRADIENT 17
scoreboard objectives add rend.faded_husk.ATTACK_Y_MOD dummy
scoreboard players set @s rend.faded_husk.ATTACK_Y_MOD -500

scoreboard objectives add rend.faded_husk.prev_xp_level dummy
scoreboard players set @s rend.faded_husk.prev_xp_level -1
scoreboard objectives add rend.faded_husk.calc dummy
data modify storage minecraft:rend faded_husk set value {"health_modifier": 0.0,"attack_modifier": 0.0}

# - Advancement
scoreboard objectives add rend_starting_xp_levels dummy
scoreboard objectives add rend_ending_xp_levels dummy
scoreboard objectives add rend_used_xp_levels dummy

#Agile physique
# - Armour speed detriment variables and constants (y=-(100/22+c)x+c), c=xp level, x=armour points
scoreboard objectives add rend.agile_phys.armour_points dummy
scoreboard objectives add rend.agile_phys.prev_armour_points dummy
scoreboard players set @s rend.agile_phys.prev_armour_points -1
scoreboard objectives add rend.agile_phys.SHIELD_POINTS dummy
scoreboard players set @s rend.agile_phys.SHIELD_POINTS 2
scoreboard objectives add rend.agile_phys.armour_prev_xp_level dummy
scoreboard players set @s rend.agile_phys.armour_prev_xp_level -1

scoreboard objectives add rend.agile_phys.ONE_HUNDRED dummy
scoreboard players set @s rend.agile_phys.ONE_HUNDRED -100
scoreboard objectives add rend.agile_phys.TOTAL_ARMOUR_POINTS dummy
scoreboard players set @s rend.agile_phys.TOTAL_ARMOUR_POINTS 22
scoreboard objectives add rend.agile_phys.armour_numerator dummy
scoreboard objectives add rend.agile_phys.armour_denominator dummy


# - Setup speed variables and constants (y=1.2x-36)
scoreboard objectives add rend.agile_phys.SPEED_GRADIENT dummy
scoreboard players set @s rend.agile_phys.SPEED_GRADIENT 12
scoreboard objectives add rend.agile_phys.SPEED_Y_MOD dummy
scoreboard players set @s rend.agile_phys.SPEED_Y_MOD -360
scoreboard objectives add rend.agile_phys.speed_prev_xp_level dummy
scoreboard players set @s rend.agile_phys.speed_prev_xp_level -1
scoreboard objectives add rend.agile_phys.speed_calc dummy
data modify storage minecraft:rend agile_phys set value {"speed_bonus_modifier": 0.0, "armour_speed_modifier": 0.0}

#Soul Purge 
# - damage scores
scoreboard objectives add rend_soul_purge_actor dummy
scoreboard objectives add rend_soul_purge_damage dummy
scoreboard objectives add rend_damage_mod dummy
scoreboard players set @s rend_damage_mod 2
scoreboard objectives add rend_damage_max dummy
scoreboard players set @s rend_damage_max 30

# - xp % reduction scores
scoreboard objectives add rend.soul_purge.xp_level dummy
scoreboard objectives add rend_xp_percent_reduction dummy
scoreboard objectives add rend_xp_subtract_denominator dummy
scoreboard players set @s rend_xp_subtract_denominator 10000

# - max tp height
data modify storage minecraft:rend soul_purge set value {"max_height": 0}
scoreboard objectives add rend.soul_purge.current_height dummy
scoreboard objectives add rend.soul_purge.height_mod dummy
scoreboard players set @s rend.soul_purge.height_mod 10

#Fallen
scoreboard objectives add rend_tether_summon_y dummy
data modify storage minecraft:rend tether set value {"y_store": 0.0, "y_use": 0.0, "animation_num": 0}
data modify storage minecraft:rend fallen set value {"name": "rend", "counter": 0, "x_centre": 0.0, "z_centre": 0.0, "max_height": 0.0}
scoreboard objectives add rend_tether_animation_num dummy
scoreboard objectives add rend_tether_last_animation dummy
scoreboard players set #rend_global rend_tether_last_animation 2
scoreboard players set #rend_global rend_tether_animation_num 0

scoreboard objectives add rend.fallen.current_height dummy
scoreboard objectives add rend.fallen.height_mod dummy
scoreboard players set @s rend.fallen.height_mod 6

#Explosion
scoreboard objectives add rend_explosion_circle_num dummy
data modify storage minecraft:rend explosion set value {"counter": 0}

#Cursed Prison UUID storage (for setting zombified piglin's AngryAt)
data modify storage minecraft:rend uuid_store set value {"UUID":[I; 0, 0, 0, 0]}

#Dynamic team creation:

#Increment global rend team counter
scoreboard objectives add rend_team dummy
scoreboard players add #rend_global rend_team 1
scoreboard players operation @s rend_team = #rend_global rend_team

#Create team storage location
data modify storage minecraft:rend team set value {"name": "rend", "counter": 0}
#Store current team number
execute store result storage minecraft:rend team.counter int 1 run scoreboard players get @s rend_team
#Assign to new team and create storage locations for the namespace
function rend:set_team_and_storage with storage minecraft:rend team