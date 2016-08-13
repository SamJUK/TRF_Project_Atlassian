//Select Camera
//[KHCamHigh1]spawn TRF_fnc_switchCamera;
_cam = _this select 0;
  [_cam]spawn TRF_fnc_switchHeadCameras;
  player setVariable ["TRF_UsingHeadCameras", True];
//Disable Player Movement - TEMP
  player enablesimulation false;
//Allow Leaving of camera and changing (Keyhandler)
  waituntil {!isnull (finddisplay 46)};
  HeadCameraKeyHandler = (findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 spawn TRF_fnc_HeadCameraKeyhandler;false;"];
