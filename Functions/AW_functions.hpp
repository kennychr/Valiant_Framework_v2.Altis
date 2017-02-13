/*
| Author:
|
|	Pfc.Christiansen
|_____
|
|   Description: Config for functions
|
|	Created: 10.11-2015
|	Last modified:
|	Made for AhoyWorld.
*/

class AW {
	tag= "AW"
	class AI {
		file = "Functions\AI";
		class reinforceChopper 				{};
		class reinforceMechanized 		{};
		class cas_strike							{};
		class artillery_strike				{};
		class spawnEnemy							{};
		class setBehaviour						{};

	};

class Airfield {
	file = "Functions\Airfield";
	class airfield_init							{};
};

	class Map	{
		file = "Functions\Map";
		class findSpace							{};
		class findTown							{};
		class mapCenter							{};
	};
	class Roster {
		file = "Functions\Roster";
		class open_roster						{};
		class roster								{};
	};

	class Supplies {
		file = "Functions\Supplies";
		class Ammo_Crate					{};
		class radioBox						{};
		class supplyPole					{};
		class FSG									{};
		class Supply							{};
	};

	class VA {
		file = "Functions\VA";
		class VA02								{};
	};

	class Misc {
		file = "Functions\Misc";
		class missionName 					{};
		class diary									{};
		class fpsmon								{};
		class randomPosTrigger			{};
		class vSpawn_lhd						{};
		class cachePlacer						{};
		class vehicleSpawner				{};
		class af_logic							{};
		class server_init						{};

	};

	class Tasks	{
		file = "Functions\Tasks";
		class taskInit						{};
		class makeTask						{};
		class missionName					{};
	};

	class Emplacements {
		file = "Functions\Emplacements";
		class createAAA 						{};
		class createMG							{};
	};

	class AmbAI	{
		file = "Functions\AmbAI";
		class AMB_findPlayer 						{};
		class AMB_findSpawnPos					{};
	};

	class Garbage {
		file = "Functions\Garbage";
		class addDead	{};
		class collectGarbage {};
	};
	class Radios {
		file = "Functions\Radios";
		class acre_setup 	{};
		class presets 		{};
		class radio_init	{};
		class tfar_setup	{};
		class tfar_channel_set	{};
		class radioGiver	{};
	};
	class Loadouts {
		file = "Functions\Loadouts";
		class LEX					{};
	};
	class Safestart {
		file = "Functions\SafeStart";
		class safestart_init {};
		class safestart_player {};
		class safestart_server_countdown {};
		class safestart_server_admin {};
	}

};
class QS {
	tag = "QS";
	class functions
	{
		file = "Functions\Misc";
		class vMonitor 						{};
		class vSetup02					 	{};
		class conditionMobileArmory 	{};
	};
};
