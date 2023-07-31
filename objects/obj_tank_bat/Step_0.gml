if global.pathFinding == true {
	if (instance_exists (obj_player)) {
		move_towards_point(obj_player.x, obj_player.y, spd);
	}
} else {move_towards_point(x, y, 0)}


if (hp <=0){
	alarm[6] = -1
	alarm[7] = -1
	instance_destroy(obj_lazer_warning)
	instance_create_layer(x,y,"ItemLayer",obj_food);
	instance_create_layer(x,y,"ItemLayer",obj_food);
	instance_create_layer(x,y,"ItemLayer",obj_food);
	if (Chance(0.015)) {
		instance_create_layer(x,y,"ItemLayer",obj_powerup);
	}
	instance_destroy();
	global.points = global.points + killPoints * obj_player.combo;
	global.deathSound++
	
	ini_open("saveData.ini");
	var i = ini_read_real("Stats", "White Bat Kills", 0);
	ini_write_real("Stats", "White Bat Kills", i+1);
	ini_close();
	
	if global.deathSound <= 2 {audio_play_sound(snd_explode,2,0)};
	with (obj_system) {time_source_start(deathSoundTimeSource)};
	obj_player.playerCurrentEXP += irandom_range(3,10) * obj_player.combo
	obj_player.playerGold += irandom_range (3,10) * obj_player.combo
	with (obj_player) {
		alarm[0] = 300
	}
	obj_player.combo += 3
	global.hitSound--
	
}
if shouldUpdateAngle{
	angle = point_direction(x, y, obj_player.x, obj_player.y);
}
if (obj_player.isAlive = false) {
	instance_destroy()
}

