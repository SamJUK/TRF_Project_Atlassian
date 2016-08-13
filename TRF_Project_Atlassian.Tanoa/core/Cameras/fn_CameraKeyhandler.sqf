switch (_this) do {

      //Key ESC
      /*
  case 1: {
    []spawn TRF_fnc_leaveCameras;
  };*/
    //Key F1
  case 59: {
    []spawn TRF_fnc_leaveCameras;
  };
  case 2:{
    [KHCamHigh1]spawn TRF_fnc_switchCamera;
  };
  case 3:{
    [KHCamHigh2]spawn TRF_fnc_switchCamera;
  };
  case 4:{
    [KHCam1]spawn TRF_fnc_switchCamera;
  };
  case 5:{
    [KHCam2]spawn TRF_fnc_switchCamera;
  };
  case 6:{
    [KHCam3]spawn TRF_fnc_switchCamera;
  };
};
