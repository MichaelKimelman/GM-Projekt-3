// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Unit(){

}





///
///
///
function UnitClickGetTargetPosition()
{
	if(selected && mouse_check_button_pressed(mb_left))
	{
		xTargetPosition = mouse_x;
		yTargetPosition = mouse_y;
		state = UNITSTATE.MOVE;
		if(instance_exists(oClick))
		{
			with(oClick)
			{
				instance_destroy();
			}
		}
		
		instance_create_layer(mouse_x, mouse_y,"Instances", oClick);
	}
}



///
///
///
function UnitMoveToTarget()
{
	UnitClickGetTargetPosition()
	var dir = point_direction(x, y, xTargetPosition, yTargetPosition);
	
	xSpd = lengthdir_x(moveSpd, dir);
	ySpd = lengthdir_y(moveSpd, dir);
	
	var _dist = point_distance(x, y, xTargetPosition, yTargetPosition);
	if( _dist < moveSpd )
	{
		xSpd = _dist;
		ySpd = _dist;
		
		x += xSpd;
		y += ySpd;
		state = UNITSTATE.IDLE;
	}
	x += xSpd;
	y += ySpd;
	
	//if((x == xTargetPosition && y == yTargetPosition) || )
	//{
	//	xTargetPosition = 0;
	//	yTargetPosition = 0;
	//	state = UNITSTATE.IDLE;
	//}
}