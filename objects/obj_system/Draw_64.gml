if fps_count
{
	draw_set_font(fnt_small)
	draw_set_color(c_yellow)
	draw_set_halign(fa_right)
	draw_set_valign(fa_top)
	draw_text(1920, 0, round(fps_real));
}