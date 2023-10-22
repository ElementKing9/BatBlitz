function ChangeHealth(ObjectToTakeChange, HowMuchHealth){
	
	var _playerId = instance_find(obj_player, 0)
	var _object = ObjectToTakeChange
	var _hp = HowMuchHealth
		
	
	if _object != obj_player
	{
		with _object{	
			hp += _hp
		}
	}
	
	if _object = _playerId
	{
		if obj_player.godMode
		{
			
		}
		else
		{
			with _object
			{	
				hp += _hp
			}
		}
	}
}