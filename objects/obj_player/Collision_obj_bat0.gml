if (godMode = false) {
	if iFrames <= 0 {
		if global.gameMode = 0 {playerHealth -= 20};
		if global.gameMode = 1 {playerHealth -= 60};
		iFrames = 1;
		iFramesTimerEnabled = true;
		};
}
with(other)
instance_destroy()
