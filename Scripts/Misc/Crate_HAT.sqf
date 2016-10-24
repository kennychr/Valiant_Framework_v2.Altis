_supplyCrate = "Box_NATO_WpsSpecial_F" createVehicle getMarkerPos "logi_spawn_point"; 
clearMagazineCargoGlobal _supplyCrate;
clearItemCargoGlobal _supplyCrate;
clearWeaponCargoGlobal _supplyCrate;
[_supplyCrate,true,[0,2,0],0] call ace_dragging_fnc_setDraggable;

_supplyCrate addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 13];
_supplyCrate addWeaponCargoGlobal ["ACE_Vector", 3];
_supplyCrate addItemCargoGlobal ["ACE_EarPlugs", 3];
