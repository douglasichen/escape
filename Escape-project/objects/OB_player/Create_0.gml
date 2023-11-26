//create gun
instance_create_layer(x,y,"Guns",OB_player_gun)

//collide
collide = OB_wall
//move
hspd_carry = 0
hspd = 0
vspd = 0
grav = 0.15 //increase by small increments to incrase grav
jump = false
initial_jump_height = 2.3 * -1
jump_height = initial_jump_height
jump_increase = 0.1 * -1
initial_jump_height_max = 3.8 * -1
jump_height_max = initial_jump_height_max
initial_walkspd = 1.9 
walkspd = initial_walkspd

//for the movng one way platform
key_down = 0; //This variable has to be set.

//bounce
bounce_height = jump_height * 2

//portals
target = noone

//respawn
dead = false
player_respawn_cooldown = 30

//powerups
//speedpowerup
powerup_speed_affectiveness = 3 // lower this to make it mroe affective
powerup_speed_time = 120 * 5
powerup_speed = false
//jumppowerup
powerup_jump_affectiveness = 3 //lower this to make it more affective
powerup_jump_time = 120 * 5
powerup_jump = false
//
//frozen
freeze_duration = 120 * 2
freeze_jump_height_affectiveness = 4 // decrease to increase affectiveness
freeze_walkspd_affectiveness = 1 // never go below 1
freeze = false

//health
max_health = 5
player_health = max_health


