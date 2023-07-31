if !hasRunHealAnimation
{
	switch(hp >= maxHp)
	{
		case(true): hasRunHealAnimation = true; break;
		case(false): hp += (maxHp/60); break;
	}
}

if hp > maxHp
{
	hp = maxHp
}



if global.pathFinding == true {
	if (instance_exists (obj_player)) {
		move_towards_point(obj_player.x, obj_player.y, spd);
	}
} else {move_towards_point(x, y, 0)}


if (hp <=0){
	 if (Chance(75)) {
		instance_create_layer(x+5,y+5,"ItemLayer",obj_food);
		instance_create_layer(x+5,y-5,"ItemLayer",obj_food);
		instance_create_layer(x+5,y,"ItemLayer",obj_food);
		instance_create_layer(x-5,y+5,"ItemLayer",obj_food);
		instance_create_layer(x-5,y,"ItemLayer",obj_food);
	 }
	 if (Chance(0.15)) {
		instance_create_layer(x,y,"ItemLayer",obj_money_bag);
	 }
	 if (Chance(0.015)) {
		instance_create_layer(x,y,"ItemLayer",obj_powerup);
	 }
	instance_destroy();
	global.points = global.points + killPoints * obj_player.combo;
	global.deathSound++
	
	ini_open("saveData.ini");
	var i = ini_read_real("Stats", "Dragon Kills", 0);
	ini_write_real("Stats", "Dragon Kills", i+1);
	ini_close();
	
	if global.deathSound <= 2 {audio_play_sound(snd_explode,2,0);}
	with (obj_system) {time_source_start(deathSoundTimeSource)};
	obj_player.playerCurrentEXP += irandom_range(2500,3500)
	obj_player.playerGold += killReward;
	with (obj_player) {
		 if ValueInRange(obj_player.combo, 0, 0.9) {alarm[0] = 300}
		 if ValueInRange(obj_player.combo, 1, 1.9){alarm[0] = 300}
		 if ValueInRange(obj_player.combo, 2, 2.9){alarm[0] = 300}
		 if ValueInRange(obj_player.combo, 3, 3.9){alarm[0] = 300}
		 if ValueInRange(obj_player.combo, 4, 4.9){alarm[0] += 250}
		 if ValueInRange(obj_player.combo, 5, 5.9){alarm[0] += 150}
		 if ValueInRange(obj_player.combo, 6, 6.9){alarm[0] += 100}
		 if ValueInRange(obj_player.combo, 7, 7.9){alarm[0] += 75}
		 if ValueInRange(obj_player.combo, 8, 8.9){alarm[0] += 50}
		 if ValueInRange(obj_player.combo, 9, 9.9){alarm[0] += 25}
		 if obj_player.combo >= 10  && obj_player.combo <= 19 {alarm[0] += 20}
	}
	obj_player.combo += 5
	global.hitSound--
	
}



if shouldUpdateAngle
{
	angle = point_direction(x, y, obj_player.x, obj_player.y);
}


if (obj_player.isAlive = false) {
	instance_destroy()
}


