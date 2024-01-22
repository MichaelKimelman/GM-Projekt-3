/// @description Insert description here
// You can write your code in this editor


//entityScript
oneButton = keyboard_check_pressed(ord("1"));
twoButton = keyboard_check_pressed(ord("2"));
threeButton = keyboard_check_pressed(ord("3"));
fourButton = keyboard_check_pressed(ord("4"));
fiveButton = keyboard_check_pressed(ord("5"));

if(!global.gamePaused)//PUT IN ENTITY STEP ALSO FROM oBuilding
{
	//entityScript
	if(entityScript[state] != -1)
	{
		script_execute_ext(entityScript[state],[]);
	}
}