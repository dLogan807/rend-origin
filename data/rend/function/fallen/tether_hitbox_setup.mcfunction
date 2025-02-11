#Store correct y-level
execute store result score @s rend_tether_summon_y run data get storage minecraft:rend tether.y_store
#Store team num
execute store result score @s rend_team run data get storage minecraft:rend tether.team 1
power grant @s rend:fallen/tether/hitbox