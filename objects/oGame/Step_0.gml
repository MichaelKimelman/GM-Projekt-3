/// @description Insert description here
// You can write your code in this editor


//escButton = keyboard_check_pressed(vk_escape);

if(!global.gamePaused)
{
	if(keyboard_check_pressed(vk_escape))
	{
		global.gamePaused = false;
	}
}
else
{
	if(keyboard_check_pressed(vk_escape))
	{
		global.gamePaused = true;
	}
}

//SELECT UNIT(S)
if(mouse_check_button(mb_left))
{
	selecting = true;
	if(mouseXFirstClick == 0 && mouseYFirstClick == 0)
	{
		mouseXFirstClick = mouse_x;
		mouseYFirstClick = mouse_y;
	}
	
	mouseXCurrent = mouse_x;
	mouseYCurrent = mouse_y;
	//testMouseButtonContinualPressed++;
	
}

//if(selecting)
//{
//	rectangleDrawBuffer++;
	
//	if(rectangleDrawBuffer >= 30)
//	{
//		rectangleDrawBuffer = 0;
//	}
//}else
//{
//	rectangleDrawBuffer = 0;
//}

if(mouse_check_button_released(mb_left))
{
	//selecting = false
	mouseXFirstClick = 0;
	mouseYFirstClick = 0;
	//testMouseButtonReleased++;
}