if other.hasRunHealAnimation
{
	with(other){
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
	}
}

