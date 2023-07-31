//Draw the sprite
draw_self();

//Draw health bar
if (hp < maxHp){
	draw_healthbar(x-16,y-16,x+16,y-14, (hp/maxHp)*100,c_black,c_red,c_green,0,true,true)
}

if x < obj_player.x {
	image_xscale = -1;
}

if x >= obj_player.x {
	image_xscale = 1;
}