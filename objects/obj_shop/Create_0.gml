#macro SHOP_WIDTH 320
#macro SHOP_HEIGHT 416


lockShop = false
canBuyAmmo = false;
canBuyUpgradesExclusive = false;
canBuyUpgrades = false;
canBuyWeapons = false;





op_border = 16;
op_space = 32;

pos = 0;

//Buy Limit Variables
shotgunBuy = 0;
shotgunBuyLimit = 1;
canBuyShotgun = true;
shotgunPrice = 2500;

arBuy = 0;
arBuyLimit = 1;
canBuyAr = true;
arPrice = 7500;

lazerBuy = 0;
lazerBuyLimit = 1;
canBuyLazer = true;
lazerPrice = 15000;


speedBuy = 0;
speedBuyLimit = 5;
speedPrice = 750
canBuySpeed = true;

healthBuy = 0;
healthBuyLimit = 1;
canBuyHealth = true;
healthPrice = 500;


poisonBuy = 0;
poisonBuyLimit = 1;
canBuyPoison = true;
poisonPrice = 1000;

frostBuy = 0;
frostBuyLimit = 1;
canBuyFrost = true;
frostPrice = 1000;

lifeStealBuy = 0;
lifeStealBuyLimit = 1;
canBuyLifeSteal = true;
lifeStealPrice = 3500;

fireballBuy = 0;
fireballBuyLimit = 10;
fireballs = 0;
fireballPrice = 5000
canBuyFireball = true;


//Q and E text
weaponGuide = false
//Main Shop
option[0, 0] = "Weapons";
option[0, 1] = "Upgrades";

//Weapons
option[1, 0] = "Shotgun - 2500";
option[1, 1] = "Auto Rifle - 7500";
option[1, 2] = "Lazer - 15000";
option[1, 3] = "Go Back";

//Upgrades
option[2, 0] = "Ammo Upgrades";
option[2, 1] = "Speed Up - 750"
option[2, 2] = "Health Rgn - 500";
option[2, 3] = "Heal 50 HP - 500";
option[2, 4] = "+1 Fireball - 5000";
option[2, 5] = "Go Back";

//Ammo Upgrades
option[3, 0] = "Fire Blts - 1000";
option[3, 1] = "Frost Blts - 1000";
option[3, 2] = "Life Steal - 3500";
option[3, 3] = "Go Back";

op_length = 0;
menu_level = 0;
