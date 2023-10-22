draw_self();

image_xscale = 3;
image_yscale = 3;
if instance_exists(obj_dragon)
{
	image_angle = obj_dragon.angle;
}

image_alpha -= 0.05;
