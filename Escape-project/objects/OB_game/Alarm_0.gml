//respawn_player
if !instance_exists(OB_player) {
	instance_create_layer(player_spawn_x,player_spawn_y,"Player",OB_player)
	dead = false
}