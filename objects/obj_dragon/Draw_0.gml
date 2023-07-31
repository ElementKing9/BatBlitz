//Draw the sprite
draw_self();
sprite_index = dragonSprite
image_speed = 1;



if x < obj_player.x {
	image_xscale = -1;
}

if x >= obj_player.x {
	image_xscale = 1;
}

draw_set_font(fnt_ancient)

