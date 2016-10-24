_supplyCrate = "Box_NATO_AmmoOrd_F" createVehicle getMarkerPos "logi_spawn_point"; 
clearMagazineCargoGlobal _supplyCrate;
clearItemCargoGlobal _supplyCrate;
clearWeaponCargoGlobal _supplyCrate;
[_supplyCrate,true,[0,2,0],0] call ace_dragging_fnc_setDraggable;

clearWeaponCargoGlobal _supplyCrate;
clearItemCargoGlobal _supplyCrate;
clearMagazineCargoGlobal _supplyCrate;
clearBackpackCargoGlobal _supplyCrate;

_supplyCrate addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 10];
_supplyCrate addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 10];
_supplyCrate addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag", 10];
_supplyCrate addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag", 10];
_supplyCrate addItemCargoGlobal ["ACE_Clacker", 10];
_supplyCrate addItemCargoGlobal ["ACE_DefusalKit", 10];
