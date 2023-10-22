collidable = true;
rng = irandom_range(1, 100)

//Insta Kill
if ValueInRange(rng,0,10)
{
	sprite = spr_skull
	powerupType = 0;
}

//Max Combo
if ValueInRange(rng,11,100)
{
	sprite = spr_coin
	powerupType = 1;
}

//if ValueInRange(rng,96,100)
//{
//	sprite = spr_god
//	powerupType = 2;
//}