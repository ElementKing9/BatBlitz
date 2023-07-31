audio_play_sound(snd_lazer, 10, 0);

instance_destroy(obj_lazer_warning_dragon)
instance_create_layer(x,y,"Instances",obj_lazer_enemy_dragon)

alarm[6] = 600;
