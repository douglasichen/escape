if instance_exists(OB_player) {

	x = OB_player.x
	y = OB_player.y

	direction += sin(degtorad(point_direction(x,y,mouse_x,mouse_y) - image_angle)) * rspeed
	image_angle += sin(degtorad(point_direction(x,y,mouse_x,mouse_y) - image_angle)) * rspeed

}
else {
	instance_destroy()
}

//angle
angle = direction
//shooting
button_shoot = mouse_check_button(mb_left)

if button_shoot {
	if shoot = true {
		instance_create_layer(x,y,"Bullets",OB_player_bullet)
		
		alarm[0] = cooldown
		shoot = false
	}
}
