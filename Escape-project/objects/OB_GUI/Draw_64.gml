//set score and it's font and color
draw_set_font(F_1)
draw_set_color(c_black)

draw_text(10,10, "Score: " + string(player_score) + "\n" + //draw the score
"State: " + player_state + "\n" + "Secondary state: " + secondary_state + "\n" + "Powerup: " + powerup_state) //draw the state and powerup state

//draw_health outer(outline)
draw_rectangle_color(health_bar_x-health_bar_border_thickness,health_bar_y-health_bar_border_thickness,health_bar_x + health_bar_length+health_bar_border_thickness,health_bar_y + health_bar_height+health_bar_border_thickness,health_bar_color_out,health_bar_color_out,health_bar_color_out,health_bar_color_out,false)

//draw_health inner empty 
draw_rectangle_color(health_bar_x,health_bar_y,health_bar_x + health_bar_length,health_bar_y + health_bar_height,health_bar_empty_color,health_bar_empty_color,health_bar_empty_color,health_bar_empty_color,false)

//draw health inner bar
if instance_exists(OB_player) {
	draw_rectangle_color(health_bar_x,health_bar_y,health_bar_x + health_bar_length * (draw_health / OB_player.max_health),health_bar_y + health_bar_height,health_bar_color_in,health_bar_color_in,health_bar_color_in,health_bar_color_in,false)
}
else { //if the player is dead, the bar would go directly to 0 length with no smoothness, to fix this I will say to draw the rectangle but with a max health of the most recent max health to lerp to 0
	draw_rectangle_color(health_bar_x,health_bar_y,health_bar_x + health_bar_length * (draw_health / health_bar_recent_max_playerhealth),health_bar_y + health_bar_height,health_bar_color_in,health_bar_color_in,health_bar_color_in,health_bar_color_in,false)
} 

