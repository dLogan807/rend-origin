# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
$data merge entity $(bone_right_forearm) { transformation: [1f,0f,0f,-0.3125f,0f,1f,0f,1.4375f,0f,0f,1f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_right_arm) { transformation: [1f,0f,0f,-0.3125f,0f,1f,0f,1.6875f,0f,0f,1f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_left_forearm) { transformation: [1f,0f,0f,0.3125f,0f,1f,0f,1.4375f,0f,0f,1f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_left_arm) { transformation: [1f,0f,0f,0.3125f,0f,1f,0f,1.6875f,0f,0f,1f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_head) { transformation: [1f,0f,0f,0f,0f,1f,0f,1.75f,0f,0f,1f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_torso) { transformation: [1f,0f,0f,0f,0f,1f,0f,1.0625f,0f,0f,1f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_upper_body) { transformation: [1f,0f,0f,0f,0f,1f,0f,1.0625f,0f,0f,1f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_right_lower_leg) { transformation: [1f,0f,0f,-0.125f,0f,1f,0f,0.6312500000000001f,0f,0f,1f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_right_leg) { transformation: [1f,0f,0f,-0.125f,0f,1f,0f,1.00625f,0f,0f,1f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_left_lower_leg) { transformation: [1f,0f,0f,0.125f,0f,1f,0f,0.6312500000000001f,0f,0f,1f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_left_leg) { transformation: [1f,0f,0f,0.125f,0f,1f,0f,1.00625f,0f,0f,1f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
execute on vehicle unless entity @s[tag=aj.transforms_only] at @s run function animated_java:rend_fallen_tether/animations/rise_1/zzz/frames/zzz/4