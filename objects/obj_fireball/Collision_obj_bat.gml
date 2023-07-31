instance_create_layer(x,y, "BulletLayer", obj_fireball_explosion);

audio_play_sound(snd_fireball_explosion,2,0)

with(self)
{
	instance_destroy();
}

