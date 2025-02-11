#Set same rotation as model
tp @s @e[type=item_display,tag=aj.rend_fallen_tether.root,distance=..1,limit=1,sort=nearest]
#Add to team. Storage set via hitbox when animation completes
function rend:fallen/add_to_team with storage minecraft:rend team
#Post-summon effects
particle minecraft:ash ~ ~1.5 ~ .3 .9 .3 0.30 100 normal @a
playsound minecraft:ambient.soul_sand_valley.mood ambient @p ~ ~ ~ 1
playsound minecraft:entity.illusioner.prepare_blindness ambient @p ~ ~ ~ 1