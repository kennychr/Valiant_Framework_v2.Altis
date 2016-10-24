/*
| Author: 
|
|	BACONMOP
|_____
|
|   Description: Create Empty Ammo Box and make it AGM Loadable.
|	
|	Created: 29.January 2015
|	Last modified: By: 
|	Made for AhoyWorld.
*/
_supplyCrate = "B_supplyCrate_F" createVehicle getMarkerPos "Net_Ammo";
clearMagazineCargoGlobal _supplyCrate;
clearItemCargoGlobal _supplyCrate;
clearWeaponCargoGlobal _supplyCrate;
[_supplyCrate,true,[0,2,0],0] call ace_dragging_fnc_setDraggable;