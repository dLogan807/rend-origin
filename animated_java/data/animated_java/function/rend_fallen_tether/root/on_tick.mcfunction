# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.rend_fallen_tether.root] run return 0
execute unless score @s aj.is_rig_loaded matches 1 run function #animated_java:global/root/on_load
function #animated_java:rend_fallen_tether/as_root/pre_tick
execute if entity @s[tag=aj.rend_fallen_tether.animation.rise_test.playing] run function animated_java:rend_fallen_tether/animations/rise_test/zzz/on_tick
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function #animated_java:rend_fallen_tether/as_root/post_tick