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
