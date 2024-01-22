/// @description Insert description here
// You can write your code in this editor


draw_self();

var _spriteInfo = sprite_get_info(creatorEntityId.sprite_index);
var _xScale = 1;
var _yScale = 1;

if(_spriteInfo.width <= 20)
{
	_xScale = 5;
	_yScale = 5;
}
draw_text(x+ 50, y + 10, string(creatorEntityId.entityName));//NAME 

draw_text(x+ 50, y + 25, "HP: " + string(creatorEntityId.hp)); //HP

draw_sprite_ext(creatorEntityId.sprite_index, 0, x + 100 , y + 100, _xScale, _yScale, 0, c_white, 1); // UI PICTURE