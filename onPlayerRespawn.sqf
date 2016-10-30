/*
| Author:
|
|	Pfc.Christiansen
|_____
|
|   Description: Init for server\player
|
|	Created: 1.December 2014
|	Last modified: 30. January 2015 By: Pfc.Christiansen
|	Made for AhoyWorld.
*/
[] call AW_fnc_LEX;
sleep 3;
[] call AW_fnc_tfar_channel_set;
_action = ["AW_Radio", "Set radios to correct channels", "", {[] call AW_fnc_tfar_channel_set;}, {true}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;
