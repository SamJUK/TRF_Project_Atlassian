disableSerialization;
createDialog "TRF_Cameras";
_dialog = uiNamespace getVariable "TRF_Cameras";
_title = _dialog displayCtrl 1000;
_title ctrlSetText "TRF Unit Head Cameras";
//Buttons 1 - 10 | 1601 -> 1610
_button = _dialog displayCtrl 1601;
_button ctrlSetText "Sam Head Cam";
_button buttonSetAction "[HeadCam]spawn TRF_fnc_OpenHeadCameras;";
_button = _dialog displayCtrl 1602;
_button ctrlSetText "Sam Body Cam";
_button buttonSetAction "[BodyCam]spawn TRF_fnc_OpenHeadCameras;";

_buttonsNotUsed = [1603,1604,1605,1606,1607,1608,1609,1610];
{
  _ctrl = _dialog displayCtrl _x;
  _ctrl ctrlShow false;
}forEach _buttonsNotUsed;
