var pushX = lengthdir_x(push,image_angle-180);
var pushY = lengthdir_y(push,image_angle-180);

x = lerp(obj_player.x , obj_player.x + pushX, 0.6);
y = lerp(obj_player.y , obj_player.y + pushY, 0.6);
state = weaponState

push -= 1;
if state == 3 {push = clamp(push, 0, 100);}
else {push = clamp(push, 0, 10);}


//gun sdtuff
if global.paused = false {
	if state == 0{
		if obj_player.canShoot 
		{
			if (mouse_check_button(mb_left)) 
			{
				obj_player.canShoot = false;
				alarm[0] = 20
				push = 10;
				pistolBullets();
				audio_play_sound(snd_shoot,1,0)
			}
		}
	}

	if state == 1{
		if obj_player.canShoot 
		{
			if (mouse_check_button(mb_left)) 
			{
				obj_player.canShoot = false;
				alarm[0] = 40
				push = 30;
				shotgunBullets();
				shotgunBullets();
				shotgunBullets();
				shotgunBullets();
				shotgunBullets();
				shotgunBullets();
				shotgunBullets();
				shotgunBullets();
				audio_play_sound(snd_shoot,1,0)
		
			}
		}
	}

	if state == 2{
		if obj_player.canShoot && (mouse_check_button(mb_left)) {
			obj_player.canShoot = false;
			alarm[0] = 5
			push = 10;
			arBullets();
			audio_play_sound(snd_shoot,1,0)
		
		}
	}
	
	if state == 3{
		if obj_player.canLazer
		{
			if (mouse_check_button(mb_left)) 
			{
				obj_player.canLazer = false;
				audio_play_sound(snd_charge,1,0)
				alarm[1] = 140
			
			}
		}
	}
	
	if state == 4{
		if obj_player.canShoot && (mouse_check_button(mb_left)) {
			obj_player.canShoot = false;
			alarm[0] = 1
			push = 10;
			shotgunBullets();
			shotgunBullets();
			arBullets();
			arBullets();
			Lazers();
			Fireball();
			Fireball();
			audio_play_sound(snd_shoot,1,0)
		
		}
	}
};

if (keyboard_check_pressed(ord("R")) || mouse_check_button_pressed(2)) && obj_player.fireballs >= 1
{
	Fireball();
	audio_play_sound(snd_fireball_shoot, 2, 0);
	obj_player.fireballs -= 1
}


if (obj_player.hp <= 0) {
	instance_destroy()
}

if (keyboard_check_pressed(ord("Q"))) {
    weaponState++;
    if (weaponState == 1 && obj_shop.canBuyShotgun) {
        weaponState++;
    }
    if (weaponState == 2 && obj_shop.canBuyAr) {
        weaponState++;
    }
    if (weaponState == 3 && obj_shop.canBuyLazer) {
        weaponState++;
    }
    //if (weaponState == 4 && enableGod) {
    //    weaponState++;
    //}
    audio_stop_sound(snd_charge);
}

if (keyboard_check_pressed(ord("E"))) {
    weaponState--;
    //if (weaponState == 4 && enableGod) {
    //    weaponState--;
    //}
    if (weaponState == 3 && obj_shop.canBuyLazer) {
        weaponState--;
    }
    if (weaponState == 2 && obj_shop.canBuyAr) {
        weaponState--;
    }
    if (weaponState == 1 && obj_shop.canBuyShotgun) {
        weaponState--;
    }
    audio_stop_sound(snd_charge);
}
depth = obj_player.depth - 1;
sprite_index = sprites_array[state, obj_system.playerSkin.sprite];
lazerCd = alarm_get(2);
if weaponState > 3 && !enableGod {weaponState = 0; audio_stop_sound(snd_charge)}
if weaponState < 0 {
	weaponState = 3
	if weaponState == 3 && obj_shop.canBuyLazer {weaponState--}
	if weaponState == 2 && obj_shop.canBuyAr {weaponState--}
	if weaponState == 1 && obj_shop.canBuyShotgun {weaponState--}
	audio_stop_sound(snd_charge);
};


