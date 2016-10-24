/*
usage:
0:position to spawn
*/

_unitCfg = AW_UNITS;


_pos = _this select 0;
_safePos = [_pos,0,200,25,0,1,0] call BIS_fnc_findSafePos;
_NSV_Emplacement= [
	["Land_BagFence_Corner_F",[3.53101,2.44336,-0.000999928],90.0522,1,0,[0,-0],"","",true,false],
	["Land_BagFence_Corner_F",[-3.71118,2.71802,-0.000999928],179.418,1,0,[0,-0],"","",true,false],
	["Box_NATO_AmmoVeh_F",[-2.46875,3.9187,0.0305405],359.993,1,0.0362385,[0.000411887,-0.00057902],"","",true,false],
	["Land_BagFence_Long_F",[-3.75293,4.84912,-0.000999928],89.824,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[3.62524,5.00806,-0.000999928],89.824,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[1.3186,7.20264,-0.000999928],360,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-1.6123,7.21704,-0.000999928],360,1,0,[0,0],"","",true,false],
	["Land_BagFence_Corner_F",[3.64307,7.1875,-0.000999928],0.0902851,1,0,[0,0],"","",true,false],
	["Land_BagFence_Corner_F",[-3.85596,7.18115,-0.000999928],269.238,1,0,[0,0],"","",true,false]
];
_NSVside = createGroup east;
[_safePos,0,_NSV_Emplacement] call BIS_fnc_ObjectsMapper;

_NSV = "rhs_KORD_high_VDV" createVehicle _safePos;
_crewNSV =	[_NSV,_NSVside] call BIS_fnc_spawnCrew;
