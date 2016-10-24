/*
| Author:
|
|	BACONMOP
|_____
|
|   Description: Create Empty Ammo Box and make it ACE Loadable.
|
|	Created: 29.January 2015
|	Last modified: By:
|	Made for AhoyWorld.
*/
_supplyCrate = "ACE_Box_Ammo" createVehicle getMarkerPos "logi_spawn_point"; 
//B_CargoNet_01_ammo_F - too big
//B_supplyCrate_F - didn't load
clearMagazineCargoGlobal _supplyCrate;
clearItemCargoGlobal _supplyCrate;
clearWeaponCargoGlobal _supplyCrate;
[_supplyCrate,true,[0,2,0],0] call ace_dragging_fnc_setDraggable;
