/// @desc Back to main menu
instance_activate_all();
audio_resume_all();
global.paused = true
global.pathFinding = false
screen_alpha_set	= 0;
b					= 0; //reset button starting pos
pause = false;

addSlimeCoin = (round(global.points/100000)+obj_system.slimeCoin)
if global.gameMode = 0 
{
	if global.gameMode = 0 {audio_stop_sound(mus_battle)};
	audio_play_sound(mus_main, 5, true);
	if global.points > obj_system.highScore { obj_system.highScore = global.points}
	ini_open("saveData.ini");
	ini_write_real("Score", "High Score", obj_system.highScore)
	ini_write_real("Stats", "Slime Coin", addSlimeCoin)
	ini_close(); 
}
if global.gameMode = 1 	
{
	if global.points > obj_system.highScore { obj_system.highScore2 = global.points}
	ini_open("saveData.ini");
	ini_write_real("Score", "Hoarde High Score", obj_system.highScore2)
	ini_write_real("Stats", "Slime Coin", addSlimeCoin)
	ini_close(); 
}

if global.gameMode = 1 
{
	if  global.gameMode = 1 {audio_stop_sound(mus_battle3)};
	audio_play_sound(mus_main, 5, true);
	if global.points > obj_system.highScore { obj_system.highScore = global.points}
	ini_open("saveData.ini");
	ini_write_real("Score", "High Score", obj_system.highScore)
	ini_close(); }
	if global.gameMode = 1 {
	if global.points > obj_system.highScore { obj_system.highScore2 = global.points}
	ini_open("saveData.ini");
	ini_write_real("Score", "Hoarde High Score", obj_system.highScore2)
	ini_close(); 
}
var target = Menu
TransitionStart(target, sq_fade_out, sq_fade_in);
