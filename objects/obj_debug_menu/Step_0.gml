if keyboard_check(vk_f4)
{
	debugMenuOpen = false;
}

if keyboard_check(vk_f1) && keyboard_check(ord("K")) && keyboard_check(vk_lcontrol)
{
	debugMenuOpen = true;
}