/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

if(state == ENTITYSTATE.ACTION)
{
	draw_text(x - 20, y - 50, string(getReadyToBuild) + "/300");
}

if(xOffset != 0 || yOffset != 0)
{
	draw_point(x + xOffset, y + yOffset);
}


draw_text(x - 20, y - 95, "path position: " + string(path_position));



draw_text(x -20, y -50, "commitedAbility: " + string(commitedAbility));
//
draw_text(x -20, y -65, "selectedAbility: " + string(selectedAbility));

//draw_text(x -20, y -95, "id: " + string(id));



//draw_text(x - 20, y - 65, "action1Selected: " + string(action1Selected));

//draw_text(x - 20, y - 80, "x: " + string(x));
//
//draw_text(x - 20, y - 95, "y: " + string(y));

//draw_text(x - 20, y - 80, "xTargetP: " + string(xTargetPosition));
//
//draw_text(x - 20, y - 95, "yTargetP: " + string(yTargetPosition));

//draw_text(x - 20, y - 110, "XOffset: " + string(xOffset));

//draw_text(x - 20, y - 125, "YOffset: " + string(yOffset));

//draw_text(x - 20, y - 110, "selected: " + string(selected));

//draw_text(x - 20, y - 125, "group Selected: " + string(groupSelected));


draw_text(x - 20, y - 80, "State(Number): " + string(state));
