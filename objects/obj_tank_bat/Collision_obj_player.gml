if !other.iFrames >= 1
{
	switch global.gameMode
	{
		case 0:
			ChangeHealth(other, -round(obj_player.hp/10));
		break;
		case 1:
			ChangeHealth(other, -round(obj_player.hp/8));
		break;
	}
}

other.iFrames += 1

with(self)
instance_destroy()


alarm[3] = 1

randx = irandom_range(0, 50)
randy = irandom_range(0, 50)
neg1 = irandom_range(0,1)
neg2 = irandom_range(0,1)

if neg1 = 1 {
	randx *= -1
}
if neg2 = 1 {
	randy *= -1
}


