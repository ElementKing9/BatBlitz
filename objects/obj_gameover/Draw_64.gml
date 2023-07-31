draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_large);
draw_set_color(c_white);
draw_text(room_width/4,room_height/4,"Game Over");
draw_set_font(fnt_small);
draw_text(room_width/4,room_height/4+50, "Your Score: "+string(global.points));
if global.gameMode = 0 {draw_text(room_width/4,room_height/4+75, "High Score: "+string(obj_system.highScore));}
if global.gameMode = 1 {draw_text(room_width/4,room_height/4+75, "High Score: "+string(obj_system.highScore2));}
draw_set_color(c_yellow);
draw_text(room_width/4,room_height/4+100, "Press R To Restart");
draw_text(room_width/4,room_height/4+125, "Press B To Go Back");
