#Add to team. Storage set via hitbox when animation completes
function rend:fallen/add_to_team with storage minecraft:rend team
#Set same rotation as model
tp @s @e[type=item_display,tag=aj.rend_fallen_tether.root,distance=..1,limit=1,sort=nearest]
#Post-summon effects
particle minecraft:ash ~ ~2 ~ .3 .9 .3 0.30 100 normal
playsound minecraft:ambient.soul_sand_valley.mood hostile @a ~ ~ ~ 0.5 0.5
playsound minecraft:particle.soul_escape hostile @a ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 0