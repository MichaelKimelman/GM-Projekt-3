/// @description Insert description here
// You can write your code in this editor


draw_self();

var _subImg = 0;

if(object_get_name(object_get_parent(creatorUnitId.object_index)) == "oUnit")
{
	//_subImg = 0;
	if(creatorUnitId.action1Selected)
	{
		_subImg = 1;
	}
	
	if(creatorUnitId.action1Commited)
	{
		_subImg = 2;
	}
	draw_sprite(sAbility1, _subImg, x + 20, y + 20);
}

if(object_get_name(object_get_parent(creatorUnitId.object_index)) == "oBuilding")
{
	_subImg = 0;
	
	if(creatorUnitId.action1Commited)
	{
		_subImg = 1;
	}
	
	draw_sprite_ext(sBuilder, _subImg, x + 50, y + 50, 3, 3, 0, c_white, 1);
}