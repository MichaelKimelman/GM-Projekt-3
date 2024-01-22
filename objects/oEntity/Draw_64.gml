/// @description Insert description here
// You can write your code in this editor


if(selected && !instance_exists(oUnitDisplay))
{
	//draw_sprite(sUnitDisplay,0, 0, window_get_height() - 200);
	//PORTRAIT WITH
	var _uiDisplay = instance_create_layer(0, window_get_height() - 200, "Instances", oUnitDisplay);
	
	with(_uiDisplay)
	{
		creatorEntityId = other.id;
	}
	
	var _uiAbilityDisplay = instance_create_layer(210, window_get_height() - 200, "Instances", oAbilityDisplay,{ creatorEntityId :id});//SETS VALUE BEFORE RUNNING CREATE EVENT
	//var _uiAbilityDisplay = instance_create_layer(210, window_get_height() - 200, "Instances", oAbilityDisplay);
	//uiAbilityDisplay.creatorEntityId = id;
	
	//with(_uiAbilityDisplay)//RUNS CREATE EVENT AND THEN RUNS WITH CODE
	//{
	//	creatorEntityId = other.id;
	//	
	//	//entityAbilityArray = creatorEntityId.abilityScript
	//}
}