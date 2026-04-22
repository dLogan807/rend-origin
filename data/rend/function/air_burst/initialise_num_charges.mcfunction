scoreboard players set @s rend.air_burst.total_charges 0
scoreboard players operation @s rend.air_burst.charges_left = @s rend.air_burst.total_charges
resource operation @s rend:mana/soul_staff/charge_burst/air_burst_charges_left = @s rend.air_burst.charges_left