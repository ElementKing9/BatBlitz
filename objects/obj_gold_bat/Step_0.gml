if global.pathFinding == true {
	if (instance_exists (obj_player)) {
		move_towards_point(obj_player.x, obj_player.y, spd);
	}
} else {move_towards_point(x, y, 0)}


if (hp <=0){
	 if (Chance(0.115)) {
		instance_create_layer(x,y,"ItemLayer",obj_money_bag);
	 }
	 if (Chance(0.015)) {
		instance_create_layer(x,y,"ItemLayer",obj_powerup);
	 }
	instance_destroy();
	global.points = global.points + 100000 * obj_player.combo;
	global.deathSound++
	
	ini_open("saveData.ini");
	var i = ini_read_real("Stats", "Gold Bat Kills", 0);
	ini_write_real("Stats", "Gold Bat Kills", i+1);
	ini_close();
	
	if global.deathSound <= 2 {audio_play_sound(snd_money_bag,2,0);}
	with (obj_system) {time_source_start(deathSoundTimeSource)};
	obj_player.playerCurrentEXP += irandom_range(3,10) * obj_player.combo
	obj_player.playerGold += 15000
	with (obj_player) {
		 if ValueInRange(obj_player.combo, 0, 0.9) {alarm[0] = 300}
		 if ValueInRange(obj_player.combo, 1, 1.9){alarm[0] = 300}
		 if ValueInRange(obj_player.combo, 2, 2.9){alarm[0] = 300}
		 if ValueInRange(obj_player.combo, 3, 3.9){alarm[0] = 300}
		 if ValueInRange(obj_player.combo, 4, 4.9){alarm[0] += 150}
		 if ValueInRange(obj_player.combo, 5, 5.9){alarm[0] += 100}
		 if ValueInRange(obj_player.combo, 6, 6.9){alarm[0] += 75}
		 if ValueInRange(obj_player.combo, 7, 7.9){alarm[0] += 50}
		 if ValueInRange(obj_player.combo, 8, 8.9){alarm[0] += 15}
		 if ValueInRange(obj_player.combo, 9, 9.9){alarm[0] += 7}
		 if obj_player.combo >= 10  && obj_player.combo <= 19 {alarm[0] += 3}
	}
	obj_player.combo += 0.4
	global.hitSound--
	
}

if (obj_player.isAlive = false) {
	instance_destroy()
}

