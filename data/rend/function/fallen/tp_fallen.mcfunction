#tp 5 nearby Fallen to near the player
$spreadplayers $(x_centre) $(z_centre) 1 3 under $(max_height) false @e[type=skeleton,tag=rend_fallen,team=rend$(counter),limit=5,distance=..80,sort=furthest]