
SC_collide_wall()
vspd += grav
//

random_jump_time = irandom_range(100,130)

//move
hspd = xdir * walkspd
//direction when mmoving
if instance_exists(OB_player) {
	//check which way to look at
	if x < OB_player.x {
		xdir = right
	}
	else {
		xdir = left
	}
	if state = states.move {
		x += hspd
	}
	else if state = states.attack1 {
		alarm[0] = bullet_cooldown
	}
	else if state = states.attack2 {
		death_touch = true
		
		if allow_jump = true {
			jump = true
			alarm[1] = random_jump_time
			allow_jump = false
		}
		x += hspd/walkspd_decrease_amp
		sprite_index = S_boss1_death_touch
	}
}
if jump = true {
	vspd = jump_height
	jump = false
}

