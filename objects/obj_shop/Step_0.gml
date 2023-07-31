up_key = keyboard_check_pressed(ord("1")) || keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(ord("2")) || keyboard_check_pressed(vk_down);
select_key = keyboard_check_pressed(ord("3")) || keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left);
back_key = keyboard_check_pressed(vk_backspace) || keyboard_check_pressed(vk_left);

if (canBuyShotgun && obj_player.playerGold >= shotgunPrice) || (canBuyAr && obj_player.playerGold >= arPrice) || (canBuyLazer && obj_player.playerGold >= lazerPrice)
{
	canBuyWeapons = true;
}
else {canBuyWeapons = false}
if (canBuyPoison && obj_player.playerGold >= poisonPrice) || (canBuyFrost && obj_player.playerGold >= frostPrice) || (canBuyLifeSteal && obj_player.playerGold >= lifeStealPrice)
{
	canBuyAmmo = true;
}
else {canBuyAmmo = false}
if (canBuySpeed && obj_player.playerGold >= speedPrice) || (canBuyHealth && obj_player.playerGold >= healthPrice) || (obj_player.fireballs <= 9 && obj_player.playerGold >= fireballPrice)
{
	canBuyUpgradesExclusive = true;
}
else {canBuyUpgradesExclusive = false}

if fireballs <= fireballBuyLimit
{
	canBuyFireball = true;
} else if fireballs >= fireballBuyLimit{canBuyFireball = false;}

if (canBuySpeed && obj_player.playerGold >= speedPrice)  || (canBuyFireball && obj_player.playerGold >= fireballPrice) || (canBuyAmmo)
{
	canBuyUpgrades = true;
}
else {canBuyUpgrades = false}










//Store num of options in current menu
op_length = array_length(option[menu_level])
#region Use mouse
//option 1
if point_in_rectangle(mouse_x, mouse_y, x, y+op_border + op_space-32, x+256, y+op_border + op_space-12) {
	pos = 0
}
//option 2
if point_in_rectangle(mouse_x, mouse_y, x, y+op_border + op_space-2, x+256, y+op_border + op_space+18) {
	pos = 1
}
//option 3
if point_in_rectangle(mouse_x, mouse_y, x, y+op_border + op_space+32, x+256, y+op_border + op_space+52) && (menu_level = 1 || menu_level = 2 || menu_level = 3) {
	pos = 2
}
//option 4
if point_in_rectangle(mouse_x, mouse_y, x, y+op_border + op_space+62, x+256, y+op_border + op_space+82) && (menu_level = 1 || menu_level = 2 || menu_level = 3) {
	pos = 3
}
//option 5
if point_in_rectangle(mouse_x, mouse_y, x, y+op_border + op_space+92, x+256, y+op_border + op_space+112) && (menu_level = 1 || menu_level = 2) {
	pos = 4
}
//option 6
if point_in_rectangle(mouse_x, mouse_y, x, y+op_border + op_space+122, x+256, y+op_border + op_space+142) && (menu_level = 1 || menu_level = 2) {
	pos = 5
}
#endregion

#region Buy Limits
if shotgunBuy >= shotgunBuyLimit {canBuyShotgun = false;}
if canBuyShotgun = false {option[1, 0] = "Shotgun"}

if arBuy >= arBuyLimit {canBuyAr = false;}
if canBuyAr = false {option[1, 1] = "Auto Rifle"}

if lazerBuy >= lazerBuyLimit {canBuyLazer = false;}
if canBuyLazer = false {option[1, 2] = "L.A.Z.E.R."}

if speedBuy >= speedBuyLimit {canBuySpeed = false}
if canBuySpeed = false {option[2, 1] = "Speed Up"}
else option[2, 1] = "Speed Up - " + string(speedPrice)

if healthBuy >= healthBuyLimit {canBuyHealth = false;}
if canBuyHealth = false {option[2, 2] = "Health Regen"}

if poisonBuy >= poisonBuyLimit {canBuyPoison = false;}
if canBuyPoison = false {option[3, 0] = "Fire Bullets"};

if frostBuy >= frostBuyLimit {canBuyFrost = false;}
if canBuyFrost = false {option[3, 1] = "Frost Bullets"}

if lifeStealBuy >= lifeStealBuyLimit {canBuyLifeSteal = false;}
if canBuyLifeSteal = false {option[3, 2] = "Life Steal Bullets"}

if fireballs >= fireballBuyLimit {canBuyFireball = false;}
if canBuyFireball = false {option[2, 4] = "Max Fireballs"}
else {option[2, 4] = "+1 Fireball - 5000"}

#endregion

if lockShop = false {
	pos += down_key - up_key;
	if pos >= op_length {pos = 0};
	if pos < 0 {pos = op_length-1};
	//Using the options VVV
	if select_key {
		if mouse_check_button_pressed(mb_left) && !point_in_rectangle(mouse_x, mouse_y, x, y, x+SHOP_WIDTH, y+SHOP_HEIGHT){
		return 	
		}

		var _sml = menu_level;

	 	switch(menu_level) { 
	
			//Main Shop
			case 0:
			switch(pos) {
				//Weapons
				case 0:	menu_level = 1; audio_play_sound(snd_select, 1, false) break;
				//Upgrades
				case 1: menu_level = 2; audio_play_sound(snd_select, 1, false) break;
				//End Game
				//case 2: menu_level = 4; audio_play_sound(snd_select, 1, false)}; break;
				};
			  break;
	
			//Weapons
			case 1:
			switch(pos) {
				//Shotgun - 1000
				case 0:  if !canBuyShotgun = false && (obj_player.playerGold >= 2500) {obj_player.playerGold -= 2500; shotgunBuy += 1; with(obj_weapon) {weaponState = weaponState.Shotgun}; audio_play_sound(snd_buy, 1, false) if weaponGuide = false{instance_create_layer((room_width/2)-100,(room_height/2)-50,"GUI",obj_weapon_guide)};}; audio_play_sound(snd_select, 1, false) weaponGuide = true;  break;
				//AR - 2500
				case 1:  if !canBuyAr = false{if (obj_player.playerGold >= 7500) {obj_player.playerGold -= 7500; arBuy += 1; with(obj_weapon) {weaponState = weaponState.AR}; audio_play_sound(snd_buy, 1, false) if weaponGuide = false{instance_create_layer((room_width/2)-100,(room_height/2)-50,"GUI",obj_weapon_guide)};};}; audio_play_sound(snd_select, 1, false) weaponGuide = true; break;
				//Lazer - 5000;
				case 2:  if !canBuyLazer = false{if (obj_player.playerGold >= 15000) {obj_player.playerGold -= 15000; lazerBuy += 1; with(obj_weapon) {weaponState = weaponState.Lazer}; audio_play_sound(snd_buy, 1, false) if weaponGuide = false{instance_create_layer((room_width/2)-100,(room_height/2)-50,"GUI",obj_weapon_guide)};};}; audio_play_sound(snd_select, 1, false) weaponGuide = true; break;
				//Back
				case 3: menu_level = 0; audio_play_sound(snd_select, 1, false) break;
				}
			break;
				
			//Upgrades
			case 2:
			switch(pos) {
				//Ammo Upgrades
				case 0:  menu_level = 3; audio_play_sound(snd_select, 1, false); break;
				//Speed Upgrade - 750
				case 1: if !canBuySpeed = false{if (obj_player.playerGold >= speedPrice) {obj_player.playerGold -= speedPrice; obj_player.movementSpeed += 1; speedBuy += 1; speedPrice += 250; audio_play_sound(snd_buy, 1, false)}} audio_play_sound(snd_select, 1, false) break;
				//Health Regen - 500 | make it not too good but not too bad
				case 2: if !canBuyHealth = false{if (obj_player.playerGold >= 500) {obj_player.playerGold -= 500; alarm[0] = 30; healthBuy += 1; audio_play_sound(snd_buy, 1, false);}} audio_play_sound(snd_select, 1, false) break;
				//Heal 50 HP - 500
				case 3: if obj_player.playerGold >= 500 && obj_player.hp < obj_player.playerMaxHealth {obj_player.playerGold -= 500; obj_player.hp += 50 audio_play_sound(snd_buy, 1, false);} audio_play_sound(snd_select, 1, false) break;
				//Fireball - 5000
				case 4: if !canBuyFireball = false && (obj_player.playerGold >= fireballPrice) && obj_player.fireballs <= 9 {obj_player.playerGold -= fireballPrice; obj_player.fireballs += 1; audio_play_sound(snd_buy, 1, false) if fireballBuy = 0 {instance_create_layer(x, y, "Instances", obj_fireball_guide)} fireballBuy = 1;} audio_play_sound(snd_select, 1, false) break;
				//Go Back
				case 5: menu_level = 0; audio_play_sound(snd_select, 1, false); break;
				}
			break;
			//Ammo Upgrades // combine poison and frost if both are bought (overlay cold texture onto green bullet)
			case 3:
			switch(pos) {
				//Poison Bullets - 1000
				case 0: if !canBuyPoison = false{ instance_create_layer(0, 0, "BulletLayer", obj_bullet); if (obj_player.playerGold >= 1000) {obj_player.playerGold -= 1000; obj_bullet.bulletType = 1; poisonBuy += 1; audio_play_sound(snd_buy, 1, false)}} audio_play_sound(snd_select, 1, false) break;
				//Frost Bullets - 1000
				case 1: if !canBuyFrost = false{ instance_create_layer(0, 0, "BulletLayer", obj_bullet); if (obj_player.playerGold >= 1000) {obj_player.playerGold -= 1000; obj_bullet.bulletType = 2; frostBuy += 1; audio_play_sound(snd_buy, 1, false)}} audio_play_sound(snd_select, 1, false) break;
				//Life Steal - 3500
				case 2: if !canBuyLifeSteal = false{ instance_create_layer(0, 0, "BulletLayer", obj_bullet); if (obj_player.playerGold >= 3500) {obj_player.playerGold -= 3500; obj_bullet.lifeSteal = true; lifeStealBuy += 1; audio_play_sound(snd_buy, 1, false)}} audio_play_sound(snd_select, 1, false) break;
				//Go Back
				case 3: menu_level = 2; audio_play_sound(snd_select, 1, false); break;
				}
			break;
		}
	
		if _sml != menu_level {pos = 0};

		//Correct Option Length
		op_length = array_length(option[menu_level])

	}
};