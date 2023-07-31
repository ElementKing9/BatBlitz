#region states
enum weaponState {
	Pistol,
	Shotgun,
	AR,
	Lazer,
	God
}
///GREEN///
sprites_array[weaponState.Pistol , spr_player] = spr_pistol;
sprites_array[weaponState.Shotgun , spr_player] = spr_shotgun;
sprites_array[weaponState.AR , spr_player] = spr_ar;
sprites_array[weaponState.Lazer , spr_player] = spr_lazer;
sprites_array[weaponState.God , spr_player] = spr_sword;
///BLUE///
sprites_array[weaponState.Pistol , spr_player_blue] = spr_pistol_blue;
sprites_array[weaponState.Shotgun , spr_player_blue] = spr_shotgun_blue;
sprites_array[weaponState.AR , spr_player_blue] = spr_ar_blue;
sprites_array[weaponState.Lazer , spr_player_blue] = spr_lazer_blue;
sprites_array[weaponState.God , spr_player_blue] = spr_sword;
///RED///
sprites_array[weaponState.Pistol , spr_player_red] = spr_pistol_red;
sprites_array[weaponState.Shotgun , spr_player_red] = spr_shotgun_red;
sprites_array[weaponState.AR , spr_player_red] = spr_ar_red;
sprites_array[weaponState.Lazer , spr_player_red] = spr_lazer_red;
sprites_array[weaponState.God , spr_player_red] = spr_sword;
///PURPLE///
sprites_array[weaponState.Pistol , spr_player_purple] = spr_pistol_purple;
sprites_array[weaponState.Shotgun , spr_player_purple] = spr_shotgun_purple;
sprites_array[weaponState.AR , spr_player_purple] = spr_ar_purple;
sprites_array[weaponState.Lazer , spr_player_purple] = spr_lazer_purple;
sprites_array[weaponState.God , spr_player_purple] = spr_sword;
///STICK///
sprites_array[weaponState.Pistol , spr_player_stick] = spr_pistol_stick;
sprites_array[weaponState.Shotgun , spr_player_stick] = spr_shotgun_stick;
sprites_array[weaponState.AR , spr_player_stick] = spr_ar_stick;
sprites_array[weaponState.Lazer , spr_player_stick] = spr_lazer_stick;
sprites_array[weaponState.God , spr_player_stick] = spr_sword;




sprites_size_array[weaponState.Pistol] = 1;
sprites_size_array[weaponState.Shotgun] = 2.3;
sprites_size_array[weaponState.AR] = 2;
sprites_size_array[weaponState.Lazer] = 3.5;
sprites_size_array[weaponState.God] = 1;
#endregion

weaponState = weaponState.Pistol


push = 0;

enableGod = false;