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
		
		if(action1Commited)
		{
			state = BUILDINGSTATE.ACTION;
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
		action1Commited = false;
		state = BUILDINGSTATE.IDLE;
		
		
		
		
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
		if(oneButton)//CHANGE TO SWITCH PROBABLY
		{
			action1Commited = true;
		}
	}
}