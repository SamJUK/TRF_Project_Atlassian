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

//SAM MAIN - GEN - McFlurry
if ((getPlayerUID player) in ["76561198055520389","76561198098581782","76561198044901622"]) then {
  player addAction ["Admin Tools", {[]spawn TRF_fnc_openAdminTools}];
};
