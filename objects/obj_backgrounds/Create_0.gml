//This is where new skins should be added to the game

/* Plan: 
 * 
 * Move all initial skin data to this file as an array of structs.
 * After thats initialized we want to loop over this array and add each skin
 * to the save data if it is not already in there.
 *
 */
 
#macro BACKGROUNDS_JSON_FILE "backgrounds.json"

 
function Background( _name, _price, _isOwned, _sprite, _isSelected) constructor
{
	name = _name;
	price = _price;
	isOwned = _isOwned;
	sprite = _sprite;
	isSelected = _isSelected;
}



backgrounds = 
[
	new Background("Blue", 0 , true, bg_cave_blue, true),
	new Background("Red", 100 , false, bg_cave_red, false),
	new Background("Green", 100 , false, bg_cave_green, false),
	new Background("Lime", 100 , false, bg_cave_lime, false),
	new Background("Yellow", 100 , false, bg_cave_yellow, false),
	new Background("Orange", 100 , false, bg_cave_orange, false),
	new Background("Purple", 100 , false, bg_cave_purple, false),
	new Background("Pink", 100 , false, bg_cave_pink, false),
	new Background("Teal", 100 , false, bg_cave_teal, false),
	new Background("Gray", 200 , false, bg_cave_gray, false),
	new Background("Black", 300 , false, bg_cave_black, false),
	new Background("Beef Dust", 1000 , false, spr_intro, false),

]
	
currentData = []
if file_exists(BACKGROUNDS_JSON_FILE)
{
	var _jsonData = LoadString(BACKGROUNDS_JSON_FILE);
	currentData = json_parse(_jsonData);
			
}

existingBackgrounds = ds_map_create()
for (i = 0; i < array_length(currentData); i++)
{
	//mapping Background names to dummy values so that we can check in constant time if background exists
	ds_map_add(existingBackgrounds, currentData[i].name, 0)
}

for (i = 0; i < array_length(backgrounds); i++) 
	{
	    if is_undefined(ds_map_find_value(existingBackgrounds, backgrounds[i].name))
		{
			array_push(currentData, backgrounds[i])
		}
		
	}

var _updatedBackgrounds = json_stringify(currentData, true)
SaveString(_updatedBackgrounds, BACKGROUNDS_JSON_FILE)




