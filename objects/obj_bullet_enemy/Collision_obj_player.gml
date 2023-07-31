ChangeHealth(other, -self.BulletPower)

if global.hitSound <= 3 {
	audio_play_sound(snd_hit,2,0)
}
 if obj_player.noPierce = false {
	instance_destroy();
};

