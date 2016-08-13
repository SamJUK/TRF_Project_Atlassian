class TRF_Admintools
{
    idd = 17001; // not used here but required
    movingEnabled = false;
    // variable for which we will access the dialog
    onLoad = "uiNamespace setVariable ['TRF_Admintools', (_this select 0)];";

    class Controls
    {
      class TRF_AT_BG: TRF_BACK_GUI
      {
      	idc = 2200;
      	x = 0.329844 * safezoneW + safezoneX;
      	y = 0.324 * safezoneH + safezoneY;
      	w = 0.278437 * safezoneW;
      	h = 0.429 * safezoneH;
      };
      class TRF_AT_TITLE_BG: TRF_TITLE_BG
      {
      	idc = 1600;
      	x = 0.329844 * safezoneW + safezoneX;
      	y = 0.324 * safezoneH + safezoneY;
      	w = 0.278437 * safezoneW;
      	h = 0.033 * safezoneH;
      };
      class TRF_AT_TITLE_TEXT: RscText
      {
      	idc = 1000;
      	text = "TRF Admin/Dev Tools"; //--- ToDo: Localize;
      	x = 0.329844 * safezoneW + safezoneX;
      	y = 0.313 * safezoneH + safezoneY;
      	w = 0.175313 * safezoneW;
      	h = 0.055 * safezoneH;
      };
      class TRF_AT_PLAYERS_LISTBOX: RscListbox
      {
      	idc = 1500;
      	x = 0.474219 * safezoneW + safezoneX;
      	y = 0.39 * safezoneH + safezoneY;
      	w = 0.118594 * safezoneW;
      	h = 0.308 * safezoneH;
      };
      class TRF_AT_Player_TEXT: RscText
      {
      	idc = 1001;
      	text = "Players:"; //--- ToDo: Localize;
      	x = 0.474219 * safezoneW + safezoneX;
      	y = 0.357 * safezoneH + safezoneY;
      	w = 0.12375 * safezoneW;
      	h = 0.044 * safezoneH;
      };
      class TRF_AT_COMMANDS_LISTBOX: RscListbox
      {
      	idc = 1501;
      	x = 0.345312 * safezoneW + safezoneX;
      	y = 0.39 * safezoneH + safezoneY;
      	w = 0.118594 * safezoneW;
      	h = 0.308 * safezoneH;
      };
      class TRF_AT_COMMANDS_TEXT: RscText
      {
      	idc = 1002;
      	text = "Commands:"; //--- ToDo: Localize;
      	x = 0.345312 * safezoneW + safezoneX;
      	y = 0.357 * safezoneH + safezoneY;
      	w = 0.12375 * safezoneW;
      	h = 0.044 * safezoneH;
      };
      class TRF_AT_EXEC_SELF: RscButton
      {
      	idc = 1601;
      	text = "EXEC SELF"; //--- ToDo: Localize;
      	x = 0.350469 * safezoneW + safezoneX;
      	y = 0.709 * safezoneH + safezoneY;
      	w = 0.0670312 * safezoneW;
      	h = 0.033 * safezoneH;
        action = "['Self']spawn TRF_fnc_ATExec";
      };
      class TRF_AT_EXEC_TARGET: RscButton
      {
      	idc = 1602;
      	text = "EXEC TARGET"; //--- ToDo: Localize;
      	x = 0.520625 * safezoneW + safezoneX;
      	y = 0.709 * safezoneH + safezoneY;
      	w = 0.0670312 * safezoneW;
      	h = 0.033 * safezoneH;
        action = "['Target']spawn TRF_fnc_ATExec";
      };
      class TRF_AT_SPAWN_MENU_BUTTON: RscButton
      {
      	idc = 1603;
      	text = "SPAWN MENU"; //--- ToDo: Localize;
      	x = 0.438125 * safezoneW + safezoneX;
      	y = 0.709 * safezoneH + safezoneY;
      	w = 0.0670312 * safezoneW;
      	h = 0.033 * safezoneH;
        action = "closeDialog 0; []spawn TRF_fnc_openAdminToolsSpawn;";
      };
    };
};
class TRF_Admintools_Spawn
{
    idd = 17001; // not used here but required
    movingEnabled = false;
    // variable for which we will access the dialog
    onLoad = "uiNamespace setVariable ['TRF_Admintools_Spawn', (_this select 0)];";

    class Controls
    {
      class TRF_AT_BG: TRF_BACK_GUI
      {
      	idc = 2200;
      	x = 0.329844 * safezoneW + safezoneX;
      	y = 0.324 * safezoneH + safezoneY;
      	w = 0.278437 * safezoneW;
      	h = 0.429 * safezoneH;
      };
      class TRF_AT_TITLE_BG: TRF_TITLE_BG
      {
      	idc = 1600;
      	x = 0.329844 * safezoneW + safezoneX;
      	y = 0.324 * safezoneH + safezoneY;
      	w = 0.278437 * safezoneW;
      	h = 0.033 * safezoneH;
      };
      class TRF_AT_TITLE_TEXT: RscText
      {
      	idc = 1000;
      	text = "TRF Admin/Dev Tools"; //--- ToDo: Localize;
      	x = 0.329844 * safezoneW + safezoneX;
      	y = 0.313 * safezoneH + safezoneY;
      	w = 0.175313 * safezoneW;
      	h = 0.055 * safezoneH;
      };
      class TRF_AT_SPAWN_LISTBOX: RscListbox
      {
      	idc = 1500;
      	x = 0.340156 * safezoneW + safezoneX;
      	y = 0.368 * safezoneH + safezoneY;
      	w = 0.12375 * safezoneW;
      	h = 0.352 * safezoneH;
      };
      class TRF_AT_SPAWN_FILTER_ALL: RscButton
      {
      	idc = 1601;
      	text = "Filter All"; //--- ToDo: Localize;
      	x = 0.479375 * safezoneW + safezoneX;
      	y = 0.368 * safezoneH + safezoneY;
      	w = 0.118594 * safezoneW;
      	h = 0.044 * safezoneH;
        action = "['All']spawn TRF_fnc_filterSpawn;";
      };
      class TRF_AT_SPAWN_FILTER_AIR: RscButton
      {
      	idc = 1602;
      	text = "Filter Air"; //--- ToDo: Localize;
      	x = 0.479375 * safezoneW + safezoneX;
      	y = 0.423 * safezoneH + safezoneY;
      	w = 0.118594 * safezoneW;
      	h = 0.044 * safezoneH;
        action = "['Air']spawn TRF_fnc_filterSpawn;";
      };
      class TRF_AT_SPAWN_FILTER_GROUND: RscButton
      {
      	idc = 1603;
      	text = "Filter Ground"; //--- ToDo: Localize;
      	x = 0.479375 * safezoneW + safezoneX;
      	y = 0.478 * safezoneH + safezoneY;
      	w = 0.118594 * safezoneW;
      	h = 0.044 * safezoneH;
        action = "['Ground']spawn TRF_fnc_filterSpawn;";
      };
      class TRF_AT_SPAWN_FILTER_WATER: RscButton
      {
      	idc = 1604;
      	text = "Filter Water"; //--- ToDo: Localize;
      	x = 0.479375 * safezoneW + safezoneX;
      	y = 0.533 * safezoneH + safezoneY;
      	w = 0.118594 * safezoneW;
      	h = 0.044 * safezoneH;
        action = "['Water']spawn TRF_fnc_filterSpawn;";
      };
      class TRF_AT_SPAWN_SPAWN: RscButton
      {
      	idc = 1605;
      	text = "Spawn"; //--- ToDo: Localize;
      	x = 0.479375 * safezoneW + safezoneX;
      	y = 0.621 * safezoneH + safezoneY;
      	w = 0.118594 * safezoneW;
      	h = 0.044 * safezoneH;
        action = "[]spawn TRF_fnc_VehicleSpawn";
      };
      class TRF_AT_SPAWN_CANCEL: RscButton
      {
      	idc = 1606;
      	text = "Cancel"; //--- ToDo: Localize;
      	x = 0.479375 * safezoneW + safezoneX;
      	y = 0.676 * safezoneH + safezoneY;
      	w = 0.118594 * safezoneW;
      	h = 0.044 * safezoneH;
        action= "closeDialog 0;";
      };
    };
};
