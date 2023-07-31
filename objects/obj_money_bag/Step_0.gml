if place_meeting(x, y, obj_player) {
	audio_play_sound(snd_money_bag,1,0);
	obj_player.playerGold += 2500;
	instance_create_layer(x, y, "GUI", obj_money_gain)
	global.points += 200 * obj_player.combo;
	instance_destroy();
}




