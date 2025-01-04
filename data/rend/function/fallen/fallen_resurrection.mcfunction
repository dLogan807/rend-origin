execute as @e[type=item,nbt={Item:{id:"minecraft:bone"}},distance=..3,sort=nearest,limit=1] run function rend:fallen_resurrection_bone

resource change @s rend:mana_capacity -30