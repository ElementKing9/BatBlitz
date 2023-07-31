if !other.iFrames >= 1
{
	switch global.gameMode
	{
		case 0:
			ChangeHealth(other, -round(obj_player.playerMaxHealth/4));
		break;
		case 1:
			ChangeHealth(other, -round(obj_player.playerMaxHealth/3));
		break;
	}
}

other.iFrames += 1


randx = irandom_range(0, 50)
randy = irandom_range(0, 50)
neg1 = irandom_range(0,1)
neg2 = irandom_range(0,1)

if neg1 = 1 {
	randx *= -3
}
if neg2 = 1 {
	randy *= -3
}

for (var i = 0; i<3; i++) {
    x+=randx; 
	y+=randy;
}


