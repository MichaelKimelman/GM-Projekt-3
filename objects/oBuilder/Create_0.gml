/// @description Insert description here
// You can write your code in this editor


event_inherited();

state = ENTITYSTATE.IDLE;

entityName = "Builder";
moveSpd = 1.5;

//unitScript[UNITSTATE.IDLE] = BuilderFreeState;
//unitScript[UNITSTATE.MOVE] = UnitMoveToTarget;
//unitScript[UNITSTATE.ACTION] = BuildBuilding;

entityScript[ENTITYSTATE.IDLE] = BuilderFreeState;
entityScript[ENTITYSTATE.MOVE] = UnitMoveToTarget;
//entityScript[ENTITYSTATE.ACTION] = UnitExecuteAbility;

abilityScript[ABILITY.ONE] = BuildBuilding;
abilityScript[ABILITY.TWO] = BuildBuildingFAST;
abilityScript[ABILITY.THREE] = -1;
abilityScript[ABILITY.FOUR] = -1;
abilityScript[ABILITY.FIVE] = -1;



getReadyToBuild = 0;//BUILDING PROGRESS

abilityXPosition = 0;
abilityYPosition = 0;

image_speed = 0;