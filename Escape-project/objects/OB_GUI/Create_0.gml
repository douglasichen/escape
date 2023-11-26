//score
player_score = 0

//state
alive = string("Alive")
dead = string("Dead")

frozen = string("Frozen")
no_state = string("No state")

no_powerup = string("No powerup")
high_speed = string("High speed")
high_jump = string("High jump")

player_state = alive

secondary_state = no_state

powerup_state = no_powerup

//health
health_bar_length = 400
health_bar_height = 16
health_bar_y = 10
health_bar_x = 200
health_bar_color_in = c_gray //color
health_bar_color_out = c_black //color
health_bar_border_thickness = 3
health_bar_empty_color = c_white
draw_health = 0
health_bar_recent_max_playerhealth = OB_player.max_health