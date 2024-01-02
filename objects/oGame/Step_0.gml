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

//SELECT UNIT(S) RECTANGLE COORDINATES FOR DRAW/COLLISION
if(mouse_check_button(mb_left))
{
	for(var i = 0; i < ds_list_size(selectedUnitsList); i++)
	{
		with(selectedUnitsList[| i])
		{
			selected = false;
		}
	}
	ds_list_clear(selectedUnitsList);
	//selecting = true;
	if(mouseXFirstClick == 0 && mouseYFirstClick == 0)
	{
		mouseXFirstClick = mouse_x;
		mouseYFirstClick = mouse_y;
	}
	
	mouseXCurrent = mouse_x;
	mouseYCurrent = mouse_y;
	//testMouseButtonContinualPressed++;
	
}

//SELECT UNIT(S) FUNCTIONALITY
if(mouse_check_button_released(mb_left))
{
	var _list = ds_list_create();
	//selecting = false
	//_list = 
	
	var _listSize = collision_rectangle_list(mouseXFirstClick, mouseYFirstClick, mouseXCurrent, mouseYCurrent, oUnit, false, true, selectedUnitsList, false);
	
	//if(ds_list_size(_list) != 0)
	//{
		for(var i = 0; i < _listSize; i++)
		{
			with(selectedUnitsList[| i])
			{
				selected = true;
			}
		}
	//}
	
	mouseXFirstClick = 0;
	mouseYFirstClick = 0;
	
	mouseXCurrent = 0;
	mouseYCurrent = 0;
	
	ds_list_clear(_list);
	//testMouseButtonReleased++;
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

