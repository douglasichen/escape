
//move
key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))

key_jump_pressed = keyboard_check_pressed(ord("W")) // for checking for jumo
key_jump_hold = keyboard_check(ord("W")) // for checking for holding jump
key_jump_release = keyboard_check_released(ord("W")) // hceck for release button

key_down = keyboard_check(ord("S"))


var move = key_right - key_left

hspd = move * walkspd


//this is for a functional moving platform
var final_hspd = hspd + hspd_carry
hspd_carry = 0

vspd += grav //set gravity

//collision
if place_meeting(x,y+1,collide) { //if im on the ground then allow for jumpin gto be an option
	if key_jump_pressed { // if I press the jump button then set jump to true
		jump = true
	}
}
if jump = true {
	if key_jump_hold {
		if jump_height > jump_height_max { // it must be greater because jumping actually has a negative value
			jump_height += jump_increase //increase the jump height
		}
		else if jump_height <= jump_height_max { // if the jump height is at its max then
			jump_height = jump_height_max // set the jump height to max for good measure
			jump = false // set jump to false so the player can fall back down
		}
		vspd = jump_height // Ii want to have the vspd = jump_height to actually move
	}
	else if key_jump_release { // If i release the jump button, then fall to the ground right away
		jump = false // jump is false
	}
}
if jump = false {	//set the jump heihgt back to its initial value
	jump_height = initial_jump_height
}

if place_meeting(x+final_hspd,y,collide) { //hspd collision
	while (!place_meeting(x+sign(final_hspd),y,collide)){
		x += sign(final_hspd)
	}
	final_hspd = 0
}
x += final_hspd

if place_meeting(x,y+vspd,collide) { // vspd collision
	while (!place_meeting(x,y+sign(vspd),collide)){
		y += sign(vspd)
	}
	vspd = 0
}
y += vspd

//collide with bounce object 

bounce_height = jump_height * 2	//update bounce_height

if place_meeting(x,y+1,OB_bounce) { //bounce from the OB_bounce upwards
	vspd = bounce_height
}
else if place_meeting(x,y-1,OB_bounce) { //bounce from the OB_bounce downwards
	vspd = -bounce_height
}

//if health is 0
if player_health <= 0 {
	dead = true
}


