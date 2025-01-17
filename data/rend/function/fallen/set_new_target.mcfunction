scoreboard players set @s rend_enemy 1
scoreboard players set @e[distance=..16] rend_current_enemy 0
scoreboard players set @s rend_current_enemy 1

execute as @e[type=skeleton,tag=rend_fallen,distance=..16] run damage @s 0.0 generic by @e[distance=..16,scores={rend_current_enemy=1},limit=1]