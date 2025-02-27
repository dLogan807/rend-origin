#Store and play animation, then increment
execute if score #rend_global rend_tether_animation_num > #rend_global rend_tether_last_animation run scoreboard players set #rend_global rend_tether_animation_num 0
execute store result storage minecraft:rend tether.animation_num int 1 run scoreboard players get #rend_global rend_tether_animation_num
scoreboard players add #rend_global rend_tether_animation_num 1
function rend:fallen/play_animation with storage minecraft:rend tether