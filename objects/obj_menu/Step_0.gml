window_set_fullscreen(fullscreenFunc)

up_key = keyboard_check_pressed(ord("1")) || keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(ord("2")) || keyboard_check_pressed(vk_down);
select_key = keyboard_check_pressed(ord("3")) || keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left);
back_key = keyboard_check_pressed(vk_backspace) || keyboard_check_pressed(vk_left);

//Store num of options in current menu
op_length = array_length(option[menu_level])

pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

#region Use mouse

for (var i = 0; i < 13;) {
    
	if point_in_rectangle(mouse_x, mouse_y, x, y+op_border+(i*33)-10, x+MENU_WIDTH, y+op_border + op_space-12+(i*33)) {
		pos = i
	}
	i++
}



#endregion

//Using the options
if back_key {menu_level = 0};
if select_key {
	if mouse_check_button_pressed(mb_left) && !point_in_rectangle(mouse_x, mouse_y, x, y, x+MENU_WIDTH, y+MENU_HEIGHT){
		return 	
	}
	audio_play_sound(snd_select, 4, false)
	var _sml = menu_level;
	var target = Room1;
 	switch(menu_level) { 
		//Main Menu
		case 0:
		switch(pos) {
			//Start Game
			case 0:	global.gameMode = 0; TransitionStart(target, sq_fade_out, sq_fade_in); obj_system.canBePaused = true; audio_stop_sound(mus_main);break;
			//Start Game in Hard Mode
			case 1:	global.gameMode = 1; TransitionStart(target, sq_fade_out, sq_fade_in); obj_system.canBePaused = true; audio_stop_sound(mus_main); break;
			//Slime Coin Shop
			case 2: menu_level = 4; break;
			//Settings
			case 3: menu_level = 1; break;
			//Credits
			case 4: target = rm_Credits; TransitionStart(target, sq_fade_out, sq_fade_in); break;
			//Discord
			case 5: url_open("https://discord.gg/SjkEUFKxDq"); break;
			//Quit Game
			case 6: game_end(); break;
			}
		  break;
	
		//Settings
		case 1:
		switch(pos) {
			//Fullscreen
			case 0: fullscreenFunc = !fullscreenFunc; ini_open("saveData.ini"); ini_write_real("Settings", "Fullscreen", fullscreenFunc); ini_close(); break;
			//Mute Music
			case 1: toggle_audio_mute(Music); break;
			//Mute Sfx
			case 2: toggle_audio_mute(SFX); break;
			//Toggle FPS Counter
			case 3: obj_system.fps_count = !obj_system.fps_count; break;
			//Reset Data
			case 4: menu_level = 2; break;
			//Back
			case 5: menu_level = 0; break;
			}
		break;
		//Reset All Data
		case 2:
		switch(pos) {
			//Confirm
			case 0: file_delete("saveData.ini"); file_delete("skins.json"); file_delete("backgrounds.json"); game_restart(); break;
			//Back
			case 1: menu_level = 1; break;
			}
		break;
		case 3:
			HandleSkinsMenu();
			SetSkinsMenuText();
			break;
		case 4:
			switch(pos) 
			{
				//Skin shop
				case 0: menu_level = 3; break;
				//BG shop
				case 1: menu_level = 5; break;
				//Back
				case 2: menu_level = 0; break;
			}
		break;
		case 5:
			HandleBackgroundsMenu();
			SetBackgroundsMenuText();
			break;
		}

	
	if _sml != menu_level {pos = 0};

	//Correct Option Length
	op_length = array_length(option[menu_level])

}

if menu_level == 3 && mouse_check_button_pressed(1)
{
	
	
	
	//switch(obj_system.playerSkin){
	//	case spr_Player:
	//		option[3, 4] = "Green Slime Selected";
	//		switch(obj_system.blueBought){
	//			case true: 
	//				option[3, 0] = "Blue Slime";
	//				break;
	//			case false:
	//				option[3, 0] = "Blue Slime - 50";
	//				break;
	//			}
	//		switch(obj_system.redBought){
	//			case true: 
	//				option[3, 1] = "Red Slime";
	//				break;
	//			case false:
	//				option[3, 1] = "Red Slime - 150";
	//				break;
	//			}
	//		switch(obj_system.purpleBought){
	//			case true: 
	//				option[3, 2] = "Purple Slime";
	//				break;
	//			case false:
	//				option[3, 2] = "Purple Slime - 500";
	//				break;
	//			}
	//		switch(obj_system.stickBought){
	//			case true: 
	//				option[3, 3] = "Stick Slime";
	//				break;
	//			case false:
	//				option[3, 3] = "Stick Slime - 1000";
	//				break;
	//			}
	//		break;
	//	case spr_player_blue:
	//		option[3, 0] = "Blue Slime Selected";
	//		switch(obj_system.redBought){
	//			case true: 
	//				option[3, 1] = "Red Slime";
	//				break;
	//			case false:
	//				option[3, 1] = "Red Slime - 150";
	//				break;
	//			}
	//		switch(obj_system.purpleBought){
	//			case true: 
	//				option[3, 2] = "Purple Slime";
	//				break;
	//			case false:
	//				option[3, 2] = "Purple Slime - 500";
	//				break;
	//			}
	//		switch(obj_system.stickBought){
	//			case true: 
	//				option[3, 3] = "Stick Slime";
	//				break;
	//			case false:
	//				option[3, 3] = "Stick Slime - 1000";
	//				break;
	//			}
	//		option[3, 4] = "Green Slime"
	//		break;
	//	case spr_player_red:
	//		option[3, 1] = "Red Slime Selected";
	//		switch(obj_system.blueBought){
	//			case true: 
	//				option[3, 0] = "Blue Slime";
	//				break;
	//			case false:
	//				option[3, 0] = "Blue Slime - 50";
	//				break;
	//			}
	//		switch(obj_system.purpleBought){
	//			case true: 
	//				option[3, 2] = "Purple Slime";
	//				break;
	//			case false:
	//				option[3, 2] = "Purple Slime - 500";
	//				break;
	//			}
	//		switch(obj_system.stickBought){
	//			case true: 
	//				option[3, 3] = "Stick Slime";
	//				break;
	//			case false:
	//				option[3, 3] = "Stick Slime - 1000";
	//				break;
	//			}
	//		option[3, 4] = "Green Slime"
	//		break;
	//	case spr_player_purple:
	//		option[3, 2] = "Purple Slime Selected";
	//		switch(obj_system.blueBought){
	//			case true: 
	//				option[3, 0] = "Blue Slime";
	//				break;
	//			case false:
	//				option[3, 0] = "Blue Slime - 50";
	//				break;
	//			}
	//		switch(obj_system.redBought){
	//			case true: 
	//				option[3, 1] = "Red Slime";
	//				break;
	//			case false:
	//				option[3, 1] = "Red Slime - 150";
	//				break;
	//			}
	//		switch(obj_system.stickBought){
	//			case true: 
	//				option[3, 3] = "Stick Slime";
	//				break;
	//			case false:
	//				option[3, 3] = "Stick Slime - 1000";
	//				break;
	//			}
	//		option[3, 4] = "Green Slime"
	//		break;
	//	case spr_player_stick:
	//		option[3, 3] = "Stick Slime Selected";
	//		switch(obj_system.blueBought){
	//			case true: 
	//				option[3, 0] = "Blue Slime";
	//				break;
	//			case false:
	//				option[3, 0] = "Blue Slime - 50";
	//				break;
	//			}
	//		switch(obj_system.redBought){
	//			case true: 
	//				option[3, 1] = "Red Slime";
	//				break;
	//			case false:
	//				option[3, 1] = "Red Slime - 150";
	//				break;
	//			}
	//		switch(obj_system.purpleBought){
	//			case true: 
	//				option[3, 2] = "Purple Slime";
	//				break;
	//			case false:
	//				option[3, 2] = "Purple Slime - 500";
	//				break;
	//			}
	//		option[3, 4] = "Green Slime"
	//		break;
	
	//}
}







