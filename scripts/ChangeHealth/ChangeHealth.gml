function ChangeHealth(ObjectToTakeChange, HowMuchHealth){
	
	var _object = ObjectToTakeChange
	var _hp = HowMuchHealth
		
		
	if !obj_player.godMode{
		with _object
		{
			hp += _hp
		}
	}
	if obj_player.godMode 
	{

	}
}