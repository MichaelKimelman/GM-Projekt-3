/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

numberOfAbilities = 0;

entityAbilityArray = creatorEntityId.abilityScript;

//forLoopComplete= false;
//entityAbilityArray

//variable01 = 


	//entityAbilityArray = creatorEntityId.abilityScript;
	//with(creatorEntityId)
	//{
	//	for(var i = 0; i < array_length(abilityScript); i++)
	//	{
	//		array_copy(other.entityAbilityArray,i, abilityScript, i,array);
	//	}
	//}


//entityAbilityArray = [];


abilityArrayLength = array_length(entityAbilityArray)

for(var i = 1; i < abilityArrayLength;i++)
{
	if(entityAbilityArray[i] != -1)
	{
		numberOfAbilities++;
	}
}