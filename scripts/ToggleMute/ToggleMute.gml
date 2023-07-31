function toggle_audio_mute(index) {
	var _gain = audio_group_get_gain(index)
    if _gain == 0 {
		audio_group_set_gain(index, 1, 0);
	}
	else {
		audio_group_set_gain(index, 0, 0); 
	}
	var _gain2 = audio_group_get_gain(index)
	ini_open("saveData.ini")
	ini_write_real("Settings", "Music Gain", _gain2)
	ini_write_real("Settings", "SFX Gain", _gain2)
	ini_close();
}