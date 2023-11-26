//states
enum states {
	move,
	attack1,
	attack2
}
state = states.attack2

//

vspd = 0
hspd = 0
grav = 0.4
walkspd = 1
walkspd_decrease_amp = 2

right = 1
left = -1
xdir = left

random_jump_time = irandom_range(100,130)

allow_jump = true
jump = false
jump_height = -5

//weapons and attack
bullet_cooldown = 200
death_touch = false

//bullets
bullet_spacing = 12



