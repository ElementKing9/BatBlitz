#region some variables that get updated every frame
vsp = movementSpeed;
hsp = movementSpeed;

if !instaKill
{
	BulletPower = (log2(playerLevel)*15)+1
	if obj_player.weapon == 1 {BulletPower = ((log2(playerLevel)*100)+1)/10}
	if obj_player.weapon == 2 {BulletPower = ((log2(playerLevel)*100)+1)/2}
}

	

comboTime = (alarm_get(0))
if maxCombo
{
	if comboTime > 900
	{
		alarm[0] = 899
	}
}
else 
{
	if comboTime > 300 
	{
		alarm[0] = 299
	}
}
if combo > 10 {combo = 10}



if weapon >= 4 {weapon = 0}
#endregion

#region xp
playerMaxEXP = 100 + round(((100 * (playerLevel - 1)) * 1.1) - 110)
#endregion

#region Movement	
if (isAlive = true && global.paused = false) {
	if keyboard_check(key_up) {
		y -= vsp;
	}
	if keyboard_check(key_down) {
		y += vsp;
	}
	if keyboard_check(key_left) {
		x -= hsp;
	}
	if keyboard_check(key_right) {
		x += hsp;
	}
	if keyboard_check_pressed(key_dash) {
		Dash();
	}
	if keyboard_check(key_up) || keyboard_check(key_down) || keyboard_check(key_right) || keyboard_check(key_left) {
		image_speed = 1 * (hsp / 4);
	} else image_speed = 0;
}
x=clamp(x, 0, room_width);
y=clamp(y, 0, room_height);
#endregion

#region round some values
playerCurrentEXP = round(playerCurrentEXP);
playerGold = round(playerGold);
#endregion

#region Xp management
if playerCurrentEXP >= playerMaxEXP{
	playerCurrentEXP = 0
	playerLevel += 1
	hp += 25
	playerMaxHealth += 25
	audio_play_sound(snd_level_up,3,0)
	instance_create_layer(obj_player.x - 196, obj_player.y - 250,"GUI",obj_level_up)
	levelUp = true
}
#endregion

#region if is alive
if (isAlive = true) {
	if hp > playerMaxHealth{
		hp = playerMaxHealth;
	}
}
#endregion

#region if player is dead VVVV
if (hp <= 0) && !deathLoopDoneYet{
	obj_system.slimeCoin += (round(global.points/50000))
	ini_open("saveData.ini");
	ini_write_real("Stats", "Slime Coin", obj_system.slimeCoin)
	ini_close();
	
	isAlive = false
	hp = 0
	image_speed = 0
	
	obj_shop.lockShop = true
	
	instance_create_layer(x, y, "GUI", obj_gameover)
	if !deathSndPlayedYet {
		audio_play_sound(snd_death2,3,0)
		deathSndPlayedYet = true;
	}
	// Feather disable once GM1044
	instance_deactivate_object(obj_score)
	
	audio_stop_sound(mus_battle)
	audio_stop_sound(mus_battle3)
	
	instance_destroy(obj_food);
	instance_destroy(obj_bullet);	
	instance_destroy(obj_bat);
	instance_destroy(obj_red_bat);
	instance_destroy(obj_tank_bat);
	instance_destroy(obj_purple_bat);
	instance_destroy(obj_lazer_warning);
	instance_destroy(obj_lazer_enemy);
	instance_destroy(obj_money_bag);
	
	if global.gameMode = 0 {
		if global.points > obj_system.highScore { obj_system.highScore = global.points}
		ini_open("saveData.ini");
		ini_write_real("Score", "High Score", obj_system.highScore)
		ini_close(); 
	}
	
	if global.gameMode = 1 {
		if global.points > obj_system.highScore2 { obj_system.highScore2 = global.points}
		ini_open("saveData.ini");
		ini_write_real("Score", "Hoarde High Score", obj_system.highScore2)
		ini_close(); 
	}
	hp = 0
	deathLoopDoneYet = true
};
#endregion

#region iFrames
if iFrames >= 1 && iFramesTimerEnabled = true {iFramesTimerEnabled = false; alarm[1] = 1}
#endregion

#region Debug
if obj_debug_menu.debugMenuOpen {
	if keyboard_check_released(ord("G")) 
	{
		godMode = !godMode;
	}
	if keyboard_check_released(ord("O")) 
	{
		playerCurrentEXP = playerMaxEXP;
	}
	if keyboard_check_released(ord("I")) 
	{
		playerLevel -= 1;
	}
	if keyboard_check_released(ord("U")) 
	{
		hp += 50;
	}
	if keyboard_check_released(ord("V")) 
	{
		playerGold += 10000;
	}
	if keyboard_check_released(ord("X")) 
	{
	 obj_weapon.enableGod = true;	
	}
	if keyboard_check_released(ord("C")) 
	{
	 global.points += 10000000	
	}
	if keyboard_check_released(ord("B")) 
	{
	 CreateBats(obj_bat, 5, false)	
	}
	if keyboard_check_released(ord("H")) 
	{
	 CreateBats(obj_dragon, 1, false)	
	}
	if keyboard_check_released(ord("J")) 
	{
	 instance_create_layer(500,500,"Instances",obj_powerup)	
	}
	if keyboard_check_released(vk_f2)
	{
		debugBatCounter = !debugBatCounter
	}
	
};

iFrames -= 1
if iFrames <= -1
{
	iFrames = 0
}

#endregion

