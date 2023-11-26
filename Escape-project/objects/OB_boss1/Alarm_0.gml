instance_create_layer(x+sprite_width/2+1,y,"Bullets",OB_boss_bullet)
instance_create_layer(x+sprite_width/2+1,y - bullet_spacing,"Bullets",OB_boss_bullet)
instance_create_layer(x+sprite_width/2+1,y + bullet_spacing,"Bullets",OB_boss_bullet)

instance_create_layer(x-sprite_width/2-1,y,"Bullets",OB_boss_bullet)
instance_create_layer(x-sprite_width/2-1,y - bullet_spacing,"Bullets",OB_boss_bullet)
instance_create_layer(x-sprite_width/2-1,y + bullet_spacing,"Bullets",OB_boss_bullet)

instance_create_layer(x,y-sprite_height/2-1,"Bullets",OB_boss_bullet)
instance_create_layer(x - bullet_spacing,y-sprite_height/2-1,"Bullets",OB_boss_bullet)
instance_create_layer(x + bullet_spacing,y-sprite_height/2-1,"Bullets",OB_boss_bullet)
alarm[0] = bullet_cooldown