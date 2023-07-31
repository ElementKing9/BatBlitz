//Draw the menu bg
draw_sprite_ext(sprite_index, image_index, x, y, MENU_WIDTH/sprite_width, MENU_HEIGHT/sprite_height, 0, c_white, 1);

//Draw options
draw_set_font(fnt_small);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
for (var i = 0; i < op_length; i++)
	{
		var _c = c_white;
		if pos == i {_c = c_yellow}
		draw_text_color(x+(MENU_WIDTH/2), y+op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1);
		if pos == i {draw_sprite(spr_arrow, 1, x+op_border+35, (y+op_border + op_space*i)+3)}
	}




if debug_mode
	{
	for (var i = 0; i < 13;) 
		{
			draw_rectangle(x-50, y+op_border +(i*33)-10, x+MENU_WIDTH, y+op_border + op_space-12+(i*33), true)
			i++
		}
	}
