/// @description Insert description here
// You can write your code in this editor


//draw_text(200, 630,"Button one pressed: " + string(oneButton));

if(selected && !instance_exists(oUnitDisplay))
{
	//draw_sprite(sUnitDisplay,0, 0, window_get_height() - 200);
	
	var _uiDisplay = instance_create_layer(0, window_get_height() - 200, "Instances", oUnitDisplay);
	
	with(_uiDisplay)
	{
		creatorUnitId = other.id;
	}
}