bulletTime = 300; //time the bullet is alive in frames
if obj_weapon.weaponState = 1 {bulletTime = 60}
if obj_weapon.weaponState = 2 {bulletTime = 240}
bulletType = 0;
lifeSteal = 0;
alarm[3] = bulletTime;
var _divisor
switch(obj_player.weapon){
	case 0:
		_divisor = 10;
	case 1:
		_divisor = 20;
	case 2:
		_divisor = 5;
	default: 
		_divisor = 1;
}

BulletPower = ((log2(obj_player.playerLevel)*100)+1)/_divisor

lifeSteal = false;

bulletSprite = spr_bullet
if CanBeDestroyed {
	alarm[1] = 720
}
