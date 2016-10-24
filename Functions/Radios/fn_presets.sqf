// Called by : [this, "platoon_leader_1"] call AW_fnc_presets;




if(isDedicated) exitWith {};
if(!ACRE) exitWith {};

private["_unit", "_localUnitType"];
_unit = _this select 0;
_localUnitType = _this select 1;

getRadioByType = {
	private["_radioType", "_ret", "_array", "_gear", "_radioId"];
	_radioType = _this select 0;
	_ret = nil;

	if((count _this) > 1) then {
		_array = _this select 1;
		if(typeName _array == "OBJECT") then {
			_gear = [_array] call acre_lib_fnc_getGear;
		};
	} else {
		_gear = [] call acre_api_fnc_getCurrentRadioList;
	};


	{
		_radioId = _x;
		if( ([_radioId, _radioType] call acre_api_fnc_isKindOf ) ) exitWith {
			_ret = _radioId;
		};
	} forEach _gear;

	if(isNil "_ret") exitWith { nil };
	_ret
};
/*
----------TESTING MODULE-----------

["ACRE_PRC152", "default", "example1"] call acre_api_fnc_copyPreset;
["ACRE_PRC117F", "default", "example1"] call acre_api_fnc_copyPreset;

["ACRE_PRC152", "example1", 1, "description", "PLTNET 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "example1", 2, "description", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "example1", 3, "description", "PLTNET 3"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "example1", 4, "description", "COY"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "example1", 5, "description", "CAS"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "example1", 6, "description", "FIRES"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "example1", 7, "description", "AIR"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC117F", "example1", 1, "name", "PLTNET 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "example1", 2, "name", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "example1", 3, "name", "PLTNET 3"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "example1", 4, "name", "COY"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "example1", 5, "name", "CAS"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "example1", 6, "name", "FIRES"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "example1", 7, "description", "AIR"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC152", "example1"] call acre_api_fnc_setPreset;
["ACRE_PRC117F", "example1"] call acre_api_fnc_setPreset;
*/
_this spawn {
_timeout = (time + 5);
waitUntil {time >= _timeout};
if(!ACRE) exitWith {};
	_unit = _this select 0;
	_localUnitType = _this select 1;

	waitUntil {!isNull player};
	if(_unit != player) exitWith { false };

	waitUntil { ([] call acre_api_fnc_isInitialized) };

	switch _localUnitType do {

		case 'ftl_leader_1': { [ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 1] call acre_api_fnc_setRadioChannel; };
		case 'ftl_leader_2': { [ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 2] call acre_api_fnc_setRadioChannel; };
		case 'ftl_leader_3': { [ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 3] call acre_api_fnc_setRadioChannel; };
		case 'ftl_leader_4': { [ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 4] call acre_api_fnc_setRadioChannel; };
		case 'ftl_leader_5': { [ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 5] call acre_api_fnc_setRadioChannel; };
		case 'ftl_leader_6': { [ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 6] call acre_api_fnc_setRadioChannel; };

		case 'squad_leader_1': {
			[ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 1] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 1] call acre_api_fnc_setRadioChannel;
		};
		case 'squad_leader_2': {
			[ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 2] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 1] call acre_api_fnc_setRadioChannel;
		};
		case 'squad_leader_3': {
			[ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 3] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 1] call acre_api_fnc_setRadioChannel;
		};
		case 'squad_leader_4': {
			[ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 4] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 2] call acre_api_fnc_setRadioChannel;
		};
		case 'squad_leader_5': {
			[ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 5] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 2] call acre_api_fnc_setRadioChannel;
		};
		case 'squad_leader_6': {
			[ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 6] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 2] call acre_api_fnc_setRadioChannel;
		};

		case 'platoon_hq_1':  { [ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 7] call acre_api_fnc_setRadioChannel; };
		case 'platoon_hq_2':  { [ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 8] call acre_api_fnc_setRadioChannel; };
		case 'company_hq':  { [ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 9] call acre_api_fnc_setRadioChannel; };

		case 'company_rto': {
			[ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 9] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC117F"] call acre_api_fnc_getRadioByType), 4] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 1] call acre_api_fnc_setRadioChannel;
		};
		case 'company_commander': {
			[ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 9] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 4] call acre_api_fnc_setRadioChannel;
		};
		case 'platoon_leader_1': {
			[ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 7] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 1] call acre_api_fnc_setRadioChannel;
		};
		case 'platoon_leader_2': {
			[ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 8] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 2] call acre_api_fnc_setRadioChannel;
		};
		case 'platoon_rto_1': {
			[ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 7] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC117F"] call acre_api_fnc_getRadioByType), 4] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 1] call acre_api_fnc_setRadioChannel;
		};
		case 'platoon_rto_2': {
			[ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 8] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC117F"] call acre_api_fnc_getRadioByType), 4] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 2] call acre_api_fnc_setRadioChannel;
		};
		case 'Pilot': {
			[ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 16] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 7] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC117F"] call acre_api_fnc_getRadioByType), 7] call acre_api_fnc_setRadioChannel;
			};
		case 'JTAC': {
			[ (["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 7] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC152"] call acre_api_fnc_getRadioByType), 7] call acre_api_fnc_setRadioChannel;
			[ (["ACRE_PRC117F"] call acre_api_fnc_getRadioByType), 7] call acre_api_fnc_setRadioChannel;
			};

	};
};
