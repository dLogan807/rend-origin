#Execute only if xp level has changed since last executed
execute if score @s rend.xp_level = @s rend.faded_husk.prev_xp_level run return 0
execute if dimension minecraft:the_nether if score @s rend.xp_level > @s rend.xp_level.NETHER_MAX if score @s rend.xp_level.NETHER_MAX = @s rend.faded_husk.prev_xp_level run return 0
scoreboard players operation @s rend.faded_husk.prev_xp_level = @s rend.xp_level
execute if dimension minecraft:the_nether run scoreboard players operation @s rend.faded_husk.prev_xp_level < @s rend.xp_level.NETHER_MAX

#Calculate max health modifier (y=2x-60)
scoreboard players operation @s rend.faded_husk.calc = @s rend.faded_husk.prev_xp_level 
scoreboard players operation @s rend.faded_husk.calc *= @s rend.faded_husk.HEALTH_GRADIENT
execute store result storage minecraft:rend faded_husk.health_modifier double 0.01 run scoreboard players operation @s rend.faded_husk.calc += @s rend.faded_husk.HEALTH_Y_MOD

#Calculate attack damage modifier (y=5/30x-5)
scoreboard players operation @s rend.faded_husk.calc = @s rend.faded_husk.prev_xp_level 
scoreboard players operation @s rend.faded_husk.calc *= @s rend.faded_husk.ATTACK_GRADIENT
execute store result storage minecraft:rend faded_husk.attack_modifier double 0.01 run scoreboard players operation @s rend.faded_husk.calc += @s rend.faded_husk.ATTACK_Y_MOD

#Set modifiers
function rend:faded_husk/set_modifiers with storage minecraft:rend faded_husk