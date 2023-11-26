if place_meeting(x,y-1,OB_player)  { //if the player is standing on OB_disapear block, then change alpha
	if able_opacity_change = true { // only when I can change alpha 
		image_alpha = image_alpha - (1/alpha_divide) // change alpha 1/3 dubstracting
		able_opacity_change = false // make it so I cant change alpha, so the player must leave the block then come back to chagne the alpha again
	}
}
else { // if the player leaves this block, then make it so the player can change the alpha again
	able_opacity_change = true
}
if image_alpha <= 0 { //if this block is invisible, destroy it
	instance_destroy() //destroy
}

