execute store result storage minecraft:rend team.counter int 1 run scoreboard players get @s rend_team
function rend:debug/remove/tags_and_team with storage rend team
function rend:debug/remove/all_modifiers
tellraw @s [{"color": "yellow", "text": "[Rend Origin] "} ,{"color": "white", "text": "Cleanup completed!"}]