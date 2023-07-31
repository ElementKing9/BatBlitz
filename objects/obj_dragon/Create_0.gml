dragonSprite = spr_dragon_blue
shouldUpdateAngle = true;

enum dragonState 
{
	Blue,
	Red,
	Purple,
	White,
	Gold
}
dragonState = dragonState.Blue
if obj_player.playerLevel <= 41
{
	switch((obj_player.playerLevel-1)/10)
	{
		case(1): dragonState = dragonState.Blue; break;
		case(2): dragonState = dragonState.Red; break;
		case(3): dragonState = dragonState.Purple; break;
		case(4): dragonState = dragonState.White; break;
	}
}
else
{
	dragonState = dragonState.White;
}
// 1/50 chance
if (Chance(0.02)) 
{
	dragonState = dragonState.Gold;
}
//SWITCH SPRITE
switch(dragonState)
{
	case(dragonState.Blue): dragonSprite = spr_dragon_blue; break;
	case(dragonState.Red): dragonSprite = spr_dragon_red; break;
	case(dragonState.Purple): dragonSprite = spr_dragon_purple; break;
	case(dragonState.White): dragonSprite = spr_dragon_white; break;
	case(dragonState.Gold): dragonSprite = spr_dragon_gold; break;
}
//SWITCH SPEED
switch(dragonState)
{
	case(dragonState.Blue): spd = 6; break;
	case(dragonState.Red): spd = 8; break;
	case(dragonState.Purple): spd = 7; break;
	case(dragonState.White): spd = 10; break;
	case(dragonState.Gold): spd = 8; break;
}
//SWITCH REWARD
switch(dragonState)
{
	case(dragonState.Blue): killReward = irandom_range (1000,1500); break;
	case(dragonState.Red): killReward = irandom_range (1500,2000); break;
	case(dragonState.Purple): killReward = irandom_range (3000,4500); break;
	case(dragonState.White): killReward = irandom_range (5000,10000); break;
	case(dragonState.Gold): killReward = irandom_range (10000,15000); break;
}






while(place_meeting(x,y,obj_bat_blocker))
{
	x = random(room_width);
	y = random(room_height);
}
pathFinding = true


maxHp = 3000 + (obj_player.playerLevel * 10);
hp = 1;
hasRunHealAnimation = false;


if global.gameMode = 0  {killPoints = 5000};
if global.gameMode = 1  {killPoints = 10000};

batName = NameGen()


if dragonState = dragonState.Purple
{
	alarm[0] = 180;
}


if dragonState = dragonState.White
{
	alarm[5] = 400;
}


instance_destroy(obj_tank_bat);
instance_destroy(obj_lazer_enemy);
instance_destroy(obj_lazer_warning);