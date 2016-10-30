/*
| Author:
|
|	BACONMOP
|_____
|
|   Description: Empty and Fill Supply Depot.
|
|	Created: 29.January 2015
|	Last modified: By:
|	Made for AhoyWorld.
*/

params ["_supplyCrate","_medicalCrate"];
	clearMagazineCargoGlobal _supplyCrate;
	clearItemCargoGlobal _supplyCrate;
	clearWeaponCargoGlobal _supplyCrate;
	clearMagazineCargoGlobal _medicalCrate;
	clearItemCargoGlobal _medicalCrate;
	clearWeaponCargoGlobal _medicalCrate;

	_supplyCrate addWeaponCargoGlobal ["rhs_weap_m16a4_carryhandle_pmag", 2];
	_supplyCrate addWeaponCargoGlobal ["rhs_weap_m4_carryhandle_pmag", 2];
	_supplyCrate addWeaponCargoGlobal ["rhs_weap_m4a1_grip", 2];
	_supplyCrate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51", 40];
	_supplyCrate addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch", 40];
	_supplyCrate addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag", 40];
	_supplyCrate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 40];
	_supplyCrate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk262_Stanag", 40];
	_supplyCrate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 40];


	_medicalCrate addItemCargoGlobal ["ACE_fieldDressing", 30];
	_medicalCrate addItemCargoGlobal ["ACE_packingBandage", 30];
	_medicalCrate addItemCargoGlobal ["ACE_elasticBandage", 30];
	_medicalCrate addItemCargoGlobal ["ACE_tourniquet", 30];
	_medicalCrate addItemCargoGlobal ["ACE_morphine", 30];
	_medicalCrate addItemCargoGlobal ["ACE_atropine", 30];
	_medicalCrate addItemCargoGlobal ["ACE_epinephrine", 30];
	_medicalCrate addItemCargoGlobal ["ACE_quikclot", 30];
	_medicalCrate addItemCargoGlobal ["ACE_personalAidKit", 10];
	_medicalCrate addItemCargoGlobal ["ACE_surgicalKit", 10];
	_medicalCrate addItemCargoGlobal ["ACE_bodyBag", 20];
	_medicalCrate addItemCargoGlobal ["ACE_EarPlugs", 15];
	_medicalCrate addItemCargoGlobal ["ACE_plasmaIV_250", 30];
	_medicalCrate addItemCargoGlobal ["ACE_bloodIV_250", 30];
	_medicalCrate addItemCargoGlobal ["ACE_salineIV_250", 30];
