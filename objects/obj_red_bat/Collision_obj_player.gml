if !other.iFrames >= 1
{
	switch global.gameMode
	{
		case 0:
			ChangeHealth(other, -60);
		break;
		case 1:
			ChangeHealth(other, -80);
		break;
	}
}

other.iFrames += 1

with(self)
instance_destroy()
