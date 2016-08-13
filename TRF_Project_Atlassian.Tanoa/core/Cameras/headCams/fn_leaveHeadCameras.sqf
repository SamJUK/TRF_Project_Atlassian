if (!(player getVariable "TRF_UsingHeadCameras")) exitWith {};
  player setVariable ["TRF_UsingHeadCameras", false];
  [
      '',
      safeZoneX+0.00,
      safeZoneY+safeZoneH-0.12,
      99999,
      0,
      0,
      3090
    ] spawn bis_fnc_dynamicText;

    [
        '',
        safeZoneX+0.00,
        safeZoneY+safeZoneH-0.12,
        99999,
        0,
        0,
        3091
      ] spawn bis_fnc_dynamicText;

  player switchCamera "INTERNAL";

  player enablesimulation true;

  waituntil {!isnull (finddisplay 46)};
  (findDisplay 46) displayRemoveEventHandler ["KeyDown", HeadCameraKeyHandler];
