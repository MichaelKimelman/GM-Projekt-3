/// @description Insert description here
// You can write your code in this editor

if(!global.gamePaused)
{
	//if(object_get_name(object_index) != "oUIAbilityButton")
	//{
	
	//position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), object_index)
		//instanceMeeting = instance_position(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), pDisplay)
	
		//if(instanceMeeting != noone)
		//{
		//	instanceMeeting.hovering = true;
		//}
		//else
		//{
		//	instanceMeeting.hovering = false;
		//}
		
		//if(object_get_name(object_index) != "oUIAbilityButton")
		//{	
		//	if(hovering)
		//	{
		//		image_index = 1;
		//	}
		//	else
		//	{
		//		image_index = 0
		//	}
		//}
		//else
		//{
		//	if(hovering)
		//	{
		//		image_index = 3;
		//	}
		//	else if(!hovering)
		//	{
		//		image_index = 0
		//	}
		//}
	//}
	
	
	if(instance_exists(creatorEntityId))
	{
		with(creatorEntityId)
		{
			if(selected == false)
			{
				other.markedForDestruction = true;
			}
		}
	}
	else
	{
		instance_destroy();
	}
	
	if(markedForDestruction)
	{
		instance_destroy();
	}
}