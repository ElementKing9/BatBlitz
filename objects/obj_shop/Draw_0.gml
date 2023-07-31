x = camera_get_view_x(view_camera[0]) + 32
y = camera_get_view_y(view_camera[0]) + 640
//Draw the menu bg
draw_sprite_ext(spr_shop_bg, image_index, x, y, SHOP_WIDTH/sprite_width, SHOP_HEIGHT/sprite_height, 0, c_white, 1);

//Draw options
draw_set_font(fnt_small);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
for (var i = 0; i < op_length; i++)
{
	var _c = c_white;
	if pos == i {_c = c_yellow}
	draw_text_color(x+op_border+10, y+op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1);
	if pos == i {draw_sprite(spr_arrow, 0, x+op_border-10, (y+op_border + op_space*i)+3)}
};


//
switch(menu_level)
{
	//Main
	case(0):
		//Weapons
		if (canBuyWeapons)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (1)), 3, 3, 0, c_white, 1)
		}
		//Upgrades
		if (canBuyUpgrades)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (2)), 3, 3, 0, c_white, 1)
		}
	break;
	
	
	//Weapons
	case(1):
		//Shotgun
		if (canBuyShotgun && obj_player.playerGold >= shotgunPrice)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (1)), 3, 3, 0, c_white, 1)
		}
		//AR
		if (canBuyAr && obj_player.playerGold >= arPrice)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (2)), 3, 3, 0, c_white, 1)
		}
		//LAZER
		if (canBuyLazer && obj_player.playerGold >= lazerPrice)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (3)), 3, 3, 0, c_white, 1)
		}
		//Back
		if (canBuyUpgrades)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (4)), 3, 3, 0, c_white, 1)
		}
	break;
	
	
	//Upgrades
	case(2):
		//Ammo
		if (canBuyAmmo)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (1)), 3, 3, 0, c_white, 1)
		}
		//Speed up
		if (canBuySpeed && obj_player.playerGold >= speedPrice)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (2)), 3, 3, 0, c_white, 1)
		}
		//Health Regen
		if (canBuyHealth && obj_player.playerGold >= healthPrice)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (3)), 3, 3, 0, c_white, 1)
		}
		//Fireballs
		if (canBuyFireball && obj_player.playerGold >= fireballPrice && obj_player.fireballs <= 9)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (5)), 3, 3, 0, c_white, 1)
		}
		//Back
		if (canBuyWeapons)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (6)), 3, 3, 0, c_white, 1)
		}
	break;
	
	
	//Ammo
	case(3):
		//Fire
		if (canBuyPoison && obj_player.playerGold >= poisonPrice)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (1)), 3, 3, 0, c_white, 1)
		}
		//Frost
		if (canBuyFrost && obj_player.playerGold >= frostPrice)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (2)), 3, 3, 0, c_white, 1)
		}
		//Life Steal
		if (canBuyLifeSteal && obj_player.playerGold >= lifeStealPrice)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (3)), 3, 3, 0, c_white, 1)
		}
		//Back
		if (canBuyWeapons || canBuyUpgradesExclusive)
		{
			draw_sprite_ext(spr_buy_mark, 0, x+SHOP_WIDTH-10, (y+op_border + op_space * (4)), 3, 3, 0, c_white, 1)
		}
	break;
}


