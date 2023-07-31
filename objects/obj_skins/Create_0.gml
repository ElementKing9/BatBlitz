//This is where new skins should be added to the game

/* Plan: 
 * 
 * Move all initial skin data to this file as an array of structs.
 * After thats initialized we want to loop over this array and add each skin
 * to the save data if it is not already in there.
 *
 */
 
#macro SKINS_JSON_FILE "skins.json"

 
function Skin( _name, _price, _isOwned, _sprite, _isSelected) constructor
{
	name = _name;
	price = _price;
	isOwned = _isOwned;
	sprite = _sprite;
	isSelected = _isSelected;
}



skins = 
[
	new Skin("Green", 0 , true, spr_player, true),
	new Skin("Blue", 50 , false, spr_player_blue, false),
	new Skin("Red", 150 , false, spr_player_red, false),
	new Skin("Purple", 500 , false, spr_player_purple, false),
	new Skin("Stick", 1000 , false, spr_player_stick, false)
]
// Only add the skin to the save data if the skins name isnt already in the data
// (for bugfixing) if a new skin is made but it is not being added to the save data
// this could be because there is already a skin with the same name in the data
	
currentData = []
if file_exists(SKINS_JSON_FILE)
{
	var _jsonData = LoadString(SKINS_JSON_FILE);
	currentData = json_parse(_jsonData);
			
}

existingSkins = ds_map_create()
for (i = 0; i < array_length(currentData); i++)
{
	//mapping skin names to dummy values so that we can check in constant time if skin exists
	ds_map_add(existingSkins, currentData[i].name, 0)
}

for (i = 0; i < array_length(skins); i++) 
	{
	    if is_undefined(ds_map_find_value(existingSkins, skins[i].name))
		{
			array_push(currentData, skins[i])
		}
		
	}

var _updatedSkins = json_stringify(currentData, true)
SaveString(_updatedSkins, SKINS_JSON_FILE)




