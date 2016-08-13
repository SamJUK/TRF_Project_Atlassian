/*

	Note: Feel free to add more classes to watch out for following the pattern



	Usage:

	(_displayName) call fnc_g_findClassname; //returns className as a string



	Example:

	"RGO Grenade" call fnc_g_findClassname; //returns "HandGrenade"

*/

	private "_findClassname";



	_findClassname = "getText (_x >> 'displayName') == _this" configClasses (configFile >> "cfgWeapons");

	if (count _findClassname > 0) exitWith {configName (_findClassname select 0)};



	_findClassname = "getText (_x >> 'displayName') == _this" configClasses (configFile >> "cfgMagazines");

	if (count _findClassname > 0) exitWith {configName (_findClassname select 0)};



	_findClassname = "getText (_x >> 'displayName') == _this" configClasses (configFile >> "cfgVehicles");

	if (count _findClassname > 0) exitWith {configName (_findClassname select 0)};



	_findClassname = format ["Item %1 not found",_this];

	_findClassname
