CreateBats(obj_bat, blueBatAmount, false)
CreateBats(obj_red_bat, redBatAmount, false)
CreateBats(obj_purple_bat, purpleBatAmount, false)
if !tankExist && obj_player.playerLevel >= 17 && !dragonExist
{
	CreateBats(obj_tank_bat, 1, true)
}