$team leave $(name)$(counter)
$tellraw @s [{"color": "yellow", "text": "[Rend Origin] "} ,{"color": "white", "text": "Left team $(name)$(counter)"}]
tag @s remove rend.player
tellraw @s [{"color": "yellow", "text": "[Rend Origin] "} ,{"color": "white", "text": "Removed tag 'rend.player'"}]