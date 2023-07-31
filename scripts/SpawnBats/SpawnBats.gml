
function CreateBats(BatType, AmountOfBats, SpawnOnWaveClear)
{
	
	var _bat = BatType
	var _amount = AmountOfBats
	var _SpawnOnWaveClear = SpawnOnWaveClear
	
	if _SpawnOnWaveClear = true
	{	
		if !instance_exists(_bat)
		{
			for (var i = 0; i < _amount; i ++) 
			{
				instance_create_layer(random(room_width),random(room_height),"Instances",_bat);
				var randomNum = irandom(5000)
				if randomNum = 5000
				{
					instance_create_layer(random(room_width),random(room_height),"Instances",obj_gold_bat);
				}
			}
		}
	}
	
	if _SpawnOnWaveClear = false
	{
		for (var i = 0; i < _amount; i ++) 
		{
			instance_create_layer(random(room_width),random(room_height),"Instances",_bat);
			var randomNum = irandom(5000)
			if randomNum = 5000
			{
				instance_create_layer(random(room_width),random(room_height),"Instances",obj_gold_bat);
			}
		}
	}
}
