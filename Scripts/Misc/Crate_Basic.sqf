_supplyCrate = "Box_NATO_Ammo_F" createVehicle getMarkerPos "logi_spawn_point"; 
clearMagazineCargoGlobal _supplyCrate;
clearItemCargoGlobal _supplyCrate;
clearWeaponCargoGlobal _supplyCrate;
[_supplyCrate,true,[0,2,0],0] call ace_dragging_fnc_setDraggable;

_supplyCrate addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 30];
_supplyCrate addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red", 30];
_supplyCrate addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch", 15];
_supplyCrate addMagazineCargoGlobal ["HandGrenade", 30];
_supplyCrate addMagazineCargoGlobal ["SmokeShell", 30];
_supplyCrate addMagazineCargoGlobal ["SmokeShellBlue", 30];
_supplyCrate addMagazineCargoGlobal ["SmokeShellRed", 30];
_supplyCrate addMagazineCargoGlobal ["Chemlight_blue", 30];
_supplyCrate addMagazineCargoGlobal ["ACE_HandFlare_Red", 30];

_supplyCrate addItemCargoGlobal ["ACE_EarPlugs", 30];
_supplyCrate addItemCargoGlobal ["ACE_CableTie", 30];
_supplyCrate addItemCargoGlobal ["ACE_Flashlight_XL50", 30];
_supplyCrate addItemCargoGlobal ["ACE_IR_Strobe_Item", 30];
