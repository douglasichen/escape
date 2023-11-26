//portal
var pad //the portal u enter
var dest // the portal you exit

pad = instance_place(x,y,OB_portal2) // looking through all portal 2's

for (i = 0; i < instance_number(OB_portal1); i++) { // checking through one by oen wich portals have the same index number in their creation code
	dest = instance_find(OB_portal1,i)
	
	if pad.index == dest.index { // if the index matches between the pad and destination then do the following
		x = dest.x - sprite_width/2-1 // teleport from/ to portals witht he smae index
		y  = dest.y - 1 // teleport from/ to portals witht he smae index
		
		break; //after you find the correct index of portals, break this loop because it is no longer needed.
	}
}
