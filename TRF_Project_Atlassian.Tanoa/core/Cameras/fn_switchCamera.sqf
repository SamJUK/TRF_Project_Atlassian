_cam = _this select 0;
_cam switchCamera "INTERNAL";
Cam1Color = "#2FB7CA";
Cam2Color = "#2FB7CA";
Cam3Color = "#2FB7CA";
Camh1Color = "#2FB7CA";
Camh2Color = "#2FB7CA";
switch(_cam) do {
  case KHCam1: {Camera = "Camera 1"; Cam1Color = "#FF3300";};
  case KHCam2: {Camera = "Camera 2"; Cam2Color = "#FF3300";};
  case KHCam3: {Camera = "Camera 3"; Cam3Color = "#FF3300";};
  case KHCamHigh1: {Camera = "High Camera 1"; Camh1Color = "#FF3300";};
  case KHCamHigh2: {Camera = "High Camera 2"; Camh2Color = "#FF3300";};
};

[
   format['<t color="#2FB7CA" size=".8">You are using </t><t color ="#FF3300">%1</t><br />
    <t color="#2FB7CA" size=".8"> Press </t><t color ="#FF3300">F1</t> to leave the camera!</t>',Camera],
    safeZoneX+0.00,
    safeZoneY+safeZoneH-0.18,
    99999,
    0,
    0,
    3090
] spawn bis_fnc_dynamicText;

[format[

'<t color="#f9df48" size=".8"> Shortcuts </t><br />
<t color="%1" size=".8"> 1 - CameraHigh1 </t><br />
<t color="%2" size=".8"> 2 - CameraHigh2 </t><br />
<t color="%3" size=".8"> 3 - CameraInternal1 </t><br />
<t color="%4" size=".8"> 4 - CameraInternal2 </t><br />
<t color="%5" size=".8"> 5 - CameraInternal3 </t><br />',Camh1Color,Camh2Color,Cam1Color,Cam2Color,Cam3Color],
-safeZoneX+.23,
safeZoneY+0.07,
99999,
0,
0,
3091
] spawn bis_fnc_dynamicText;

closeDialog 0;
