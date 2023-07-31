canHitPlayer += 1;

if canHitPlayer < 4 && obj_player.hp >= 0{
	ChangeHealth(other, -10)
}

audio_play_sound(snd_hit, 10, 0);


