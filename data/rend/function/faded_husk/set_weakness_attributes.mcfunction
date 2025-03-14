#Set appropriate modifiers for xp level
execute if entity @s[scores={rend_xp_level=..7}] run return run function rend:faded_husk/7_levels
execute if entity @s[scores={rend_xp_level=..14}] run return run function rend:faded_husk/14_levels
execute if entity @s[scores={rend_xp_level=..20}] run return run function rend:faded_husk/20_levels
execute unless entity @s[scores={rend_xp_level=30..,rend_in_nether=0}] run return run function rend:faded_husk/30_levels
return 0