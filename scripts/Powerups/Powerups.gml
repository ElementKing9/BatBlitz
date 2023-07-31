function InstaKill()
{
	obj_player.instaKill = true;
	obj_player.BulletPower = infinity;
	obj_player.alarm[2] = 300
}

function MaxCombo()
{
	obj_player.maxCombo = true
	obj_player.combo = 10
	obj_player.alarm[0] = 900;
	
}