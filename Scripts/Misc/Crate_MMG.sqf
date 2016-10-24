_supplyCrate = "Box_NATO_WpsSpecial_F" createVehicle getMarkerPos "logi_spawn_point"; 
clearMagazineCargoGlobal _supplyCrate;
clearItemCargoGlobal _supplyCrate;
clearWeaponCargoGlobal _supplyCrate;
[_supplyCrate,true,[0,2,0],0] call ace_dragging_fnc_setDraggable;

clearWeaponCargoGlobal _supplyCrate;
clearItemCargoGlobal _supplyCrate;
clearMagazineCargoGlobal _supplyCrate;
clearBackpackCargoGlobal _supplyCrate;

_supplyCrate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m62_tracer",20];
_supplyCrate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m80a1epr", 20];
_supplyCrate addWeaponCargoGlobal ["ACE_Vector", 3];
_supplyCrate addItemCargoGlobal ["ACE_EarPlugs", 3];
