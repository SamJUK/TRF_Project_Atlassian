["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player forceAddUniform "U_I_C_Soldier_Bandit_5_F";
player addHeadgear "H_Beret_Colonel";
player addGoggles "G_Shades_Black";

player setVariable ["TRF_Cash", 0];
player setVariable ["TRF_Bank", 5000];

player addAction ["Admin Tools", {[]spawn TRF_fnc_openAdminTools}];
