/// @description Insert description here
// You can write your code in this editor


event_inherited();

state = UNITSTATE.IDLE;

entityName = "Builder";
moveSpd = 1.5;

unitScript[UNITSTATE.IDLE] = BuilderFreeState;
unitScript[UNITSTATE.MOVE] = UnitMoveToTarget;
unitScript[UNITSTATE.ACTION] = BuildBuilding;

getReadyToBuild = 0;

buildXPosition = 0;
buildYPosition = 0;

image_speed = 0;