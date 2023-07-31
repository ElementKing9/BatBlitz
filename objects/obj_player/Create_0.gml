#region Key binds
key_up = ord("W");
key_down = ord("S");
key_left = ord("A");
key_right = ord("D");
key_dash = vk_shift;

#endregion


playerLevel = 2;
levelUp = false
weapon = 0

movementSpeed = 5;

if global.gameMode = 0 {playerMaxHealth = 50 + (playerLevel * 10)}
if global.gameMode = 1 {playerMaxHealth = 50 + (playerLevel * 5)}
hp = playerMaxHealth;

iFrames = 0
iFramesTimerEnabled = false

playerCurrentEXP = 0;
playerMaxEXP = 100 + round(((100 * (playerLevel - 1)) * 1.1) - 110)

playerGold = 0

instaKill = false;
isAlive = true;
canShoot = true;
canLazer = true;

noPierce = false;

combo = 1
comboTime = (alarm_get(0))
comboCanBeDrawn = true
maxCombo = false;

deathSndPlayedYet = false;
deathLoopDoneYet = false;

global.pathFinding = true
debugValuesDisplay = false
debugBatCounter = false

global.paused = false

if global.gameMode = 0 {audio_play_sound(mus_battle, 5, true)};
if global.gameMode = 1 {audio_play_sound(mus_battle3, 5, true)};

sFrame = 0;

fireballs = 0;
