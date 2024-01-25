/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();

oneButton = keyboard_check_pressed(ord("1"));
twoButton = keyboard_check_pressed(ord("2"));
threeButton = keyboard_check_pressed(ord("3"));
fourButton = keyboard_check_pressed(ord("4"));
fiveButton = keyboard_check_pressed(ord("5"));

if(!global.gamePaused)
{
	
	if(creatorEntityId.selectedAbility == abilityNumber)
	{
		image_index = 1;
	}
	else if(creatorEntityId.commitedAbility == abilityNumber)
	{
		image_index = 2;
	}
	else
	{
		image_index = 0;
	}
	//if(mouse_check_button(mb_left) )//TEST MOVE TO ABILITYDISPLAY
	//{
	//	var _inst = instance_position(window_mouse_get_x(), window_mouse_get_y(), oUIAbilityButton)
	//	
	//	if(_inst == id)
	//	{
	//		if(creatorEntityId.selectedAbility != ABILITY.ZERO)//RETHINK
	//		{
	//			if(creatorEntityId.selectedAbility == abilityNumber)
	//			{
	//				with(creatorEntityId)
	//				{
	//					creatorEntityId.selectedAbility = ABILITY.ZERO;
	//				}
	//				
	//				_inst.image_index = 0;
	//				
	//			}
	//			else
	//			{
	//				with(creatorEntityId)
	//				{
	//					creatorEntityId.selectedAbility = other.abilityNumber;
	//				}
	//				
	//				_inst.image_index = 1;
	//			}
	//		}
	//		//with(creatorEntityId)//MAYBE TOO BASIC
	//		//{
	//		//	selectedAbility = other.abilityNumber;
	//		//}
	//	}
	//	else
	//	{
	//		image_index = 0;
	//	}
	//}
	
	//image_index = CheckInputUIButton();
	
}