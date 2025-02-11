#Summon model
function animated_java:rend_fallen_tether/summon {args: {}}
#Record current y-level
execute store result storage minecraft:rend tether.y_store double 1 run data get entity @s Pos[1] 1000
#Summon bee out of sight (is otherwise visible for a tick)
summon minecraft:bee ~ -65 ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:water_breathing",duration:-1,show_particles:false}],PersistenceRequired:1b,NoAI:1b,Silent:1b,DeathLootTable:"minecraft:empty",Tags:['fallen_tether_hitbox']}
execute positioned ~ -65 ~ as @e[type=minecraft:bee,distance=..1,tag=fallen_tether_hitbox,sort=nearest,limit=1] run function rend:fallen/tether_hitbox_setup
kill @s
