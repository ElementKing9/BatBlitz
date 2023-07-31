with(other){
	if obj_bullet.bulletType = 1 {	
		alarm[0] = 30
		alarm[2] = 40
	}
	if obj_bullet.bulletType = 2 {
		spd = 1.5
		alarm[1] = 300
	}
	if obj_bullet.bulletType = 3 {
		alarm[0] = 30
		spd = 1.5
		alarm[1] = 300
		alarm[2] = 50
	}
	if obj_bullet.lifeSteal
	{
		ChangeHealth(obj_player, 1)
	}
	
	global.hitSound++	
	
}
ChangeHealth(other, -obj_player.BulletPower)


audio_play_sound(snd_hit,2,0)


 if obj_player.noPierce = false {
	instance_destroy();
};

