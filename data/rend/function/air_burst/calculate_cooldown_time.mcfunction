# y = (200 + (x + 2)^3)/8c, y = cooldown time, x = charges left, c = total charges

# 8c
scoreboard players operation @s rend.air_burst.denominator = #rend_global rend.air_burst.DENOMINATOR_MOD
scoreboard players operation @s rend.air_burst.denominator *= @s rend.air_burst.total_charges
# x + 2
scoreboard players operation @s rend.air_burst.base = @s rend.air_burst.charges_left
scoreboard players operation @s rend.air_burst.base += #rend_global rend.air_burst.X_SHIFT
# (x + 2)^3)
scoreboard players operation @s rend.air_burst.modifier = @s rend.air_burst.base
scoreboard players operation @s rend.air_burst.modifier *= @s rend.air_burst.base
scoreboard players operation @s rend.air_burst.modifier *= @s rend.air_burst.base
# (200 + (x + 2)^3)
scoreboard players operation @s rend.air_burst.modifier += #rend_global rend.air_burst.Y_MOD
# y = (200 + (x + 2)^3)/8c
scoreboard players operation @s rend.air_burst.modifier /= @s rend.air_burst.denominator

# Invert result
scoreboard players operation @s rend.air_burst.cooldown = #rend_global rend.air_burst.MAX_COOLDOWN
scoreboard players operation @s rend.air_burst.cooldown -= @s rend.air_burst.modifier

# Update resources
scoreboard players remove @s rend.air_burst.charges_left 1

resource operation @s rend:mana/soul_staff/charge_burst/air_burst_charges_left = @s rend.air_burst.charges_left
resource operation @s rend:mana/soul_staff/charge_burst/air_burst_cooldown = @s rend.air_burst.cooldown