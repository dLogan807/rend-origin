# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.rend_fallen_tether.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'rend_fallen_tether', 'function_path': 'animated_java:rend_fallen_tether/apply_default_pose'}
execute on passengers if entity @s[tag=aj.rend_fallen_tether.bone.right_forearm] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0.3125f,0f,1f,0f,0.37084583768202195f,-1.2246467991473532e-16f,0f,-1f,-0.06797589313045033f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.rend_fallen_tether.bone.right_arm] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0.3125f,0f,1f,0f,0.620845837682022f,-1.2246467991473532e-16f,0f,-1f,-0.06797589313045033f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.rend_fallen_tether.bone.left_forearm] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.3125f,0f,1f,0f,0.37084583768202195f,-1.2246467991473532e-16f,0f,-1f,-0.06797589313045044f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.rend_fallen_tether.bone.left_arm] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.3125f,0f,1f,0f,0.620845837682022f,-1.2246467991473532e-16f,0f,-1f,-0.06797589313045044f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.rend_fallen_tether.bone.head] run data merge entity @s {transformation: [-1f,1.2060416625018979e-16f,2.1265768495757744e-17f,1.298413184088823e-17f,0f,0.17364817766693053f,-0.9848077530122081f,0.6704304214502241f,-1.2246467991473532e-16f,-0.9848077530122081f,-0.17364817766693053f,-0.10602348244349546f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.rend_fallen_tether.bone.torso] run data merge entity @s {transformation: [-1f,7.455177354798984e-17f,9.71577628780522e-17f,-3.827021247335479e-17f,0f,0.7933533402912352f,-0.6087614290087207f,0.125f,-1.2246467991473532e-16f,-0.6087614290087207f,-0.7933533402912352f,0.3125f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.rend_fallen_tether.bone.upper_body] run data merge entity @s {transformation: [-1f,7.455177354798984e-17f,9.71577628780522e-17f,-3.827021247335479e-17f,0f,0.7933533402912352f,-0.6087614290087207f,0.125f,-1.2246467991473532e-16f,-0.6087614290087207f,-0.7933533402912352f,0.3125f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.rend_fallen_tether.bone.right_lower_leg] run data merge entity @s {transformation: [-1f,-1.2246467991473532e-16f,2.719262146893782e-32f,0.125f,0f,2.220446049250313e-16f,1f,0.06875f,-1.2246467991473532e-16f,1f,-2.220446049250313e-16f,-0.06250000000000011f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.rend_fallen_tether.bone.right_leg] run data merge entity @s {transformation: [-1f,-1.2246467991473532e-16f,2.719262146893782e-32f,0.12499999999999996f,0f,2.220446049250313e-16f,1f,0.06875000000000009f,-1.2246467991473532e-16f,1f,-2.220446049250313e-16f,0.3125f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.rend_fallen_tether.bone.left_lower_leg] run data merge entity @s {transformation: [-1f,-1.2246467991473532e-16f,2.719262146893782e-32f,-0.12499999999999999f,0f,2.220446049250313e-16f,1f,0.06875f,-1.2246467991473532e-16f,1f,-2.220446049250313e-16f,-0.06250000000000011f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.rend_fallen_tether.bone.left_leg] run data merge entity @s {transformation: [-1f,-1.2246467991473532e-16f,2.719262146893782e-32f,-0.12500000000000003f,0f,2.220446049250313e-16f,1f,0.06875000000000009f,-1.2246467991473532e-16f,1f,-2.220446049250313e-16f,0.3125f,0f,0f,0f,1f], start_interpolation: 0}