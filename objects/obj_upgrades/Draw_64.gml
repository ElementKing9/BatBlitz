



for (var i = 0; i < FRAME_AMOUNT; i++) 
{
	draw_sprite_ext(spr_upgrade, i, 365, 650 + (i*64), 3, 3, 0, c_white, 1);
}

draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);

draw_text(425, 670 + (00), string(obj_shop.speedBuy) + "/5") 
draw_text(425, 670 + (64), string(obj_shop.healthBuy) + "/1")
draw_text(425, 670 + (128), string(obj_player.fireballs) + "/10")
