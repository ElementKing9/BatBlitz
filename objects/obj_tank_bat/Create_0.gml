spd = 1;
spd1 = 2.5;
//are we chasing the player?
alert = false;
//distance we can start chasing the player
alert_dis = 160;

while(place_meeting(x,y,obj_bat_blocker))
{
	x = random(room_width);
	y = random(room_height);
}
pathFinding = true
shouldUpdateAngle = true
poisonTimer2 = false

maxHp = 200 * round(1+(obj_player.playerLevel / 4));
hp = maxHp;

if global.gameMode = 0  && ValueInRange(obj_player.playerLevel, 2, 6) {spd = max(2.5, random(4))};
if global.gameMode = 1  && ValueInRange(obj_player.playerLevel, 2, 6) {spd = max(3.5, random(5.5))};

if global.gameMode = 0  && ValueInRange(obj_player.playerLevel, 7, 11) {spd = max(3.5, random(5))};
if global.gameMode = 1  && ValueInRange(obj_player.playerLevel, 7, 11) {spd = max(4.5, random(6.5))};

if global.gameMode = 0  && ValueInRange(obj_player.playerLevel, 12, 16) {spd = max(4.5, random(6))};
if global.gameMode = 1  && ValueInRange(obj_player.playerLevel, 12, 16) {spd = max(5.5, random(7.5))};

if global.gameMode = 0  && ValueInRange(obj_player.playerLevel, 17, 21) {spd = max(5.5, random(7))};
if global.gameMode = 1  && ValueInRange(obj_player.playerLevel, 17, 21) {spd = max(6.5, random(8.5))};

if global.gameMode = 0  && obj_player.playerLevel > 21 {spd = max(6.5, random(8))};
if global.gameMode = 1  && obj_player.playerLevel > 21 {spd = max(7.5, random(9.5))};

if global.gameMode = 0  {killPoints = 1000};
if global.gameMode = 1  {killPoints = 2000};

//Lazer timer
alarm[6] = 600;



