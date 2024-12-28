#Create storage location
data modify storage rend soul_purge set value {"amount":0}

#Get current level
scoreboard players operation @s rend_soul_purge_damage = @s rend_level
#Divide current level by 3 and store result in storage
scoreboard players operation @s rend_soul_purge_damage /= @s rend_damage_mod
#Cap damage
execute store result storage rend soul_purge.amount int 1 run scoreboard players operation @s rend_soul_purge_damage < @s rend_damage_max