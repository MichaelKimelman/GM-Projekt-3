/// @description Insert description here
// You can write your code in this editor


if(!global.gamePaused)
{
	if(buildingScript[state] != -1)
	{
		script_execute_ext(buildingScript[state],[]);
	}
}