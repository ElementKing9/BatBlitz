/*if place_meeting(x, y, obj_player) {
	if (obj_player.godMode = false) {
		if obj_player.iFrames <= 0 {
			if global.gameMode = 0 {obj_player.playerHealth -= 100};
			if global.gameMode = 1 {obj_player.playerHealth -= 250};
			obj_player.iFrames = 1;
			obj_player.iFramesTimerEnabled = true;
			};
	}
	instance_destroy()
}

