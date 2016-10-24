/*
| Author: 
|
|	Pfc.Christiansen
|_____
|
|   Description: Call this to get a task\mission name from the pool, variable used in external script\task sys is KC_missionName
|	
|	Created: 1.December 2014
|	Last modified: 
|	Made for AhoyWorld.
*/

_pool = ["Operation Shark","Operation Brass","Operation Constatine","Operation Sledgehammer","Operation Purple Knife","Operation Black Anvil","Operation Drawback","Operation Red Charger","Operation Purple Rain","Operation Leatherback","Operation Drawback","Operation Flashpoint","Operation Overture","Operation Black Gate","Operation Harmony",
"Operation Bump","Operation Brass Lilly","Operation Predator","Operation Gemini","Operation Phantom","Operation Black Angel","Operation Showdown","Operation Razor","Operation Octagon","Operation Trident","Operation Crossbow","Operation Barrage","Operation Dust Demon","Operation Prodigy","Operation Thunder Flash",
"Operation Dragon","Operation Curtains Down","Operation Steamroller","Operation Eagle Feather","Operation Bulwark","Operation Quicksand","Operation Blind Knife","Operation Subterfuge","Operation Bad Juju","Operation Able Sentry","Operation Gray Nightmare"];
_missionName = _pool call BIS_fnc_selectRandom;

AW_missionName = _missionName;

