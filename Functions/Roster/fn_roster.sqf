/*
 * Author: [Pfc.Christiansen]
 * [Inspired by Ryko's roster,simplified by me]
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */


 _players = [];
 _list = [];
 _form = "<t align='left' size='1.4'>";
 _form2 = "</t>";
// {_players pushBack _x} forEach (allPlayers - entities "HeadlessClient_F");
{_players pushBack _x} forEach (playableUnits - entities "HeadlessClient_F");
 {_return = _form + format ["<br/><t underline='true'>%4::%1</t>: <t color='#ffff66'>%2 %3</t>::<t underline='true'>RADIO'S</t>::SW:<t color='#ffff66'><t underline='true'>%5</t></t>::LR:<t color='#ffff66'><t underline='true'>%6</t></t>  ",roleDescription _x, rank _x, name _x, groupId (group _x),((call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwFrequency),((call TFAR_fnc_ActiveLrRadio) call TFAR_fnc_getLrFrequency)] + _form2;_list pushBack _return} forEach _players;
_list sort true;
_listStr =  format ["%1",_list];
_parsed = parseText _listStr;
((findDisplay 1799) displayCtrl 1812) ctrlSetStructuredText _parsed;
