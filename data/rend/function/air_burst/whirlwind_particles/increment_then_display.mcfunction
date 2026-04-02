execute if score @s rend.air_burst.particle_rotation matches 361.. run scoreboard players set @s rend.air_burst.particle_rotation 0
$execute store result storage minecraft:$(name)$(counter) air_burst.particle_rotation int 1.0 run scoreboard players add @s rend.air_burst.particle_rotation 10

execute if score @s rend.air_burst.particle_y matches ..-40 run scoreboard players set @s rend.air_burst.particle_y_is_increasing 1
execute if score @s rend.air_burst.particle_y matches 40.. run scoreboard players set @s rend.air_burst.particle_y_is_increasing 0
$execute if score @s rend.air_burst.particle_y matches 30.. if score @s rend.air_burst.particle_y_is_increasing matches 1 run execute store result storage minecraft:$(name)$(counter) air_burst.particle_y double 0.01 run scoreboard players add @s rend.air_burst.particle_y 5
$execute if score @s rend.air_burst.particle_y matches ..29 if score @s rend.air_burst.particle_y_is_increasing matches 1 run execute store result storage minecraft:$(name)$(counter) air_burst.particle_y double 0.01 run scoreboard players add @s rend.air_burst.particle_y 10

$execute if score @s rend.air_burst.particle_y matches ..-30 if score @s rend.air_burst.particle_y_is_increasing matches 0 run execute store result storage minecraft:$(name)$(counter) air_burst.particle_y double 0.01 run scoreboard players remove @s rend.air_burst.particle_y 5
$execute if score @s rend.air_burst.particle_y matches -29.. if score @s rend.air_burst.particle_y_is_increasing matches 0 run execute store result storage minecraft:$(name)$(counter) air_burst.particle_y double 0.01 run scoreboard players remove @s rend.air_burst.particle_y 10

$execute rotated 0 0 run function rend:air_burst/whirlwind_particles/display with storage minecraft:$(name)$(counter) air_burst
$execute rotated 90 0 run function rend:air_burst/whirlwind_particles/display with storage minecraft:$(name)$(counter) air_burst
$execute rotated 180 0 run function rend:air_burst/whirlwind_particles/display with storage minecraft:$(name)$(counter) air_burst
$execute rotated 270 0 run function rend:air_burst/whirlwind_particles/display with storage minecraft:$(name)$(counter) air_burst