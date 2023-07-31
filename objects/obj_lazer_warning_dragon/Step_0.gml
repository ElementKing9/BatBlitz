x = obj_dragon.x; y = obj_dragon.y;



direction = point_direction(x, y, obj_player.x, obj_player.y);
if !instance_exists(obj_dragon)
{
	instance_destroy()
}

show_debug_message("warning : " + string(image_angle));
show_debug_message("dragon : " + string(obj_dragon.angle));