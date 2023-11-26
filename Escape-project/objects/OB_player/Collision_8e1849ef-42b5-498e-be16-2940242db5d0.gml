powerup_speed = true

walkspd = walkspd + walkspd/powerup_speed_affectiveness // change the walkspd according to the powerupspeed affectivness increase*

alarm[0] = powerup_speed_time //set the player's alarm[0] to the time limit for speed powerup

instance_destroy(other)
