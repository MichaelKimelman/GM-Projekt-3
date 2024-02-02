/// @description Insert description here
// You can write your code in this editor


//draw_text(200, 200, "is pressed: " + string(testMouseButtonContinualPressed));

//draw_text(200, 250, "# of oClicks now: " + string(instance_number(oClick)));

//draw_text(200, 300, "mouse has released: " + string(testMouseButtonReleased)+ " times");

//CHECK MOUSE COORDINATES FOR WINDOW
//mouseXCurrent
//mouseYCurrent
//mouseXFirstClick
//mouseYFirstClick

//draw_text(200, 250, "N# of Bases: " + string(instance_number(oBase)));

if(global.gamePaused)
{
	draw_text_transformed(window_get_x(), window_get_y(), "PAUSED", 5, 5, 0); 
	
}

draw_text(200, 50, "mouseclick?: " + string(mouseClick));

draw_text(200, 65, "mouse held?: " + string(mouseHeld));

draw_text(200, 80, "Object 0: " + string(object_get_name(0)));

//draw_text(200, 80, "object at -4?: " + object_get_name(-4));
//draw_text(200, 250, "mouse x start: " + string(mouseXFirstClick));

//draw_text(200, 300, "mouse y start: " + string(mouseYFirstClick));

//draw_text(200, 350, "mouse x current: " + string(mouseXCurrent));

//draw_text(200, 400, "mouse y current: " + string(mouseYCurrent));



//draw_text(200, 450, "list: " + string(ds_list_size(_list)));

//draw_text(200, 500, "list[0]: " + string(ds_list_find_value(_list, 0)));

