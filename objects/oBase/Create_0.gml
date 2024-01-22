/// @description Insert description here
// You can write your code in this editor

event_inherited();
depth = 10;

entityName = "Base";

//buildingScript[BUILDINGSTATE.IDLE] = BuildingFreeState;
//buildingScript[BUILDINGSTATE.ACTION] = BuildUnit;

entityScript[ENTITYSTATE.IDLE] = BuildingFreeState;
//entityScript[ENTITYSTATE.ACTION] = BuildUnit;//RUN CHOSEN ABILITY SCRIPT
abilityScript[ABILITY.ONE] = BuildUnit;

buildableUnits = [oBuilder];