x = (obj_player.x);
y = (obj_player.y);

if (obj_player.hp <= 0) {
	instance_destroy()
}
if obj_player.levelUp = true && obj_player.playerLevel <= 20{
	image_xscale = image_xscale * 1.05
	image_yscale = image_yscale * 1.05
	obj_player.levelUp = false
}
