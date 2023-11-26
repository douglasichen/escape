right = 0 
up = 90
left = 180
down = 270
//angle
//custon
angle = undefined
if angle = undefined {
	angle = down
}

//set the image and direciton to 270(down)
image_angle = angle
direction = angle

//rotation speed
rspeed = 4

//shooting
cooldown = random_range(90,100)
alarm[0] = cooldown
shoot = false

target = OB_player

max_dis = 300
//shoot towards where?
//bullet_angle = 0