if place_meeting(x, y, obj_player) && collidable
{
	with self
	{
		audio_play_sound(snd_powerup,1,0);
		global.points += 1500 * obj_player.combo;
		collidable = false
	
		switch(powerupType)
		{
			case 0:
				InstaKill();
				
				instance_destroy();
				break;	
			case 1:
				MaxCombo();
				instance_destroy();
				break;
		}
	}
}