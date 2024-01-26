/// @description Insert description here
// You can write your code in this editor




if(!global.gamePaused)
{
	camera_set_view_size(view, view_width*window_scale, view_height*window_scale);
	
	var _x = camera_get_view_x(view);
	var _y = camera_get_view_y(view);
	
	if(mouse_check_button(mb_middle))
	{
		if(mouseXFirstClick == 0 &&	mouseYFirstClick == 0)
		{
			mouseXFirstClick = window_mouse_get_x();
			mouseYFirstClick = window_mouse_get_y();
		}
		
		moveDir = point_direction(mouseXFirstClick, mouseYFirstClick, window_mouse_get_x(), window_mouse_get_y());
		
		var _xSpd = 0;
		var _ySpd = 0;
			
		if(point_distance(mouseXFirstClick, mouseYFirstClick, window_mouse_get_x(), window_mouse_get_y()) > 50 && point_distance(mouseXFirstClick, mouseYFirstClick, window_mouse_get_x(), window_mouse_get_y()) < 250 )
		{
			
			_xSpd = lengthdir_x(4, moveDir);
			_ySpd = lengthdir_y(4, moveDir);
			
			
		}
		else if(point_distance(mouseXFirstClick, mouseYFirstClick, window_mouse_get_x(), window_mouse_get_y()) > 249)
		{
			_xSpd = lengthdir_x(10, moveDir);
			_ySpd = lengthdir_y(10, moveDir);
		}
		
		camera_set_view_pos(view, clamp(_x + _xSpd,0, room_width-view_width), clamp(_y + _ySpd,0, room_width-view_height));
		
	}
	
	if(mouse_check_button_released(mb_middle))
	{
		mouseXFirstClick = 0;
		mouseYFirstClick = 0;
		
		mouseXCurrent = 0;//MAYBE JUST USE MOUSE_X/Y
		mouseYCurrent = 0;
	}
}
