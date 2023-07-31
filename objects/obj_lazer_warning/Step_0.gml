x = obj_tank_bat.x; y = obj_tank_bat.y;



direction = point_direction(x, y, obj_player.x, obj_player.y);
if !instance_exists(obj_dragon)
{
	instance_destroy()
}
