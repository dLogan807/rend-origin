# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
$data merge entity $(bone_right_forearm) { transformation: [0.9559612615301966f,-0.10485876819730755f,-0.27412169776531436f,-0.3737995222523729f,0.17970165992912035f,0.9475755209578693f,0.2642119329253345f,1.0319093412050075f,0.23204607273624317f,-0.3018364968216499f,0.9246887851131972f,0.24246537505282573f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_right_arm) { transformation: [0.9900232536106746f,0.13734696233054483f,-0.03146059835263319f,-0.3394627816697367f,-0.12388582065265599f,0.9548470259025331f,0.270036035680991f,1.270621097680641f,0.06712868799069263f,-0.2634444325918832f,0.9623361004269709f,0.17660426690485492f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_left_forearm) { transformation: [0.9990482215818708f,-0.0393178977200373f,-0.01888792929301293f,0.2956586463246237f,0.0416005491112523f,0.9890594087387132f,0.1415304924709489f,1.0486184400617813f,0.013116602751606712f,-0.14218153503287168f,0.9897536894742817f,0.15514286637814245f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_left_arm) { transformation: [0.9990482215818708f,-0.04286515802276431f,-0.008076458492719115f,0.2849423568189326f,0.0416005491112523f,0.992012003253569f,-0.11908643799561411f,1.2966214408751735f,0.013116602751606712f,0.11863710898586666f,0.9928510417498347f,0.18480214362460912f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_head) { transformation: [0.9990482215818708f,-0.04346444508356877f,0.003673277511787722f,-0.02998623366794228f,0.0416005491112523f,0.924101661107763f,-0.37987565630284237f,1.3433898423264228f,0.013116602751606712f,0.3796669092131291f,0.9250302658728558f,0.19877352579120522f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_torso) { transformation: [0.9990482215818708f,-0.04361633988064331f,-0.0005156059710423573f,0f,0.0416005491112523f,0.956297168776249f,-0.28942204356989226f,0.6859355387927516f,0.013116602751606712f,0.28912512842357124f,0.9572014494589475f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_upper_body) { transformation: [0.9990482215818708f,-0.04361633988064331f,-0.0005156059710423573f,0f,0.0416005491112523f,0.956297168776249f,-0.28942204356989226f,0.6859355387927516f,0.013116602751606712f,0.28912512842357124f,0.9572014494589475f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_right_lower_leg) { transformation: [1f,0f,0f,-0.125f,0f,0.9962188370732576f,0.0868793914596892f,0.3638593034447297f,0f,-0.0868793914596892f,0.9962188370732576f,0.2645021977237582f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_right_leg) { transformation: [1f,0f,0f,-0.125f,0f,0.7088699609280583f,0.7053391939300219f,0.6296855387927516f,0f,-0.7053391939300219f,0.7088699609280583f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_left_lower_leg) { transformation: [1f,0f,0f,0.125f,0f,0.611069673147904f,-0.7915768153242702f,0.2546855387927516f,0f,0.7915768153242702f,0.611069673147904f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_left_leg) { transformation: [1f,0f,0f,0.125f,0f,1f,0f,0.6296855387927516f,0f,0f,1f,0f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
execute on vehicle unless entity @s[tag=aj.transforms_only] at @s run function animated_java:rend_fallen_tether/animations/rise_1/zzz/frames/zzz/7