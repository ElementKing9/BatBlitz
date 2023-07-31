//health
draw_healthbar(1640, 50 ,1880, 75, (hp/playerMaxHealth)*100,c_black,c_red,c_green,1,true,true)

//draw player healtth
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_red);
draw_set_font(fnt_small);
draw_text_transformed(1760,10,string(hp) + "/" + string(playerMaxHealth), 2, 2, 0);

//draw plaer lvl
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(#ffbbd4);
draw_set_font(fnt_small);
draw_text_transformed(1640,80,"Level: " + string(playerLevel-1), 1.5, 1.5, 0);
draw_text_transformed(1640,105,"Xp: " + string(playerCurrentEXP) + "/" + string(playerMaxEXP), 1.5, 1.5, 0);
draw_set_color(c_yellow);
draw_text_transformed(1640,130,"Gold: " + string(playerGold), 1.5, 1.5, 0);

//Draw Combo
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_yellow);
draw_set_font(fnt_small);
draw_text_transformed(room_width/4, 32, "Multiplier " + string(combo) + "x "+string(BulletPower), 2, 2, 0)
if maxCombo{draw_healthbar(room_width/4-200, 80 ,room_width/4+200, 105, (comboTime/900)*100,c_black,c_yellow,c_yellow,0,true,true)}
if !maxCombo{draw_healthbar(room_width/4-200, 80 ,room_width/4+200, 105, (comboTime/300)*100,c_black,c_yellow,c_yellow,0,true,true)}


if debugValuesDisplay = true {draw_text(512, 48, string(alarm[0]) + "\n" + string(combo) + "\n" + string(obj_spawner.alarm[0]) + "\n" + string(global.hitSound) + "\n" + string(global.deathSound))}
if debugBatCounter = true {draw_text(576, 48, "weapon number: " + string(weapon) + "\n bullet power: " + string(BulletPower))}
