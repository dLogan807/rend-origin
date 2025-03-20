#Summon model
function animated_java:rend_fallen_tether/summon {args: {}}
#Record current y-level
execute store result storage minecraft:rend tether.y_store double 1 run data get entity @s Pos[1] 1000
#Summon bee out of sight (is otherwise visible for a tick)
summon minecraft:bee ~ -65 ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:water_breathing",duration:-1,show_particles:false}],PersistenceRequired:1b,NoAI:1b,Silent:1b,DeathLootTable:"minecraft:empty",Tags:['fallen_tether_hitbox'],cardinal_components: {"apoli:powers": {powers: [{data: {}, sources: ["rend:fallen/tether/placement"], id: "rend:fallen/tether/hitbox_setup", type: "origins:action_on_callback"}]}}}
kill @s
