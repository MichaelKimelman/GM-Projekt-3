/// @description Insert description here
// You can write your code in this editor

event_inherited();


state = ENTITYSTATE.IDLE;

//buildingScript[BUILDINGSTATE.IDLE] = -1;

//entityScript[BUILDINGSTATE.IDLE] = -1;

buildUnitProgress = 0;
spawnBlocked = false;

entityScript[ENTITYSTATE.ACTION] = UnitExecuteAbility;