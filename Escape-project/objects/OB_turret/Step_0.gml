
//if the player isnt in then, change the turret's target to no one // must be first line 
if instance_exists(target) and point_distance(x,y,target.x,target.y) < max_dis { //if there is a player and it is close enough "max_dis"

	//detect player and rotate accordinly
	//collision line draws a line to the following objects, this checks if the same line has both collided with the walla nd the player
	// if so, then do not aim towards the player if it only collides with the player, then aim to the player
	if collision_line(x,y,target.x,target.y,target,false,false) and !collision_line(x,y,target.x,target.y,OB_wall,false,false){
		direction += sin(degtorad(point_direction(x,y,target.x,target.y) - image_angle)) * rspeed // the sin and degtorad make a smooth rotation to the player.
		image_angle += sin(degtorad(point_direction(x,y,target.x,target.y) - image_angle)) * rspeed
	
		//shoot
		if shoot = true { //if shooting is true relevent to the alarm[0] cooldown, then create a bullet.
			instance_create_layer(x,y,"Bullets",OB_turret_bullet)
			
			shoot = false
		}
	}
	else {
		//dont shoot
		shoot = false
	
		//go back to 270diretion (down)
		direction += sin(degtorad(angle - image_angle)) * rspeed
		image_angle += sin(degtorad(angle - image_angle)) * rspeed
	}
}
else {
	//dont shoot
	shoot = false
	
	//go back to 270diretion (down)
	direction += sin(degtorad(angle - image_angle)) * rspeed
	image_angle += sin(degtorad(angle - image_angle)) * rspeed
}

