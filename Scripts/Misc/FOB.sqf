/*
| Author:
|
|	Pfc.Christiansen
|_____
|
|   Description: FOB script for FMTV(Covered)
|	Created: 25-07-2015
|	Made for AhoyWorld.
|
*/

//***********Init Variables + defines

params ["_fob"];
private ["_radius"];
_radius = 10;

//***********Flatpos
_flatPos = (getPosASL _fob) isFlatEmpty
[
	_radius,				//--- Minimal distance from another object
	0,							//--- If 0, just check position. If >0, select new one
	0.4,						//--- Max gradient
	_radius max 5,	//--- Gradient area
	0,							//--- 0 for restricted water, 2 for required water,
	false,					//--- Has to have shore nearby!
	objNull					//--- Ignored object
];

switch (_fob getVariable "deployed") do {
	case false :	{
		if ((speed _fob) >= 1) exitWith { hint "Stop the truck to deploy!"; };
		if (_fob doorPhase "extend_shelter_source" < 0.01) exitWith { hint "Extend Sides before deploying!"; };
		if (count _flatPos isEqualTo 0) exitWith { hint "Area unsuitable for deployment!"; };








		_fob setVariable ["deployed", true, true];

		//***********Disable unit from moving+move out crew
		{moveOut _x} forEach crew _fob;

		//***********Un-Pack Hint for user.
		hint "Unpacking FOB items";

		//***********Objects
		MHQ_Net = "Land_CamoNetB_NATO" createVehicle getPos _fob;
		MHQ_Net attachTo [_fob,[0,0,0]];
		sleep 10;
		MHQ_box = "Box_NATO_AmmoVeh_F" createVehicle getPos _fob;
		MHQ_box allowDamage false;
		MHQ_box attachTo [_fob,[0,-6.4,-1]];
		//MHQ_box execVM "scripts\misc\ammoCase.sqf";
		//sleep 15;
		MHQ_Antenna = "Land_SatelliteAntenna_01_F" createVehicle getPos _fob;
		MHQ_Antenna allowDamage false;
		MHQ_Antenna attachTo [_fob,[0,-4,2.4]];

		//***********Fin Hint for user+Grid broadcast(Use EH to broadcast hint)
		_gridPos = mapGridPosition getPos _fob;
		_fobHintText = format [ "<t align='center' size='2.2'>FOB Deployed at </t><br/><t size='1.5' align='center' color='#FFCF11'>%1</t>",_gridPos];
		GlobalHint = _fobHintText; publicVariable "GlobalHint"; hint parseText GlobalHint;

		_respawn = [missionNameSpace, _fob, "FOB"] call BIS_fnc_addRespawnPosition;
		_fob setVariable ["respawn", _respawn, true];
	};
	default	{
		//***********Cleanup+pack hints
		hint "Packing up FOB";
		deleteVehicle MHQ_Antenna;
		sleep 15;
		deleteVehicle MHQ_box;
		sleep 10;
		deleteVehicle MHQ_Net;
		{deleteVehicle _x} forEach nearestObjects [_fob, ["B_HMG_01_high_F","B_Mortar_01_F","Flag_NATO_F","MapBoard_altis_F","Land_CampingTable_F","Land_CampingChair_V2_F","Land_BagFence_Long_F","Land_BagFence_Round_F"], 100];

		_fob setVariable ["deployed", false, true];
		hint "Packing finished";
		_respawn = _fob getVariable "respawn";
		_respawn call BIS_fnc_removeRespawnPosition;
		_fob setVariable ["respawn", nil, true];

	};
};
