/// @description Insert description here
// You can write your code in this editor


global.gamePaused = false;

testMouseButtonContinualPressed = 0;
testMouseButtonReleased = 0;

//MOUSE SELECT UNIT VALUES

selectedUnitsList = ds_list_create();

//_list = ds_list_create();
lastItem = 0;
//selecting = false;

//SELECTRECTANGLE COORDINATES
mouseXFirstClick = 0;
mouseYFirstClick = 0;

mouseXCurrent = 0;
mouseYCurrent = 0;

//TYPE OF MOUSE CLICK VARIABLE
//mouseHeldDown = 0;

mouseClick = false;
mouseHeld = false;
uiClicked = false;
buttonClicked = false;

//UI BEHAVIOUR
clickedUIButton = noone;
//instanceMeeting = noone;

interactedUIElements = ds_list_create();

//Motion Planning
mp_potential_settings(45, 10, 6, true);