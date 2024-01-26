/// @description Insert description here
// You can write your code in this editor


//escButton = keyboard_check_pressed(vk_escape);

if(global.gamePaused)
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





if(!global.gamePaused)
{




///
/// GENERAL ALL ENCOMPASSING CLICK CHECK
///
	if(mouse_check_button(mb_left))
	{
		if(mouseXFirstClick == 0 && mouseYFirstClick == 0)
		{
			mouseXFirstClick = mouse_x;
			mouseYFirstClick = mouse_y;
		}
		
		//CODE
		if(position_meeting(mouseXFirstClick, mouseYFirstClick, oEntity))
		{
			mouseClick = true;
		}
		else
		{
			mouseHeld = true;
		}
		
		clickedUIButton = instance_position(window_mouse_get_x(), window_mouse_get_y(), oUIAbilityButton);
		
		//if(_uiListSize > 0)
		//{
		//	uiClicked = true;
		//	for(var i = 0; i <_uiListSize; i++)
		//	{
		//		var _objName = object_get_name(interactedUIElements[| i].object_index);
		//		if(_objName == "oUIAbilityButton")
		//		{
		//			clickedUIButton = interactedUIElements[| i];
		//		}
		//	}
		//}
		
		
		if(mouseHeld && clickedUIButton != noone)
		{
			
			
			buttonClicked = true;
			//var _objName = object_get_name(clickedUIButton.object_index);
			//_objName == "oUIAbilityButton"
			//if()
			//{
			//	
			//}
		}
		else
		{
			if(ds_list_size(selectedUnitsList) > 0)
			{
				for(var i = 0; i < ds_list_size(selectedUnitsList); i++)
				{
					with(selectedUnitsList[| i])
					{
						selected = false;
						action1Selected = false;
						selectedAbility = ABILITY.ZERO;
						//var oIndex = object_index;
						//var oIndexName = object_get_name(object_index);
						//var oIndexParentName = object_get_name(object_get_parent(object_index));
						if(object_get_name(object_get_parent(object_index)) == "oUnit")
						{
							groupSelected = false;
						}
					}
				}
				ds_list_clear(selectedUnitsList);
			 }
		}
		
		
		
		
		mouseXCurrent = mouse_x;
		mouseYCurrent = mouse_y;
	}
	
	
	
	//RELEASE MOUSE CLICK FUNCTIONALITY
	if(mouse_check_button_released(mb_left))
	{
	
		if(mouseClick /*&& !uiClicked*/)
		{
			var _unit = collision_point(mouseXFirstClick, mouseYFirstClick, oEntity, false, true);
		
			ds_list_add(selectedUnitsList, _unit);
			with(_unit)
			{
				selected = true;
			}
		}
		else if(mouseHeld &&/* !uiClicked && */!buttonClicked)
		{
			var _listSize = collision_rectangle_list(mouseXFirstClick, mouseYFirstClick, mouseXCurrent, mouseYCurrent, oUnit, false, true, selectedUnitsList, false);
			
			if(ds_list_size(selectedUnitsList) == 0)
			{
				_listSize = collision_rectangle_list(mouseXFirstClick, mouseYFirstClick, mouseXCurrent, mouseYCurrent, oBuilding, false, true, selectedUnitsList, false);
				
				if(ds_list_size(selectedUnitsList) > 1)
				{
					ds_list_clear(selectedUnitsList);
				}
				
			}
	
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
		}
		else if(/*uiClicked &&*/ buttonClicked)
		{
			//show_debug_message("Button: " + string(clickedUIButton));
			
			with(clickedUIButton.creatorEntityId)
			{
				if(object_get_name(object_get_parent(id.object_index)) == "oUnit")
				{
					if(selectedAbility == other.clickedUIButton.abilityNumber)
					{
						selectedAbility = ABILITY.ZERO;
					}
					else
					{
						selectedAbility = other.clickedUIButton.abilityNumber;
					}
				}
				else if(object_get_name(object_get_parent(id.object_index)) == "oBuilding")
				{
					commitedAbility = other.clickedUIButton.abilityNumber;
					
				}
				
				
			}
		}
			
		
		mouseXFirstClick = 0;
		mouseYFirstClick = 0;
		
		mouseXCurrent = 0;
		mouseYCurrent = 0;
		
		mouseClick = false;
		mouseHeld = false;
		uiClicked = false;
		buttonClicked = false;
		
		clickedUIButton = noone;
		ds_list_clear(interactedUIElements);
		
		//ds_list_clear(_list);
		//testMouseButtonReleased++;
	}
	
	
	
	
	///
	///CHECK HOVER BEHAVIOUR
	///
	//instanceMeeting = instance_position(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), pDisplay);
	//
	//if(instanceMeeting != noone)
	//{
	//	instanceMeeting.hovering = true;
	//}
	//else
	//{ 
	//	with(pDisplay)
	//	{
	//		if(instance_position(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id) == noone)
	//		{
	//			hovering = false;
	//		}
	//		
	//	}
	//}
	
	//instanceMeeting = instance_position(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), pDisplay);
}







//OLD CODE
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

//SELECT UNIT(S) RECTANGLE COORDINATES FOR DRAW/COLLISION
//if(mouse_check_button(mb_left) && mouseHeldDown > 11)
//{
//	//if(mouseHeldDown < 2)
//	//{
//		//mouseHeldDown++;
//	//}
//	if(ds_list_size(selectedUnitsList) > 0)
//	{
//		for(var i = 0; i < ds_list_size(selectedUnitsList); i++)
//		{
//			with(selectedUnitsList[| i])
//			{
//				selected = false;
//				action1Selected = false;
//				groupSelected = false;
//			}
//		}
//		ds_list_clear(selectedUnitsList);
//	}
	
//	//selecting = true;
//	if(mouseXFirstClick == 0 && mouseYFirstClick == 0)
//	{
//		mouseXFirstClick = mouse_x;
//		mouseYFirstClick = mouse_y;
//	}
	
//	mouseXCurrent = mouse_x;
//	mouseYCurrent = mouse_y;
//	//testMouseButtonContinualPressed++;
	
//}

//MOUSE PRESS SELECT UNIT/BUILDING
//(position_meeting(mouse_x, mouse_y, oUnit) || position_meeting(mouse_x, mouse_y, oBuilding))

//if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, oEntity) && mouseHeldDown < 12)//SOMETHING NOT RIGHT///
//{
//	//mouseHeldDown++;
	
//	if(mouseHeldDown < 2)
//	{
	
//		for(var i = 0; i < ds_list_size(selectedUnitsList); i++)
//		{
//			with(selectedUnitsList[| i])
//			{
//				selected = false;
//				action1Selected = false;
//				groupSelected = false;
//			}
//		}
//		ds_list_clear(selectedUnitsList);
//	}
	
//	if(mouseHeldDown < 2)
//	{
//		var _unit = collision_point(mouse_x, mouse_y, oEntity, false, true);
	
//		ds_list_add(selectedUnitsList, _unit);
//		with(_unit)
//		{
//			selected = true;
//		}
//	}
	
	
//	//switch(_unit.object_index)
//	//{
//	//	case oUnit:
//	//	
//	//	break;
//	//	
//	//	case oBuilding
//	//}
//		//collision_point(mouse_x, mouse_y,oUnit)
//}
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

