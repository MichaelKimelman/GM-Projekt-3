/// @description Insert description here
// You can write your code in this editor

state = UNITSTATE.IDLE;

unitName = "Unit";
moveSpd = 0;

xSpd = 0;
ySpd = 0;

xTargetPosition = 0;
yTargetPosition = 0;

selected = false;
groupSelected = false;

noPhysicalMovementTimer = 0; //USED TO CHANGE STATE TO IDLE IF TOO LONG NO MOVEMENT

unitScript[UNITSTATE.IDLE] = -1;

action1Selected = false;
action1Commited = false;