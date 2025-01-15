data merge entity @s {Tags:["rend_finished_summon"]}

execute at @s run particle minecraft:ash ~ ~1.5 ~ .3 .9 .3 0.30 100 normal @a
execute at @s run playsound minecraft:ambient.soul_sand_valley.mood ambient @p ~ ~ ~ 10
execute at @s run playsound minecraft:entity.illusioner.prepare_blindness ambient @p ~ ~ ~ 10