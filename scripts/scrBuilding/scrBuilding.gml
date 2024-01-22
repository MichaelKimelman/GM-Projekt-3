// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBuilding(){

}




///
/// Building Idle
///
function BuildingFreeState()
{
	//AWAIT BUILDING ACTION
	if(selected)
	{
		//DO SOMETHING THEN STATE = BUILDINGSTATE.ACTION
		CheckForBuildingInputs();
		
		if(commitedAbility != ABILITY.ZERO)
		{
			state = ENTITYSTATE.ACTION;
		}
	}
}




///
/// Build Unit(Builder for now)
///
function BuildUnit()
{
	if(buildUnitProgress <= 500)
	{
		buildUnitProgress++;
	}
	//position_meeting(x-100, y, oUnit)
	if(collision_rectangle(x -100 - 20, y -20,x - 100 + 20, y + 20, oUnit, false, true))
	{
		spawnBlocked = true;	
	}
	else
	{
		spawnBlocked = false;
	}
	
	if(buildUnitProgress >= 500 && !spawnBlocked)
	{
		buildUnitProgress = 0;
		//action1Commited = false;
		commitedAbility = ABILITY.ZERO;
		state = ENTITYSTATE.IDLE;
		
		instance_create_layer(x - 100, y, "Instances", oBuilder);
	}
}




///
/// Tracking Unit Inputs
///
function CheckForBuildingInputs()
{
	if(selected)
	{
		//if(oneButton)//CHANGE TO SWITCH PROBABLY
		//{
		//	action1Commited = true;
		//}
		
		if(oneButton && abilityScript[ABILITY.ONE] != -1)//CHANGE TO SWITCH PROBABLY
		{
			if(commitedAbility != ABILITY.ONE)
			{
				commitedAbility = ABILITY.ONE;
				
			}
			else// if(selectedAbility == ABILITY.ONE)
			{
				commitedAbility = ABILITY.ZERO;
			}

			
			//action1Selected = !action1Selected;
		}
		else if(twoButton && abilityScript[ABILITY.TWO] != -1)
		{
			//selectedAbility = ABILITY.TWO;
			
			if(commitedAbility != ABILITY.TWO)
			{
				commitedAbility = ABILITY.TWO;
				
			}
			else// if(selectedAbility == ABILITY.TWO)
			{
				commitedAbility = ABILITY.ZERO;
			}
		}
		else if(threeButton && abilityScript[ABILITY.THREE] != -1)
		{
			//selectedAbility = ABILITY.THREE;
			
			if(commitedAbility != ABILITY.THREE)
			{
				commitedAbility = ABILITY.THREE;
				
			}
			else// if(selectedAbility == ABILITY.THREE)
			{
				commitedAbility = ABILITY.ZERO;
			}
		}
		else if(fourButton && abilityScript[ABILITY.FOUR] != -1)
		{
			//selectedAbility = ABILITY.FOUR;
			
			if(commitedAbility != ABILITY.FOUR)
			{
				commitedAbility = ABILITY.FOUR;
				
			}
			else// if(selectedAbility == ABILITY.FOUR)
			{
				commitedAbility = ABILITY.ZERO;
			}
		}
		else if(fiveButton && abilityScript[ABILITY.FIVE] != -1)
		{
			//selectedAbility = ABILITY.FIVE;
			
			if(commitedAbility != ABILITY.FIVE)
			{
				commitedAbility = ABILITY.FIVE;
				
			}
			else// if(selectedAbility == ABILITY.FIVE)
			{
				commitedAbility = ABILITY.ZERO;
			}
		}
	}
}