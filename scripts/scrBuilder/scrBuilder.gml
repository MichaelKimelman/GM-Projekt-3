// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBuilder(){

}




///
/// Free State
///
function BuilderFreeState()
{
	UnitClickGetTargetPosition();
}




///
/// Build Building
///
function BuildBuilding()///FIXA SÅ ATT BYGGER EFTER loading
{
	getReadyToBuild++;
	
	if(getReadyToBuild > 300)
	{
		instance_create_layer(abilityXPosition, abilityYPosition, "Instances", oBase);
		getReadyToBuild = 0;
		
		state = ENTITYSTATE.IDLE
		commitedAbility = ABILITY.ZERO;
		//action1Commited = false;//DELETE
		
	}
}




///
///
///
function BuildBuildingFAST()///FIXA SÅ ATT BYGGER EFTER loading
{
	getReadyToBuild++;
	
	if(getReadyToBuild > 50)
	{
		instance_create_layer(abilityXPosition, abilityYPosition, "Instances", oBase);
		getReadyToBuild = 0;
		
		state = ENTITYSTATE.IDLE
		commitedAbility = ABILITY.ZERO;
		//action1Commited = false;//DELETE
		
	}
}