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
