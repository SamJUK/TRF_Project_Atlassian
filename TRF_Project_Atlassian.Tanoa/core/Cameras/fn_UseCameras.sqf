disableSerialization;
createDialog "TRF_Cameras";
_dialog = uiNamespace getVariable "TRF_Cameras";
_title = _dialog displayCtrl 1000;
_title ctrlSetText "TRF Kill House Cameras";
//Buttons 1 - 10 | 1601 -> 1610
_button = _dialog displayCtrl 1601;
_button ctrlSetText "High 1";
_button buttonSetAction "[KHCamHigh1]spawn TRF_fnc_OpenCameras;";
_button = _dialog displayCtrl 1602;
_button ctrlSetText "High 2";
_button buttonSetAction "[KHCamHigh2]spawn TRF_fnc_OpenCameras;";
_button = _dialog displayCtrl 1603;
_button ctrlSetText "Internal 1";
_button buttonSetAction "[KHCam1]spawn TRF_fnc_OpenCameras;";
_button = _dialog displayCtrl 1604;
_button ctrlSetText "Internal 2";
_button buttonSetAction "[KHCam2]spawn TRF_fnc_OpenCameras;";
_button = _dialog displayCtrl 1605;
_button ctrlSetText "Internal 3";
_button buttonSetAction "[KHCam3]spawn TRF_fnc_OpenCameras;";

_buttonsNotUsed = [1606,1607,1608,1609,1610];
{
  _ctrl = _dialog displayCtrl _x;
  _ctrl ctrlShow false;
}forEach _buttonsNotUsed;
