class TRF_Store
{
    idd = 17001; // not used here but required
    movingEnabled = false;
    // variable for which we will access the dialog
    onLoad = "uiNamespace setVariable ['TRF_Store', (_this select 0)];";

    class Controls
    {
      class TRF_Store_BG: TRF_Store_BG
      {
      	idc = 2200;
      	x = 0.257656 * safezoneW + safezoneX;
      	y = 0.214 * safezoneH + safezoneY;
      	w = 0.484688 * safezoneW;
      	h = 0.638 * safezoneH;
      };
      class TRF_Store_name: RscText
      {
      	idc = 1000;
      	text = "TRF xxx Store"; //--- ToDo: Localize;
      	x = 0.257656 * safezoneW + safezoneX;
      	y = 0.214 * safezoneH + safezoneY;
      	w = 0.309375 * safezoneW;
      	h = 0.033 * safezoneH;
      };
      class TRF_Store_Color_bar: IGUIBack
      {
      	idc = 2201;
      	x = 0.257656 * safezoneW + safezoneX;
      	y = 0.214 * safezoneH + safezoneY;
      	w = 0.489844 * safezoneW;
      	h = 0.033 * safezoneH;
      };
      class TRF_Store_Left_LB: RscListbox
      {
      	idc = 1500;
      	x = 0.262812 * safezoneW + safezoneX;
      	y = 0.258 * safezoneH + safezoneY;
      	w = 0.20625 * safezoneW;
      	h = 0.528 * safezoneH;
      };
      class TRF_Store_Structured_Text: RscStructuredText
      {
      	idc = 1100;
      	x = 0.479375 * safezoneW + safezoneX;
      	y = 0.258 * safezoneH + safezoneY;
      	w = 0.252656 * safezoneW;
      	h = 0.528 * safezoneH;
      };
      class TRF_Store_Button_Exit: RscButton
      {
      	idc = 1606;
      	text = "Exit"; //--- ToDo: Localize;
      	x = 0.309219 * safezoneW + safezoneX;
      	y = 0.797 * safezoneH + safezoneY;
      	w = 0.128906 * safezoneW;
      	h = 0.044 * safezoneH;
        action = "closeDialog 0;";
      };
      class TRF_Store_Button_Choose: RscButton
      {
      	idc = 1607;
      	text = "Choose"; //--- ToDo: Localize;
      	x = 0.546406 * safezoneW + safezoneX;
      	y = 0.797 * safezoneH + safezoneY;
      	w = 0.128906 * safezoneW;
      	h = 0.044 * safezoneH;
        action = "hint 'im broke'";
      };
    };
};
class TRF_Playermenu
{
    idd = 17001; // not used here but required
    movingEnabled = false;
    // variable for which we will access the dialog
    onLoad = "uiNamespace setVariable ['TRF_Playermenu', (_this select 0)];";

    class Controls
    {
      class TRF_PM_BG: IGUIBack
      {
      	idc = 2200;
      	x = 0.257656 * safezoneW + safezoneX;
      	y = 0.236 * safezoneH + safezoneY;
      	w = 0.484688 * safezoneW;
      	h = 0.407 * safezoneH;
      };
      class TRF_PM_Topbar: IGUIBack
      {
      	idc = 2201;
      	x = 0.257656 * safezoneW + safezoneX;
      	y = 0.236 * safezoneH + safezoneY;
      	w = 0.484688 * safezoneW;
      	h = 0.033 * safezoneH;
      };
      class TRF_PM_TopbarText: RscText
      {
      	idc = 1000;
      	text = "Player Menu"; //--- ToDo: Localize;
      	x = 0.267969 * safezoneW + safezoneX;
      	y = 0.236 * safezoneH + safezoneY;
      	w = 0.232031 * safezoneW;
      	h = 0.033 * safezoneH;
      };
      class TRF_PM_Listbox: RscListbox
      {
      	idc = 1500;
      	x = 0.585593 * safezoneW + safezoneX;
      	y = 0.28 * safezoneH + safezoneY;
      	w = 0.108281 * safezoneW;
      	h = 0.253 * safezoneH;
      };
      class TRF_PM_Exit: RscButton
      {
      	idc = 1600;
      	text = "Exit"; //--- ToDo: Localize;
      	x = 0.257656 * safezoneW + safezoneX;
      	y = 0.643 * safezoneH + safezoneY;
      	w = 0.113437 * safezoneW;
      	h = 0.033 * safezoneH;
        action = "closeDialog 0;";
      };
      class TRF_PM_Use: RscButton
      {
      	idc = 1601;
      	text = "Use"; //--- ToDo: Localize;
      	x = 0.659845 * safezoneW + safezoneX;
      	y = 0.533 * safezoneH + safezoneY;
      	w = 0.0360937 * safezoneW;
      	h = 0.033 * safezoneH;
        action = "hint 'Use';";
      };
      class TRF_PM_Cancel: RscButton
      {
      	idc = 1602;
      	text = "Cancel"; //--- ToDo: Localize;
      	x = 0.618592 * safezoneW + safezoneX;
      	y = 0.533 * safezoneH + safezoneY;
      	w = 0.04125 * safezoneW;
      	h = 0.033 * safezoneH;
        action = "hint 'Cancel';";
      };
      class TRF_PM_Drop: RscButton
      {
      	idc = 1603;
      	text = "Drop"; //--- ToDo: Localize;
      	x = 0.583531 * safezoneW + safezoneX;
      	y = 0.533 * safezoneH + safezoneY;
      	w = 0.0360937 * safezoneW;
      	h = 0.033 * safezoneH;
        action = "hint 'Drop';";
      };
      class TRF_PM_ST: RscStructuredText
      {
      	idc = 1100;
      	x = 0.267969 * safezoneW + safezoneX;
      	y = 0.291 * safezoneH + safezoneY;
      	w = 0.154687 * safezoneW;
      	h = 0.33 * safezoneH;
      };
    };
};
class TRF_ATM
{
    idd = 17001; // not used here but required
    movingEnabled = false;
    // variable for which we will access the dialog
    onLoad = "uiNamespace setVariable ['TRF_ATM', (_this select 0)];";

    class Controls
    {
      class TRF_ATM_BG: IGUIBack
      {
      	idc = 2200;

      	x = 0.396875 * safezoneW + safezoneX;
      	y = 0.302 * safezoneH + safezoneY;
      	w = 0.216563 * safezoneW;
      	h = 0.418 * safezoneH;
      };
      class TRF_ATM_ST: RscStructuredText
      {
      	idc = 1100;

      	x = 0.427812 * safezoneW + safezoneX;
      	y = 0.324 * safezoneH + safezoneY;
      	w = 0.165 * safezoneW;
      	h = 0.11 * safezoneH;
      };
      class TRF_ATM_Exit: RscButton
      {
      	idc = 1600;
      	action = "closeDialog 0;";

      	text = "Exit"; //--- ToDo: Localize;
      	x = 0.453594 * safezoneW + safezoneX;
      	y = 0.665 * safezoneH + safezoneY;
      	w = 0.113437 * safezoneW;
      	h = 0.033 * safezoneH;
      };
      class TRF_ATM_Withdraw: RscButton
      {
      	idc = 1601;
      	action = "[]spawn trf_fnc_withdrawATM";

      	text = "Withdraw"; //--- ToDo: Localize;
      	x = 0.453594 * safezoneW + safezoneX;
      	y = 0.621 * safezoneH + safezoneY;
      	w = 0.113437 * safezoneW;
      	h = 0.033 * safezoneH;
      };
      class TRF_ATM_Deposit: RscButton
      {
      	idc = 1602;
      	action = "[]spawn trf_fnc_depositATM";

      	text = "Deposit"; //--- ToDo: Localize;
      	x = 0.453594 * safezoneW + safezoneX;
      	y = 0.577 * safezoneH + safezoneY;
      	w = 0.113437 * safezoneW;
      	h = 0.033 * safezoneH;
      };
      class TRF_ATM_Input: RscEdit
      {
      	idc = 1400;

      	x = 0.453594 * safezoneW + safezoneX;
      	y = 0.456 * safezoneH + safezoneY;
      	w = 0.113437 * safezoneW;
      	h = 0.033 * safezoneH;
      };
      class TRF_ATM_BANK_INVIS_BUTTON_SELF: TRF_ATM_BANK_INVIS_BUTTON
      {
      	idc = 1611;
      	action = "['Self']spawn trf_fnc_banktype";

      	x = 0.453594 * safezoneW + safezoneX;
      	y = 0.533 * safezoneH + safezoneY;
      	w = 0.0567187 * safezoneW;
      	h = 0.033 * safezoneH;
      };
      class TRF_ATM_BANK_SELF: TRFBankOn
      {
      	idc = 1603;

      	text = "Self"; //--- ToDo: Localize;
      	x = 0.453594 * safezoneW + safezoneX;
      	y = 0.533 * safezoneH + safezoneY;
      	w = 0.0567187 * safezoneW;
      	h = 0.033 * safezoneH;
      };
      class TRF_ATM_BANK_INVIS_BUTTON_UNIT: TRF_ATM_BANK_INVIS_BUTTON
      {
      	idc = 1612;
      	action = "['Unit']spawn trf_fnc_banktype";

        x = 0.510312 * safezoneW + safezoneX;
      	y = 0.533 * safezoneH + safezoneY;
      	w = 0.0567187 * safezoneW;
      	h = 0.033 * safezoneH;
      };
      class TRF_ATM_BANK_UNIT: TRFBankOff
      {
      	idc = 1604;

      	text = "Unit"; //--- ToDo: Localize;
      	x = 0.510312 * safezoneW + safezoneX;
      	y = 0.533 * safezoneH + safezoneY;
      	w = 0.0567187 * safezoneW;
      	h = 0.033 * safezoneH;
      };
      class TRF_ATM_BankType: RscText
      {
      	idc = 1000;
      	text = "Bank Type: Self"; //--- ToDo: Localize;
      	x = 0.453594 * safezoneW + safezoneX;
      	y = 0.489 * safezoneH + safezoneY;
      	w = 0.113437 * safezoneW;
      	h = 0.055 * safezoneH;
      };
    };
};
class TRF_Radiotowers
{
    idd = 17001; // not used here but required
    movingEnabled = false;
    // variable for which we will access the dialog
    onLoad = "uiNamespace setVariable ['TRF_Radiotowers', (_this select 0)];";

    class Controls
    {
      class TRF_RadioTowers: IGUIBack
      {
      	idc = 2200;
      	x = 0.304062 * safezoneW + safezoneX;
      	y = 0.346 * safezoneH + safezoneY;
      	w = 0.391875 * safezoneW;
      	h = 0.264 * safezoneH;
      };
      class TRF_RadioTowers_Text: RscStructuredText
      {
      	idc = 1000;
      	text = "CONNECTIONS ARE GOOD!"; //--- ToDo: Localize;
      	x = 0.340156 * safezoneW + safezoneX;
      	y = 0.357 * safezoneH + safezoneY;
      	w = 0.324844 * safezoneW;
      	h = 0.154 * safezoneH;
      };
      class TRF_RadioTowers_Repair: TRF_RTButton
      {
      	idc = 1600;
      	text = "Repair"; //--- ToDo: Localize;
      	x = 0.340156 * safezoneW + safezoneX;
      	y = 0.533 * safezoneH + safezoneY;
      	w = 0.324844 * safezoneW;
      	h = 0.044 * safezoneH;
      };
    };
};

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
