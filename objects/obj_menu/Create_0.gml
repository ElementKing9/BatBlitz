#macro MENU_WIDTH 512
#macro MENU_HEIGHT 436

op_border = 16;
op_space = 32;

pos = 0;

ini_open("saveData.ini")
fullscreenFunc = ini_read_real("Settings", "Fullscreen", true)
ini_close()


//Main Menu CASE 0
option[0, 0] = "Start Game";
option[0, 1] = "Hard Mode";
option[0, 2] = "Slime Coin Shop";
option[0, 3] = "Settings";
option[0, 4] = "Credits";
option[0, 5] = "Discord";
option[0, 6] = "Quit Game";

//Settings Menu CASE 1
option[1, 0] = "Fullscreen";
option[1, 1] = "Toggle Music";
option[1, 2] = "Toggle SFX";
option[1, 3] = "Toggle FPS Counter";
option[1, 4] = "Reset All Data";
option[1, 5] = "Back";

//Reset All Data CASE 2
option[2, 0] = "Confirm";
option[2, 1] = "Go Back!!!";


//Skins Menu
SetSkinsMenuText();




//Slime Coin Options CASE 4
option[4, 0] = "Skins"
option[4, 1] = "Backgrounds"
option[4, 2] = "Back"

//Slime Coin Backgrounds CASE 5 
SetBackgroundsMenuText();


op_length = 0;
menu_level = 0;



