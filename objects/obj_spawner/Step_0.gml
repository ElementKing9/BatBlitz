batsExist = instance_exists(obj_bat);
tankExist = instance_exists(obj_tank_bat);
dragonExist = instance_exists(obj_dragon);
blueBatAmount = power(obj_player.playerLevel, 1.1) + 1
redBatAmount = power(obj_player.playerLevel, 1.1) - 5
purpleBatAmount = power(obj_player.playerLevel, 1.1) - 12

if (obj_player.isAlive = true) 
{
	if global.gameMode = 0
	{
		if !spawnFirstWave
		{
			CreateBats(obj_bat, blueBatAmount, false)
			spawnFirstWave = true;
		}
		if !batsExist && spawnFirstWave && obj_player.playerLevel < 22
		{
			CreateBats(obj_bat, blueBatAmount, true)
			CreateBats(obj_red_bat, redBatAmount, true)
			CreateBats(obj_purple_bat, purpleBatAmount, true)
			if !tankExist && obj_player.playerLevel >= 17 && !dragonExist
			{
				CreateBats(obj_tank_bat, 1, true)
			}
		}
		if spawnFirstWave && obj_player.playerLevel >= 22 && alarm[0] <= 0
		{
			alarm[0] = (600-(obj_player.playerLevel*1.5))
		}
		
	}
	
	if global.gameMode = 1
	{
		if !spawnFirstWave
		{
			CreateBats(obj_bat, blueBatAmount, false)
			spawnFirstWave = true;
		}
		if spawnFirstWave && obj_player.playerLevel < 22 && alarm[1] <= 0
		{
			alarm[1] = 600
		}
		if spawnFirstWave && obj_player.playerLevel >= 22 && alarm[2] <= 0
		{
			alarm[2] = (600-(obj_player.playerLevel*1.5))
		}
	}
	
	 // Check if the value is a multiple of 10 using the modulo operator
    if ((obj_player.playerLevel-1) % 10 == 0 && !megaBatCreated && obj_player.playerLevel > 2) {
        // Create a new instance of an object
        instance_create_layer(random(room_width), random(room_height), "Instances", obj_dragon);
        megaBatCreated = true;
    }

    // Reset the instanceCreated variable if the value is not a multiple of 10
    if ((obj_player.playerLevel-1) % 10 != 0) {
        megaBatCreated = false;
    }
	
	
}
