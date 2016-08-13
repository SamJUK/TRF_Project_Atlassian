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
