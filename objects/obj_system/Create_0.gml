
ini_open("saveData.ini")
musicGain = ini_read_real("Settings", "Music Gain", 1)
SFXGain = ini_read_real("Settings", "SFX Gain", 1)
fps_count = ini_read_real("Settings", "FPS", false)
fullscreenFunc = ini_read_real("Settings", "Fullscreen", true)
if fullscreenFunc {window_set_fullscreen(true)}

highScore = ini_read_real("Score", "High Score", 0)
highScore2 = ini_read_real("Score", "Hoarde High Score", 0)

slimeCoin = ini_read_real("Stats", "Slime Coin", 0)



playerBackground = undefined;
playerSkin = undefined;


playTimeSeconds = ini_read_real("Stats", "Play Time Seconds" , 0);
playTimeMinutes = ini_read_real("Stats", "Play Time Minutes" , 0);
playTimeHours = ini_read_real("Stats", "Play Time Hours" , 0);

ini_close(); 

audio_group_load(Music);
audio_group_load(SFX);
if !audio_is_playing(mus_main)
{
	audio_play_sound(mus_main, 5, true);
}
audio_group_set_gain(Music, musicGain, 0);
audio_group_set_gain(SFX, SFXGain, 0);



global.gameMode = 0
global.hitSound = 0
global.deathSound = 0
var time1 = function() {
	global.hitSound--	
}
var time2 = function() {
	global.deathSound--	
}
hitSoundTimeSource = time_source_create(time_source_game, 0.1, time_source_units_seconds, time1)
deathSoundTimeSource = time_source_create(time_source_game, 0.1, time_source_units_seconds, time2)

