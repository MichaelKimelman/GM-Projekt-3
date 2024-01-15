/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

if(state == UNITSTATE.ACTION)
{
	draw_text(x - 20, y - 50, string(getReadyToBuild) + "/300");
}

//draw_text(x - 20, y - 65, "action1Selected: " + string(action1Selected));

//draw_text(x - 20, y - 80, "xTargetP: " + string(xTargetPosition));

//draw_text(x - 20, y - 95, "yTargetP: " + string(yTargetPosition));

//draw_text(x - 20, y - 110, "selected: " + string(selected));

//draw_text(x - 20, y - 125, "group Selected: " + string(groupSelected));


//draw_text(x - 20, y - 110, "State(Number): " + string(state));
