function GetUsersBackgroundsData()
{
	var _json = LoadString(BACKGROUNDS_JSON_FILE);
	var _backgroundData = json_parse(_json);
	return _backgroundData
}

function HandleBackgroundsMenu()
{
	var _backgroundData = GetUsersBackgroundsData()

	var _previousBackgroundPos = FindSelectedBackgroundPos();
	_backgroundData[_previousBackgroundPos].isSelected = false;

	
	//user selects back
	if pos = array_length(_backgroundData) 
	{
		menu_level = 0;
		return;
	}
	if pos >= array_length(_backgroundData)
	{
		return;
	}
		
	
	var _selectedBackground = _backgroundData[pos]
	
	if !_selectedBackground.isOwned 
	{
		if obj_system.slimeCoin < _selectedBackground.price
		{
			return;
		}
		else
		{
			obj_system.slimeCoin -= _selectedBackground.price;
			_selectedBackground.isOwned = true;
		}
	}
	_selectedBackground.isSelected = true;
	
	
	obj_system.playerBackground.sprite = _selectedBackground.sprite;
	
	_backgroundData[pos] = _selectedBackground;
	
	_json = json_stringify(_backgroundData, true)
	SaveString(_json, BACKGROUNDS_JSON_FILE);
}

function GetBackgroundText(background)
	{
		var backgroundText = background.name
		
		if !background.isOwned 
		{
			backgroundText = backgroundText + " - " + string(background.price)
		}
		
		if background.isSelected
		{
			backgroundText = backgroundText + " - selected"
		}
		
		return backgroundText
	}

function SetBackgroundsMenuText()
{
	var _backgroundsData = GetUsersBackgroundsData()

	for (var i = 0; i < array_length(_backgroundsData); i++)
	{	
		option[5, i] = GetBackgroundText(_backgroundsData[i])	
	}
	option[5, array_length(_backgroundsData)] = "Back";
}

function FindSelectedBackground()
{
	var _backgroundsData = GetUsersBackgroundsData();

	for (var i = 0; i < array_length(_backgroundsData); i++)
	{
		if _backgroundsData[i].isSelected
		{
			return _backgroundsData[i]
		}
	}
}


function FindSelectedBackgroundPos()
{
	var _backgroundsData = GetUsersBackgroundsData();

	for (var i = 0; i < array_length(_backgroundsData); i++)
	{
		if _backgroundsData[i].isSelected
		{
			return i
		}
	}
}

