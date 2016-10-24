_supplyCrate = "ACE_medicalSupplyCrate" createVehicle getMarkerPos "logi_spawn_point"; 
clearMagazineCargoGlobal _supplyCrate;
clearItemCargoGlobal _supplyCrate;
clearWeaponCargoGlobal _supplyCrate;
[_supplyCrate,true,[0,2,0],0] call ace_dragging_fnc_setDraggable;

clearWeaponCargoGlobal _supplyCrate;
clearItemCargoGlobal _supplyCrate;
clearMagazineCargoGlobal _supplyCrate;
clearBackpackCargoGlobal _supplyCrate;

_supplyCrate addItemCargoGlobal ["ACE_packingBandage", 100];
_supplyCrate addItemCargoGlobal ["ACE_elasticBandage", 100];
_supplyCrate addItemCargoGlobal ["ACE_morphine", 100];
_supplyCrate addItemCargoGlobal ["ACE_epinephrine", 100];
_supplyCrate addItemCargoGlobal ["ACE_quikclot", 100];
_supplyCrate addItemCargoGlobal ["ACE_plasmaIV_500", 100];
_supplyCrate addItemCargoGlobal ["ACE_personalAidKit", 10];
_supplyCrate addItemCargoGlobal ["ACE_surgicalKit", 50];
_supplyCrate addItemCargoGlobal ["ACE_EarPlugs", 30];
_supplyCrate addItemCargoGlobal ["ACE_bodyBag", 5];
_supplyCrate addItemCargoGlobal ["ACE_tourniquet", 20];
