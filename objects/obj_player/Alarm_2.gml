instaKill = false;

BulletPower = (log2(playerLevel)*15)+1
if obj_player.weapon == 1 {BulletPower = ((log2(playerLevel)*100)+1)/10}
if obj_player.weapon == 2 {BulletPower = ((log2(playerLevel)*100)+1)/2}