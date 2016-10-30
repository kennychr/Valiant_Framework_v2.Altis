// tfar_radio_channel_set.sqf
// sets radios channels


_settingsSwWest = false call TFAR_fnc_generateSwSettings;
_settingsSwWest set [2, ["40", "50", "51", "52", "60", "70",  "80", "90"]];
tf_freq_west = _settingsSwWest;
_settingsSwEast = false call TFAR_fnc_generateSwSettings;
_settingsSwEast set [2, ["40", "50", "51", "52", "60", "70",  "80", "90"]];
tf_freq_east = _settingsSwEast;
_settingsSwGuer = false call TFAR_fnc_generateSwSettings;
_settingsSwGuer set [2, ["40", "50", "51", "52", "60", "70",  "80", "90"]];
tf_freq_guer = _settingsSwGuer;

_settingsLRWest = false call TFAR_fnc_generateLRSettings;
_settingsLRWest set [2, ["30","31","32"]];
tf_freq_west_lr = _settingsLRWest;
_settingsLREast = false call TFAR_fnc_generateLRSettings;
_settingsLREast set [2, ["30","31","32"]];
tf_freq_east_lr = _settingsLREast;
_settingsLRGuer = false call TFAR_fnc_generateLRSettings;
_settingsLRGuer set [2, ["30","31","32"]];
tf_freq_guer_lr = _settingsLRGuer;

if ( call TFAR_fnc_haveSWRadio ) then
{
	switch (player getVariable "description") do
	{
		case 'CMD_member': { [(call TFAR_fnc_activeSwRadio), 0] call TFAR_fnc_setSwChannel; };
		case 'A_member': { [(call TFAR_fnc_activeSwRadio), 1] call TFAR_fnc_setSwChannel; };
		case 'B_member': { [(call TFAR_fnc_activeSwRadio), 2] call TFAR_fnc_setSwChannel; };
		case 'C_member':{ [(call TFAR_fnc_activeSwRadio), 3] call TFAR_fnc_setSwChannel; };
		case 'MMG1_member':
		{	[(call TFAR_fnc_activeSwRadio), 4] call TFAR_fnc_setSwChannel;
		};
		case 'HELI1_member':
		{	[(call TFAR_fnc_activeSwRadio), 7] call TFAR_fnc_setSwChannel;
		};

		case 'LOGI_member':
		{	[(call TFAR_fnc_activeSwRadio), 7, "92"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeSwRadio), 7] call TFAR_fnc_setSwChannel;
		};
	};
};

if ( call TFAR_fnc_haveLRRadio ) then
{	[(call TFAR_fnc_activeLrRadio), 1, "30"] call TFAR_fnc_SetChannelFrequency;
};
