if obj_menu.menu_level = 3 {

	currentData = []
	if file_exists(SKINS_JSON_FILE)
	{
		var _jsonData = LoadString(SKINS_JSON_FILE);
		currentData = json_parse(_jsonData);
					
	}

	for (i = 0; i < array_length(currentData); i++)
	{
		draw_sprite_ext(currentData[i].sprite, 0, x+32, y+10+(obj_menu.op_border + obj_menu.op_space*i), 0.5, 0.5, 0, c_white, 1)
	}
}