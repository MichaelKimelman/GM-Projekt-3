/// @description Insert description here
// You can write your code in this editor


event_inherited();

state = UNITSTATE.IDLE;
moveSpd = 1.5;

unitScript[UNITSTATE.IDLE] = BuilderFreeState;
unitScript[UNITSTATE.MOVE] = UnitMoveToTarget;

//selected = true;