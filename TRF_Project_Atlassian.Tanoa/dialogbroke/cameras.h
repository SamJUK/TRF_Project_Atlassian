class TRF_Cameras
{
    idd = 17001; // not used here but required
    movingEnabled = false;
    // variable for which we will access the dialog
    onLoad = "uiNamespace setVariable ['TRF_Cameras', (_this select 0)];";

    class Controls
    {
      class TRF_Cameras_Back: TRF_BACK_GUI
      {
        idc = 2200;
        x = 0.391719 * safezoneW + safezoneX;
        y = 0.236 * safezoneH + safezoneY;
        w = 0.201094 * safezoneW;
        h = 0.495 * safezoneH;
      };
      class TRF_Cameras_Top_Back: TRF_TITLE_BG
      {
        idc = 2201;
        x = 0.391718 * safezoneW + safezoneX;
        y = 0.236 * safezoneH + safezoneY;
        w = 0.201094 * safezoneW;
        h = 0.022 * safezoneH;
      };
      class TRF_Cameras_Top_Text: RscText
      {
        idc = 1000;
        text = "TRF xxx Cameras"; //--- ToDo: Localize;
        x = 0.391719 * safezoneW + safezoneX;
        y = 0.225 * safezoneH + safezoneY;
        w = 0.12375 * safezoneW;
        h = 0.044 * safezoneH;
      };
      class TRF_Camera_Button1: RscButton
      {
        idc = 1601;
        text = "Camera 1"; //--- ToDo: Localize;
        x = 0.407187 * safezoneW + safezoneX;
        y = 0.291 * safezoneH + safezoneY;
        w = 0.0721875 * safezoneW;
        h = 0.055 * safezoneH;
      };
      class TRF_Camera_Button2: RscButton
      {
        idc = 1602;
        text = "Camera 2"; //--- ToDo: Localize;
        x = 0.505156 * safezoneW + safezoneX;
        y = 0.291 * safezoneH + safezoneY;
        w = 0.0721875 * safezoneW;
        h = 0.055 * safezoneH;
      };
      class TRF_Camera_Button4: RscButton
      {
        idc = 1604;
        text = "Camera 4"; //--- ToDo: Localize;
        x = 0.505156 * safezoneW + safezoneX;
        y = 0.368 * safezoneH + safezoneY;
        w = 0.0721875 * safezoneW;
        h = 0.055 * safezoneH;
      };
      class TRF_Camera_Button3: RscButton
      {
        idc = 1603;
        text = "Camera 3"; //--- ToDo: Localize;
        x = 0.407187 * safezoneW + safezoneX;
        y = 0.368 * safezoneH + safezoneY;
        w = 0.0721875 * safezoneW;
        h = 0.055 * safezoneH;
      };
      class TRF_Camera_Button5: RscButton
      {
        idc = 1605;
        text = "Camera 5"; //--- ToDo: Localize;
        x = 0.407187 * safezoneW + safezoneX;
        y = 0.445 * safezoneH + safezoneY;
        w = 0.0721875 * safezoneW;
        h = 0.055 * safezoneH;
      };
      class TRF_Camera_Button6: RscButton
      {
        idc = 1606;
        text = "Camera 6"; //--- ToDo: Localize;
        x = 0.505156 * safezoneW + safezoneX;
        y = 0.445 * safezoneH + safezoneY;
        w = 0.0721875 * safezoneW;
        h = 0.055 * safezoneH;
      };
      class TRF_Camera_Button8: RscButton
      {
        idc = 1608;
        text = "Camera 8"; //--- ToDo: Localize;
        x = 0.505156 * safezoneW + safezoneX;
        y = 0.533 * safezoneH + safezoneY;
        w = 0.0721875 * safezoneW;
        h = 0.055 * safezoneH;
      };
      class TRF_Camera_Button7: RscButton
      {
        idc = 1607;
        text = "Camera 7"; //--- ToDo: Localize;
        x = 0.407187 * safezoneW + safezoneX;
        y = 0.533 * safezoneH + safezoneY;
        w = 0.0721875 * safezoneW;
        h = 0.055 * safezoneH;
      };
      class TRF_Camera_Button9: RscButton
      {
        idc = 1609;
        text = "Camera 9"; //--- ToDo: Localize;
        x = 0.407187 * safezoneW + safezoneX;
        y = 0.621 * safezoneH + safezoneY;
        w = 0.0721875 * safezoneW;
        h = 0.055 * safezoneH;
      };
      class TRF_Camera_Button10: RscButton
      {
        idc = 1610;
        text = "Camera 10"; //--- ToDo: Localize;
        x = 0.505156 * safezoneW + safezoneX;
        y = 0.621 * safezoneH + safezoneY;
        w = 0.0721875 * safezoneW;
        h = 0.055 * safezoneH;
      };
      class TRF_Camera_Exit: RscButton
      {
        idc = 1611;
        text = "Exit"; //--- ToDo: Localize;
        x = 0.412344 * safezoneW + safezoneX;
        y = 0.698 * safezoneH + safezoneY;
        w = 0.159844 * safezoneW;
        h = 0.022 * safezoneH;
        action = "CloseDialog 0;";
      };
    };
};
