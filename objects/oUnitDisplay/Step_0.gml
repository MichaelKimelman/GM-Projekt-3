/// @description Insert description here
// You can write your code in this editor

if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), oUnitDisplay))
{
	hovering = true;
}
else
{
	hovering = false;
}

if(hovering)
{
	image_index = 1;
}
else
{
	image_index = 0
}

if(instance_exists(creatorUnitId))
{
	with(creatorUnitId)
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