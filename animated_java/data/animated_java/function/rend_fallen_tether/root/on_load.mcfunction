# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.rend_fallen_tether.root] run return 0
execute on passengers if entity @s[tag=aj.rend_fallen_tether.data] unless data entity @s {data:{rigHash: '8feabb4d428987b07b7b557ad8d5ffeec7843182c6deb3a88e4ddae4b264270a'}} on vehicle run function animated_java:rend_fallen_tether/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1