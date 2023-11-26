jump_height_max = jump_height_max + jump_height/powerup_jump_affectiveness	//set the max jump height higher

powerup_jump = true // set the powerup to true for the OB_GUI to set things

jump_height = jump_height + jump_height/powerup_jump_affectiveness //increase jumo height

alarm[1] = powerup_jump_time //set the timer , the player cannot have this powerup forever

instance_destroy(other)	//destroy the powerup; other is the individual instance of the object.

