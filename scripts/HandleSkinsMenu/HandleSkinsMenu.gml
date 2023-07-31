function GetUsersSkinsData()
{
	var _json = LoadString(SKINS_JSON_FILE);
	var _skinData = json_parse(_json);
	return _skinData
}

function HandleSkinsMenu()
{
	var _skinData = GetUsersSkinsData()

	var _previousSkinPos = FindSelectedSkinPos();
	_skinData[_previousSkinPos].isSelected = false;

	
	//user selects back
	if pos = array_length(_skinData) 
	{
		menu_level = 0;
		return;
	}
	if pos >= array_length(_skinData)
	{
		return;
	}
		
	
	var _selectedSkin = _skinData[pos]
	
	if !_selectedSkin.isOwned 
	{
		if obj_system.slimeCoin < _selectedSkin.price
		{
			return;
		}
		else
		{
			obj_system.slimeCoin -= _selectedSkin.price;
			_selectedSkin.isOwned = true;
		}
	}
	_selectedSkin.isSelected = true;
	
	
	obj_system.playerSkin.sprite = _selectedSkin.sprite;
	
	_skinData[pos] = _selectedSkin;
	
	_json = json_stringify(_skinData, true)
	SaveString(_json, SKINS_JSON_FILE);
}

function GetSkinText(skin)
	{
		var skinText = skin.name
		
		if !skin.isOwned 
		{
			skinText = skinText + " - " + string(skin.price)
		}
		
		if skin.isSelected
		{
			skinText = skinText + " - selected"
		}
		
		return skinText
	}

function SetSkinsMenuText()
{
	var _skinsData = GetUsersSkinsData()

	for (var i = 0; i < array_length(_skinsData); i++)
	{	
		option[3, i] = GetSkinText(_skinsData[i])	
	}
	option[3, array_length(_skinsData)] = "Back";
}

function FindSelectedSkin()
{
	var _skinsData = GetUsersSkinsData();

	for (var i = 0; i < array_length(_skinsData); i++)
	{
		if _skinsData[i].isSelected
		{
			return _skinsData[i]
		}
	}
}


function FindSelectedSkinPos()
{
	var _skinsData = GetUsersSkinsData();

	for (var i = 0; i < array_length(_skinsData); i++)
	{
		if _skinsData[i].isSelected
		{
			return i
		}
	}
}

