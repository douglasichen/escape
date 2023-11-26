
//portal
var pad 
var dest

pad = instance_place(x,y,OB_portal1_vert) // looking through all portal 1's

for (i = 0; i < instance_number(OB_portal2_vert); i++) {
	dest = instance_find(OB_portal2_vert,i)
	
	if pad.index == dest.index {
		x = dest.x
		y  = dest.y - sprite_height/2 - 1
		vspd = jump_height
		break;
	}
}
