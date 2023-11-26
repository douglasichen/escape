mask_index = S_moving_platform
//collide with the stop object
//custom horiz or vert

hspd = dir * spd
if place_meeting(x+hspd,y,OB_stop_moving_platform) {
	while (!place_meeting(x+sign(hspd),y,OB_stop_moving_platform)){
		x += sign(hspd)
	}
	hspd = 0
	dir *= -1
}
if place_meeting(x+hspd,y,OB_wall) {
	while (!place_meeting(x+sign(hspd),y,OB_wall)){
		x += sign(hspd)
	}
	hspd = 0
	dir *= -1
}


//one way
if instance_exists(OB_player) {
	if OB_player.bbox_bottom > self.y mask_index = -1 //setting the mask to the default of the sprtie attached to this object
	else mask_index = S_moving_platform
}
