# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.rend_fallen_tether.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'rend_fallen_tether', 'function_path': 'animated_java:rend_fallen_tether/animations/pause_all'}
tag @s remove aj.rend_fallen_tether.animation.rise_0.playing
tag @s remove aj.rend_fallen_tether.animation.rise_1.playing
tag @s remove aj.rend_fallen_tether.animation.rise_2.playing