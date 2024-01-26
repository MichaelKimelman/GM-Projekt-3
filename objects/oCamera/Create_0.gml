/// @description Insert description here
// You can write your code in this editor

mouseXFirstClick = 0;
mouseYFirstClick = 0;

//mouseXCurrent = 0;//MAYBE JUST USE MOUSE_X/Y
//mouseYCurrent = 0;

moveDir = 0;

view_width = 1920/6;
view_height = 1080/6;

window_scale = 4;

window_set_size(view_width*window_scale, view_height*window_scale);
alarm[0] = 1;

surface_resize(application_surface,view_width*window_scale, view_height*window_scale);