execute at @s run summon skeleton ~ ~ ~ {Team:"rend",Tags:["rend_elite_fallen","checked"],CustomName:'{"text":"Elite Fallen"}',PersistenceRequired:1b,HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}
power grant @e[tag=rend_elite_fallen] rend:fallen_attack_players
execute as @s at @s run function rend:magic_circle_elite_fallen
execute as @s at @s run function rend:magic_circle_elite_fallen
execute as @s at @s run function rend:magic_circle_elite_fallen
execute as @s at @s run function rend:magic_circle_elite_fallen
execute at @s run particle minecraft:ash ~ ~1.5 ~ .3 .9 .3 0.30 100 normal @a
execute at @s run playsound minecraft:ambient.soul_sand_valley.mood ambient @p ~ ~ ~ 10
execute at @s run playsound minecraft:entity.illusioner.prepare_blindness ambient @p ~ ~ ~ 10
kill @s