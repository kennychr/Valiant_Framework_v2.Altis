// Crate_MAT.sqf
// MAAWS = "CUP_launch_MAAWS"

_supplyCrate = "Box_NATO_WpsSpecial_F" createVehicle getMarkerPos "logi_spawn_point"; 
clearMagazineCargoGlobal _supplyCrate;
clearItemCargoGlobal _supplyCrate;
clearWeaponCargoGlobal _supplyCrate;
[_supplyCrate,true,[0,2,0],0] call ace_dragging_fnc_setDraggable;

_supplyCrate addMagazineCargoGlobal ["CUP_MAAWS_HEAT_M", 10];
_supplyCrate addMagazineCargoGlobal ["CUP_MAAWS_HEDP_M" 10];
_supplyCrate addWeaponCargoGlobal ["ACE_Vector", 3];
_supplyCrate addItemCargoGlobal ["ACE_EarPlugs", 3];
