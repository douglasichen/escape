if instance_exists(OB_player) and OB_player.dead = true {
	alarm[0] = OB_player.player_respawn_cooldown // start the respawn cooldown
	instance_destroy(OB_player) //destroy the player after te alarm is set
}