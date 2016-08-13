waituntil {!isnull (finddisplay 46)};
(findDisplay 46) displayRemoveAllEventHandlers "KeyDown";
[]execVM "Config_shops.sqf";
[]execVM "Config_shopsv2.sqf";
[]execVM "Config_Missions.sqf";
[]execVM "db\init.sqf";
[]execVM "core\radioTowers\init.sqf";
[]execVM "removeMapObjs.sqf";
