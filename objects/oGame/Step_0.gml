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
			action1Selected = false;
			groupSelected = false;
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

//MOUSE PRESS SELECT UNIT/BUILDING
//(position_meeting(mouse_x, mouse_y, oUnit) || position_meeting(mouse_x, mouse_y, oBuilding))

if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, oEntity))//SOMETHING NOT RIGHT///
{
	for(var i = 0; i < ds_list_size(selectedUnitsList); i++)
	{
		with(selectedUnitsList[| i])
		{
			selected = false;
			action1Selected = false;
			groupSelected = false;
		}
	}
	ds_list_clear(selectedUnitsList);
	
	var _unit = collision_point(mouse_x, mouse_y, oEntity, false, true);
	
	ds_list_add(selectedUnitsList, _unit);
	with(_unit)
	{
		selected = true;
	}
	
	//switch(_unit.object_index)
	//{
	//	case oUnit:
	//	
	//	break;
	//	
	//	case oBuilding
	//}
		//collision_point(mouse_x, mouse_y,oUnit)
}
	//else if(mouse_check_button_pressed(mb_left))
	//{
	//	for(var i = 0; i < ds_list_size(selectedUnitsList); i++)
	//	{
	//		with(selectedUnitsList[| i])
	//		{
	//			selected = false;
	//			action1Selected = false;
	//			groupSelected = false;
	//		}
	//	}
	//}


//SELECT UNIT(S) FUNCTIONALITY
if(mouse_check_button_released(mb_left) && !mouse_check_button_pressed(mb_left))
{
	//var _list = ds_list_create();
	//selecting = false
	//_list = 
	
	var _listSize = collision_rectangle_list(mouseXFirstClick, mouseYFirstClick, mouseXCurrent, mouseYCurrent, oUnit, false, true, selectedUnitsList, false);
	
	//if(ds_list_size(_list) != 0)
	//{
	if(ds_list_size(selectedUnitsList) == 1)
	{
		with(selectedUnitsList[| 0])
		{
			selected = true;
		}
	}
	else if(ds_list_size(selectedUnitsList) > 1)
	{
		for(var i = 0; i < _listSize; i++)//FIX 1/MANY UNIT(S) SELECTED( if ds list size == 1 -> selected/
		{								  //else if ds list size > 1 -> groupselected
			with(selectedUnitsList[| i])
			{
				groupSelected = true;
			}
		}
	}
	else
	{
		
	}
		
	//}
	
	mouseXFirstClick = 0;
	mouseYFirstClick = 0;
	
	mouseXCurrent = 0;
	mouseYCurrent = 0;
	
	//ds_list_clear(_list);
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

