if global.hitSound <= -1 {global.hitSound++}
if global.hitSound >= 4 {global.hitSound--}

if global.deathSound <= -1 {global.deathSound++}
if global.deathSound >= 2 {global.deathSound--}


playTimeSeconds += (1/60);
if (playTimeSeconds >= 60)
{
	playTimeSeconds -= 60;
	playTimeMinutes += 1;
}     
if (playTimeMinutes >= 60)
{
	playTimeMinutes -= 60;
	playTimeHours += 1;
}

ini_open("saveData.ini")
ini_write_real("Stats", "Play Time Seconds", playTimeSeconds);
ini_write_real("Stats", "Play Time Minutes", playTimeMinutes);
ini_write_real("Stats", "Play Time Hours", playTimeHours);
playTimeSeconds = ini_read_real("Stats", "Play Time Seconds", true);
playTimeSeconds = ini_read_real("Stats", "Play Time Seconds", true);
playTimeSeconds = ini_read_real("Stats", "Play Time Seconds", true);

ini_write_real("Stats", "Slime Coin", slimeCoin);

ini_write_real("Settings", "FPS", fps_count);
ini_close();


if room = rm_Credits && keyboard_check(vk_anykey) {
	room_goto(Menu);
}
if room != Room1 {
	window_set_cursor(cr_arrow)
}
if room = Room1 {
	rousr_dissonance_set_details("Score: " + string(global.points))
	if global.gameMode = 0 {rousr_dissonance_set_state("Normal Mode")}
	if global.gameMode = 1 {rousr_dissonance_set_state("Hard Mode")}
}

playerSkin = FindSelectedSkin();
playerBackground = FindSelectedBackground();

