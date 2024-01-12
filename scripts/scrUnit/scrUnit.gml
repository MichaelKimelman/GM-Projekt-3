// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Unit(){

}





///
/// Spawn Confirmed Movement Animation, Set Target Coordinates, Change Unit State To Movement
///
function UnitClickGetTargetPosition()
{
	
	if(selected || groupSelected) //ADDED GROUPSELECT
	{
		CheckForInputs();
		
		if(mouse_check_button_pressed(mb_right))//MOVEMENT FOR GROUP OR POTENTIAL ACTION FOR SELECTED
		{
			action1Commited = false; //CANCEL COMMIT(BECAUSE OF NEW MOVEMENT)
			
			xTargetPosition = mouse_x;
			yTargetPosition = mouse_y;
			
			if(selected)
			{
				//NEST IN SELECTED
				if(action1Selected)
				{
					//REMAKE INTO SCRIPT SPECIFIED "Move into position to Build"
					var _calcInst = instance_create_layer(xTargetPosition, yTargetPosition,"Instances", oCoordinateGetter);
					
					buildXPosition = xTargetPosition;
					buildYPosition = yTargetPosition;
					
					with(_calcInst)
					{
						var _sprBuildingInfo = sprite_get_info(sBase0);
						var _sprUnitInfo = sprite_get_info(sBuilder);
						var _dir = point_direction(x, y, other.x, other.y);
						other.xTargetPosition = x + lengthdir_x((_sprBuildingInfo.width/2) + _sprUnitInfo.width, _dir);
						other.yTargetPosition = y + lengthdir_y((_sprBuildingInfo.width/2) + _sprUnitInfo.width, _dir);
						
						instance_destroy();
					}
					
					action1Selected = false;
					action1Commited = true;
				}
			}
			
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
}



///
/// Unit Movement
///
function UnitMoveToTarget()
{
	UnitClickGetTargetPosition();
	
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
		
		if(action1Commited)
		{
			state = UNITSTATE.ACTION;
		}
		else
		{
			state = UNITSTATE.IDLE;
		}
	}
	
	//Call Unit Collision Function
	if(noPhysicalMovementTimer < 180 && UnitCollision())
	{
		noPhysicalMovementTimer++;
	}
	else if(noPhysicalMovementTimer >= 180) //STOP UNIT (UNTIL I FIGURE OUT PATHING TO WALK AROUND OR MORE 
	{									    //SOPHISTICATED METHOD WHEN TO STOP MOVEMENT
		noPhysicalMovementTimer = 0; 
		state = UNITSTATE.IDLE
	}
	
	if( _dist >= moveSpd)
	{
		x += xSpd;
		y += ySpd;
	}
	//if((x == xTargetPosition && y == yTargetPosition) || )
	//{
	//	xTargetPosition = 0;
	//	yTargetPosition = 0;
	//	state = UNITSTATE.IDLE;
	//}
}



///
/// Basic Unit Collisions With Other Units
///
function UnitCollision()
{
	var _xOffset = 0;
	var _yOffset = 0;
	
	
	var _collision = false;
	// x Collision
	if(place_meeting(x + xSpd, y, oEntity))
	{
		xSpd = 0;
		_collision = true;
	}
	
	// y Collision
	if(place_meeting(x , y + ySpd + 5, oEntity))
	{
		ySpd = 0;
		_collision = true;
	}
	
	return _collision;
}




///
/// Tracking Unit Inputs
///
function CheckForInputs()
{
	if(selected)
	{
		if(oneButton)
		{
			action1Selected = !action1Selected;
		}
	}
}