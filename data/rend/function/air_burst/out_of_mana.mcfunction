function rend:mana/store_current
execute if score @s rend.mana.current matches ..4 run return 1
execute run return fail