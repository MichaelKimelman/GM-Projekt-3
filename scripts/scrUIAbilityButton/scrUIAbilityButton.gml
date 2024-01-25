// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script5(){

}




///
/// Inputs for UI Ability Buttons
///
function CheckInputUIButton()
{
	if(oneButton && creatorEntityId.abilityScript[ABILITY.ONE] != -1)//CHANGE TO SWITCH PROBABLY
		{
			if(creatorEntityId.selectedAbility != ABILITY.ONE)
			{
				creatorEntityId.selectedAbility = ABILITY.ONE;
				
			}
			else// if(selectedAbility == ABILITY.ONE)
			{
				creatorEntityId.selectedAbility = ABILITY.ZERO;
			}

			
			//action1Selected = !action1Selected;
		}
		else if(twoButton && creatorEntityId.abilityScript[ABILITY.TWO] != -1)
		{
			//selectedAbility = ABILITY.TWO;
			
			if(creatorEntityId.selectedAbility != ABILITY.TWO)
			{
				creatorEntityId.selectedAbility = ABILITY.TWO;
				
			}
			else// if(selectedAbility == ABILITY.TWO)
			{
				creatorEntityId.selectedAbility = ABILITY.ZERO;
			}
		}
		else if(threeButton && creatorEntityId.abilityScript[ABILITY.THREE] != -1)
		{
			//selectedAbility = ABILITY.THREE;
			
			if(creatorEntityId.selectedAbility != ABILITY.THREE)
			{
				creatorEntityId.selectedAbility = ABILITY.THREE;
				
			}
			else// if(selectedAbility == ABILITY.THREE)
			{
				creatorEntityId.selectedAbility = ABILITY.ZERO;
			}
		}
		else if(fourButton && creatorEntityId.abilityScript[ABILITY.FOUR] != -1)
		{
			//selectedAbility = ABILITY.FOUR;
			
			if(creatorEntityId.selectedAbility != ABILITY.FOUR)
			{
				creatorEntityId.selectedAbility = ABILITY.FOUR;
				
			}
			else// if(selectedAbility == ABILITY.FOUR)
			{
				creatorEntityId.selectedAbility = ABILITY.ZERO;
			}
		}
		else if(fiveButton && creatorEntityId.abilityScript[ABILITY.FIVE] != -1)
		{
			//selectedAbility = ABILITY.FIVE;
			
			if(creatorEntityId.selectedAbility != ABILITY.FIVE)
			{
				creatorEntityId.selectedAbility = ABILITY.FIVE;
				
			}
			else// if(selectedAbility == ABILITY.FIVE)
			{
				creatorEntityId.selectedAbility = ABILITY.ZERO;
			}
		}
}