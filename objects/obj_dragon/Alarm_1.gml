bullet = instance_create_layer(x,y, "BulletLayer", obj_bullet_enemy);
bullet.image_angle = image_angle;
bullet.speed = 12;
bullet.direction = point_direction(x, y, obj_player.x, obj_player.y);
bullet.image_xscale = 2;
bullet.image_yscale = 2;
alarm[2] = 8;