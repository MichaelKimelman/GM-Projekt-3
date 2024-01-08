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
		instance_create_layer(buildXPosition, buildYPosition, "Instances", oBase);
		getReadyToBuild = 0;
		
		state = UNITSTATE.IDLE
		action1Commited = false;
		
	}
}