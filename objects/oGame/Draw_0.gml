/// @description Insert description here
// You can write your code in this editor

//if(selecting && rectangleDrawBuffer%4 == 0)
//{
if(mouseHeld && mouseXFirstClick != 0 && mouseYFirstClick != 0  )
{
	draw_rectangle(mouseXFirstClick, mouseYFirstClick, mouseXCurrent,mouseYCurrent,true);
}
//}