if global.gameMode = 0  && obj_player.playerLevel < 5 {spd = max(2.5, random(4)); spd1 = spd};
if global.gameMode = 1  && obj_player.playerLevel < 5 {spd = max(4, random(6)); spd1 = spd}; 

if global.gameMode = 0  && obj_player.playerLevel < 10 && obj_player.playerLevel >= 5 {spd = max(3.5, random(5)); spd1 = spd};
if global.gameMode = 1  && obj_player.playerLevel < 10 && obj_player.playerLevel >= 5 {spd = max(5, random(6.5)); spd1 = spd};

if global.gameMode = 0  && obj_player.playerLevel < 15 && obj_player.playerLevel >= 10 {spd = max(4.5, random(6)); spd1 = spd};
if global.gameMode = 1  && obj_player.playerLevel < 15 && obj_player.playerLevel >= 10 {spd = max(6.2, random(7.6)); spd1 = spd};

if global.gameMode = 0  && obj_player.playerLevel < 20 && obj_player.playerLevel >= 15 {spd = max(5.5, random(7)); spd1 = spd};
if global.gameMode = 1  && obj_player.playerLevel < 20 && obj_player.playerLevel >= 15 {spd = max(7.3, random(8.9)); spd1 = spd};

if global.gameMode = 0  && obj_player.playerLevel > 20 {spd = max(6.5, random(8)); spd1 = spd};
if global.gameMode = 1  && obj_player.playerLevel > 20 {spd = max(9, random(12)); spd1 = spd};