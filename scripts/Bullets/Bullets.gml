function pistolBullets(){
		    bullet = instance_create_layer(x,y, "BulletLayer", obj_bullet);
			bullet.image_angle = image_angle;
			bullet.speed = (6 + obj_player.movementSpeed) - 5;
			bullet.direction = obj_weapon.image_angle
			obj_player.canShoot = false;
			alarm[0] = 20
			push = 10;
			audio_play_sound(snd_shoot,1,0)
};

function shotgunBullets(){
	var bullet = instance_create_layer(x,y, "BulletLayer", obj_bullet);
		bullet.image_angle = image_angle;
		bullet.speed = (6 + obj_player.movementSpeed) - 5;
		bullet.direction = irandom_range(image_angle-20, image_angle+20)
};

function arBullets(){
		var bullet = instance_create_layer(x,y, "BulletLayer", obj_bullet);
		bullet.image_angle = image_angle;
		bullet.speed = (8 + obj_player.movementSpeed) - 5;
		bullet.direction = irandom_range(image_angle-7, image_angle+7)
};

function Lazers(){
		var bullet = instance_create_layer(x,y, "BulletLayer", obj_lazer);
		bullet.image_angle = image_angle;
};
function Fireball(){
		    bullet = instance_create_layer(x,y, "BulletLayer", obj_fireball);
			bullet.image_angle = image_angle;
			bullet.speed = 20;
			bullet.direction = obj_weapon.image_angle
			//audio_play_sound(snd_shoot,1,0)
};
