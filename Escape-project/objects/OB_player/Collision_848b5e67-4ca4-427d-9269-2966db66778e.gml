
//portal
var pad 
var dest

pad = instance_place(x,y,OB_portal1) // looking through all portal 1's

for (i = 0; i < instance_number(OB_portal2); i++) {
	dest = instance_find(OB_portal2,i)
	
	if pad.index == dest.index {
		x = dest.x + sprite_width/2+1
		y  = dest.y - 1
		break;
	}
}
