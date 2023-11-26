freeze = true

walkspd = walkspd - walkspd/freeze_walkspd_affectiveness // freeze
jump_height = jump_height - jump_height/freeze_jump_height_affectiveness	//change player jump height


if sprite_index != S_player_freeze sprite_index = S_player_freeze	//change sprite to S_player_freeze

alarm[3] = freeze_duration //freeze timer
