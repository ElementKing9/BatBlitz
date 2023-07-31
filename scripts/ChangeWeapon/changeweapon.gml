function ChangeWeapon(){
var i = obj_weapon.state;

if (i == 0) {
	    if (!obj_shop.canBuyShotgun) {
	        weaponState = weaponState.Shotgun;
	    } else {
	        i++;
	    }
	} else if (i == 1) {
	    if (!obj_shop.canBuyAr) {
	        weaponState = weaponState.AR;
	    } else {
	        i++;
	    }
	} else if (i == 2) {
	    if (!obj_shop.canBuyLazer) {
	        weaponState = weaponState.Lazer;
	    } else {
	        i++;
	    }
	} else if (i == 3) {
	    i = 0;
	}
}