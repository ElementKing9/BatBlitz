with(other){
	hp -= obj_bullet.BulletPower;
	if obj_bullet.bulletType = 1 {	
		alarm[0] = 30
	}
	if obj_bullet.bulletType = 2 {
		spd = 1.5
		alarm[1] = 300
	}
	if obj_bullet.bulletType = 3 {
		alarm[0] = 30
		spd = 1.5
		alarm[1] = 300
	}
}
with(other)
	if !obj_red_bat.iFrames >= 1 {obj_red_bat.iFrames = 10; obj_red_bat.iFramesTimerEnabled = true}

if obj_system.muteSfx = false {audio_play_sound(snd_hit,2,0)}
if obj_Player.noPierce = false {
	instance_destroy();
};
