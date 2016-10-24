_supplyCrate = "Box_NATO_WpsLaunch_F" createVehicle getMarkerPos "logi_spawn_point"; 
clearMagazineCargoGlobal _supplyCrate;
clearItemCargoGlobal _supplyCrate;
clearWeaponCargoGlobal _supplyCrate;
[_supplyCrate,true,[0,2,0],0] call ace_dragging_fnc_setDraggable;

_supplyCrate addWeaponCargoGlobal ["rhs_weap_M136_hedp", 2];
_supplyCrate addWeaponCargoGlobal ["rhs_weap_M136", 2];
_supplyCrate addWeaponCargoGlobal ["launch_NLAW_F", 1];
_supplyCrate addWeaponCargoGlobal ["rhs_weap_fim92", 1];
_supplyCrate addMagazineCargoGlobal ["rhs_fim92_mag", 1];
