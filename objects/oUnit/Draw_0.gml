/// @description Insert description here
// You can write your code in this editor


draw_self();
spriteInfo = sprite_get_info(sprite_index);

if(selected || groupSelected)//CHANGE TO GROUPSELECTED
{
	draw_set_color(c_green);
	draw_rectangle(x-(spriteInfo.width/2), y-(spriteInfo.height/2), x+(spriteInfo.width/2)-1, y+(spriteInfo.height/2)-1,true);
	draw_set_color(c_white);
}