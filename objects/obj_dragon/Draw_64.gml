//Draw health bar
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_silver);
draw_set_font(fnt_ancient);
draw_text_transformed(room_width/4, 180, batName, 0.8, 0.8, 0)
draw_healthbar(room_width/4-220, 140 ,room_width/4+220, 180, (hp/maxHp)*100,c_black,c_yellow,c_yellow,0,true,true)
