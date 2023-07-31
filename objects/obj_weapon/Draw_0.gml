draw_self();

#region sprite changing and sizing
sprite_index = sprites_array[state, FindSelectedSkin().sprite];
image_xscale = sprites_size_array[state];
image_yscale = sprites_size_array[state];
yscale = image_yscale
#endregion

if global.paused = false {
image_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
// Feather disable once GM1022
	if (image_angle > 90) && (image_angle < 270) 
	{
		image_yscale = -(yscale)
	} 
	else 
	{
		image_yscale = (yscale)
	}
};
//draw_text(x,y,string(state))
//draw_text(x,y+16,string(weaponState))
