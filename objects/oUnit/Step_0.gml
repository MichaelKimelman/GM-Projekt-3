/// @description Insert description here
// You can write your code in this editor
oneButton = keyboard_check_pressed(ord("1"));

if(!global.gamePaused)
{
	if(unitScript[state] != -1)
	{
		script_execute_ext(unitScript[state],[]);
	}
}