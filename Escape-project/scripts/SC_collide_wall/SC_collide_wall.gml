if place_meeting(x,y+vspd,OB_wall) {
	while (!place_meeting(x,y+sign(vspd),OB_wall)){
		y += sign(vspd)
	}
	vspd = 0
}
y += vspd

if place_meeting(x+hspd,y,OB_wall) {
	while (!place_meeting(x+sign(hspd),y,OB_wall)){
		x += sign(hspd)
	}
	hspd = 0
}
x += vspd