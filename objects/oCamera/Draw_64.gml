/// @description Insert description here
// You can write your code in this editor


draw_text( 200, 80, "camera x pos: " + string(camera_get_view_x(view)));
draw_text( 200, 95, "camera y pos: " + string(camera_get_view_y(view)));

if(mouse_check_button(mb_middle))
{
	draw_circle(mouseXFirstClick, mouseYFirstClick,50, true);
	draw_circle(mouseXFirstClick, mouseYFirstClick,250, true);
}