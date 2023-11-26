//state and powerup state

if instance_exists(OB_player) {
	player_state = alive
	
	if OB_player.powerup_speed = false and OB_player.powerup_jump = false {
		powerup_state = no_powerup
	}
	else if OB_player.powerup_speed = true and OB_player.powerup_jump = false {
		powerup_state = high_speed
	}
	else if OB_player.powerup_speed = false and OB_player.powerup_jump = true {
		powerup_state = high_jump
	}
	else if OB_player.powerup_speed = true and OB_player.powerup_jump = true {
		powerup_state = high_speed + string(" and ") + high_jump
	}
	
	if OB_player.freeze = false {
		secondary_state = no_state
	}
	else {
		secondary_state = frozen
	}
	
}
else {
	player_state = dead
	powerup_state = no_powerup
	secondary_state = no_state
}

//health
if instance_exists(OB_player) {
	draw_health = lerp(draw_health,OB_player.player_health,0.1) // setting thi so that it converts the player's health into a draw_health lerp, this will allow for a smooth decrease of health
	health_bar_recent_max_playerhealth = OB_player.max_health
}
else {
	draw_health = lerp(draw_health,0.01,0.1)
}

