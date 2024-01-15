/// @description Insert description here
// You can write your code in this editor

event_inherited();
depth = 10;

entityName = "Base";

buildingScript[BUILDINGSTATE.IDLE] = BuildingFreeState;
buildingScript[BUILDINGSTATE.ACTION] = BuildUnit;