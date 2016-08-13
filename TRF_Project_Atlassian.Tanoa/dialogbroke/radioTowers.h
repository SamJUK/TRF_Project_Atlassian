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
