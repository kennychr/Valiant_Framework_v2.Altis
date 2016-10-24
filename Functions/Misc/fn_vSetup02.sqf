/*
@filename: fn_vSetup02.sqf
Author:

	???

Last modified:

	22/10/2014 ArmA 1.32 by Quiksilver

Description:

	Apply code to vehicle
	vSetup02 deals with code that is already applied where it should be.
_______________________________________________*/

//============================================= CONFIG

private ["_u","_t"];

_u = _this select 0;
_t = typeOf _u;

if (isNull _u) exitWith {};

//============================================= ARRAYS

_ghosthawk = ["B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"]; 			// ghosthawk
_strider = ["I_MRAP_03_F","I_MRAP_03_hmg_F","I_MRAP_03_gmg_F"];					// strider
_blackVehicles = ["B_Heli_Light_01_armed_F"];									// black skin
_wasp = ["B_Heli_Light_01_F","B_Heli_Light_01_armed_F"];						// MH-9
_orca = ["O_Heli_Light_02_unarmed_F"];											// Orca
_mobileArmory = ["B_Truck_01_ammo_F"];											// Mobile Armory
_noAmmoCargo = ["B_APC_Tracked_01_CRV_F","B_Truck_01_ammo_F"];					// Bobcat CRV
_slingHeli = ["I_Heli_Transport_02_F","B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"];											// sling capable
_slingable = ["B_Heli_Light_01_F"];												// slingable
_notSlingable = ["B_Heli_Light_01_armed_F", "B_Heli_Attack_01_F"];				// not slingable
_dropHeli = ["B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"]; 			// drop capable
_uav = ["B_UAV_02_CAS_F","B_UAV_02_F","B_UGV_01_F","B_UGV_01_rcws_F"];			// UAVs
_fob = ["rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy"];
_ch53 = ["rhsusf_CH53E_USMC_D"];

//============================================= SORT
//===== Add to Zeus

if (_t in _fob) then {
        [_u,["Deploy FOB", "Scripts\FOB.sqf",1,0,false]] remoteExec ["addAction",0,TRUE];
};
if (_t in _ch53) then {
_fold = [_u,1] execVM "Scripts\Misc\CH_53_fold.sqf";
};
_u setVariable ["slingable",TRUE,TRUE];

{_x addCuratorEditableObjects [[_u],false];} count allCurators;
