function rend:mana/store_current

execute unless entity @s[scores={rend.air_burst.total_charges=..14,rend.mana.current=5..}] run return 1

execute run return fail