#Get current level
execute store result score @s rend_soul_purge_damage run data get entity @s XpLevel
#Divide current level by 3 and store result in storage
scoreboard players operation @s rend_soul_purge_damage /= @s rend_damage_mod
#Cap damage
$execute store result storage $(name)$(counter) soul_purge.amount int 1 run scoreboard players operation @s rend_soul_purge_damage < @s rend_damage_max