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
			commitedAbility = ABILITY.ZERO;
			//action1Commited = false; //CANCEL COMMIT(BECAUSE OF NEW MOVEMENT) CHANGE TO commitedAbility = ABILITY.ZERO
			
			xTargetPosition = mouse_x;
			yTargetPosition = mouse_y;
			
			if(selected)
			{
				//EXECUTE ACTIONSCRIPT
				
				//if(abilityScript[selectedAbility] != -1)
				//{
				//	script_execute_ext(abilityScript[selectedAbility],[]);
				//}
				
				//NEST IN SELECTED
				if(selectedAbility != ABILITY.ZERO)//CHANGE TO SWITCH PROBABLY
				{
					//REMAKE INTO SCRIPT SPECIFIED "Move into position to Build"
					var _calcInst = instance_create_layer(xTargetPosition, yTargetPosition,"Instances", oCoordinateGetter);
					//CHANGE TO 
					abilityXPosition = xTargetPosition;
					abilityYPosition = yTargetPosition;
					
					with(_calcInst)
					{
						var _sprBuildingInfo = sprite_get_info(sBase0);// MAKE MODULAR
						//var _unitSpr = sprite_get_name( sprite_index);
						var _sprUnitInfo = sprite_get_info(other.sprite_index);
						//_sprUnitInfo = sprite_get_info(sBuilder);
						var _dir = point_direction(x, y, other.x, other.y);
						other.xTargetPosition = x + lengthdir_x((_sprBuildingInfo.width/2) + _sprUnitInfo.width, _dir);
						other.yTargetPosition = y + lengthdir_y((_sprBuildingInfo.width/2) + _sprUnitInfo.width, _dir);
						
						instance_destroy();
					}
					
					commitedAbility = selectedAbility;
					selectedAbility = ABILITY.ZERO;
					//action1Selected = false;//DELETE
					//action1Commited = true;//DELETE
				}
			}
			
			state = ENTITYSTATE.MOVE;
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
		
		if(commitedAbility != ABILITY.ZERO)//CHANGE TO IF(commitedAbility != -1) if(action1Commited)
		{
			state = ENTITYSTATE.ACTION;
			//SET ABILITY SCRIPT TO [commitedAbility]
			//ACTION STATE CALLS ABILITY EXECUTING SCRIPT
		}
		else
		{
			state = ENTITYSTATE.IDLE;
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
		state = ENTITYSTATE.IDLE
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
/// Tracking Unit Inputs, For Mouse Confirmation
///
function CheckForInputs()
{
	if(selected)
	{
		if(oneButton && abilityScript[ABILITY.ONE] != -1)//CHANGE TO SWITCH PROBABLY
		{
			if(selectedAbility != ABILITY.ONE)
			{
				selectedAbility = ABILITY.ONE;
				
			}
			else// if(selectedAbility == ABILITY.ONE)
			{
				selectedAbility = ABILITY.ZERO;
			}

			
			//action1Selected = !action1Selected;
		}
		else if(twoButton && abilityScript[ABILITY.TWO] != -1)
		{
			//selectedAbility = ABILITY.TWO;
			
			if(selectedAbility != ABILITY.TWO)
			{
				selectedAbility = ABILITY.TWO;
				
			}
			else// if(selectedAbility == ABILITY.TWO)
			{
				selectedAbility = ABILITY.ZERO;
			}
		}
		else if(threeButton && abilityScript[ABILITY.THREE] != -1)
		{
			//selectedAbility = ABILITY.THREE;
			
			if(selectedAbility != ABILITY.THREE)
			{
				selectedAbility = ABILITY.THREE;
				
			}
			else// if(selectedAbility == ABILITY.THREE)
			{
				selectedAbility = ABILITY.ZERO;
			}
		}
		else if(fourButton && abilityScript[ABILITY.FOUR] != -1)
		{
			//selectedAbility = ABILITY.FOUR;
			
			if(selectedAbility != ABILITY.FOUR)
			{
				selectedAbility = ABILITY.FOUR;
				
			}
			else// if(selectedAbility == ABILITY.FOUR)
			{
				selectedAbility = ABILITY.ZERO;
			}
		}
		else if(fiveButton && abilityScript[ABILITY.FIVE] != -1)
		{
			//selectedAbility = ABILITY.FIVE;
			
			if(selectedAbility != ABILITY.FIVE)
			{
				selectedAbility = ABILITY.FIVE;
				
			}
			else// if(selectedAbility == ABILITY.FIVE)
			{
				selectedAbility = ABILITY.ZERO;
			}
		}
	}
}




///
/// ENTITYSTATE.ACTION -> Execute ability Script
///
function UnitExecuteAbility()
{
	//if(abilityScript[selectedAbility] != -1)
	//{
		script_execute_ext(abilityScript[commitedAbility],[]);
	//}
}