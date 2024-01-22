/// @description Insert description here
// You can write your code in this editor


draw_self();

//var _subImg = 0;
draw_text(x, y - 20, "Number of abilities:" + string(numberOfAbilities));
draw_text(x, y - 35, "entityAbilityArray:" + string(entityAbilityArray));
//draw_text(x, y - 50, "unfindable object instance:" + string(object_get_name(1)));
//draw_text(x, y - 20, "unfindable object instance 0 :" + string(object_get_name(0)));
//draw_text(x, y - 35, "unfindable object instance 1:" + string(object_get_name(1)));
//draw_text(x, y - 50, "unfindable object instance 2:" + string(object_get_name(2)));
draw_text(x, y - 65, "creator:" + string(creatorEntityId.abilityScript));
//draw_text(x, y - 65, "creator:" + string(creatorEntityId));

//draw_text(x, y - 80, "forLoopComplete?:" + string(forLoopComplete));

//draw_text(x, y - 20, "ability0:" + string(creatorEntityId.abilityScript[ABILITY.ZERO]));
//draw_text(x, y - 35, "ability1:" + string(script_get_name(creatorEntityId.abilityScript[ABILITY.ONE])));
//draw_text(x, y - 50, "ability2:" + string(script_get_name(creatorEntityId.abilityScript[ABILITY.TWO])));

if(object_get_name(object_get_parent(creatorEntityId.object_index)) == "oUnit")
{
	
	for(var i = 1; i <= numberOfAbilities; i++)
	{
		var _abilityButton = instance_create_layer(x + (5 * i) + ((i -1)*64), y + 20, "Instances", oUIAbilityButton);
		
		with(_abilityButton)
		{
			abilityNumber = i;
			sprite_index = abilityPix[i];
			creatorEntityId = other.creatorEntityId;
			depth = -100;
			
		}
	}
	
	//_subImg = 0;
	//if(creatorUnitId.action1Selected)//CHANGE TO selectedAbility, ADD MECHANISM TO TRACK SPECIFIC ABILITY AND ABILITY UIOBJECT
	//{
	//	_subImg = 1;
	//}
	//
	//if(creatorUnitId.action1Commited)//CHANGE TO commitedAbility, ADD MECHANISM TO TRACK SPECIFIC ABILITY AND ABILITY UIOBJECT
	//{
	//	_subImg = 2;
	//}
	//draw_sprite(sAbility1, _subImg, x + 20, y + 20);
}

if(object_get_name(object_get_parent(creatorEntityId.object_index)) == "oBuilding")
{
	//_subImg = 0;
	
	for(var i = 1; i <= numberOfAbilities; i++)//MAYBE EDIT(COPYPASTED FROM if(object_get_name(object_get_parent(creatorEntityId.object_index)) == "oUnit")
	{
		var _abilityButton = instance_create_layer(x + (5 * i) + ((i -1)*64), y + 20, "Instances", oUIAbilityButton);
		
		with(_abilityButton)
		{
			abilityNumber = i;
			sprite_index = abilityPix[i];
			creatorEntityId = other.creatorEntityId;
			depth = -100;
			
		}
	}
	
	
	//if(creatorUnitId.action1Commited)//CHANGE TO commitedAbility, ADD MECHANISM TO TRACK SPECIFIC ABILITY AND ABILITY UIOBJECT
	//{
	//	_subImg = 1;
	//}
	
	//draw_sprite_ext(sBuilder, _subImg, x + 50, y + 50, 3, 3, 0, c_white, 1);
}