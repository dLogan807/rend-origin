scoreboard players set @e[distance=..60] rend_current_enemy 0

scoreboard players set @s[team=!rend] rend_enemy 1
scoreboard players set @s[team=!rend] rend_current_enemy 1

execute as @e[tag=snowball_anger,tag=!snowball_check,distance=..50,limit=1] run function rend:snowball_two

execute if entity @e[tag=snowball_anger,tag=!snowball_check,distance=..50] run function rend:snowball_one