draw_self();

sprite_index = FindSelectedSkin().sprite

if iFrames % 2 == 1
{
	image_alpha = 0.5;
}
else image_alpha = 1;

if instaKill
{
	var _layerId = layer_get_id("ScreenShake")
	layer_set_visible(_layerId, true);
}
else
{
	var _layerId = layer_get_id("ScreenShake")
	layer_set_visible(_layerId, false);
}


