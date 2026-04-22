scoreboard players operation @s rend.air_burst.explosion_pitch = @s rend.air_burst.modifier
execute store result storage minecraft:rend air_burst.explosion_pitch double 0.1 run scoreboard players operation @s rend.air_burst.explosion_pitch < #rend_global rend.air_burst.MAX_SOUND_PITCH
function rend:air_burst/play_dynamic_explosion_sound with storage minecraft:rend air_burst