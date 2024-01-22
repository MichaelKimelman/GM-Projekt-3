/// @description Insert description here
// You can write your code in this editor


hovering = false;
clicked = false;
if(object_get_name(object_index) != "oAbilityDisplay")//IF SETTING oAbilityDisplay.creatorEntityId in var_struct PARAMERTER IN instance_create_layer()
{
	creatorEntityId = 0;
}
markedForDestruction = false;

//instanceMeeting = noone; //MOVED TO oGame

image_speed = 0;