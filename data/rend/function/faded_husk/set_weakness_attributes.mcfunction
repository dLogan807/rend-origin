#Set appropriate modifiers for xp level
execute if entity @s[scores={rend_xp_level=..5}] run return run function rend:faded_husk/5_levels
execute if entity @s[scores={rend_xp_level=..10}] run return run function rend:faded_husk/10_levels
execute if entity @s[scores={rend_xp_level=..15}] run return run function rend:faded_husk/15_levels
execute unless entity @s[scores={rend_xp_level=20..,rend_in_nether=0}] run return run function rend:faded_husk/20_levels
return 0