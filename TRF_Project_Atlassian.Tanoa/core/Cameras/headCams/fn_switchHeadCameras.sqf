_cam = _this select 0;
_cam switchCamera "INTERNAL";

[
   '<t color="#2FB7CA" size=".8"> Press </t><t color ="#FF3300">F1</t> to leave the camera!</t>',
    safeZoneX+0.00,
    safeZoneY+safeZoneH-0.18,
    99999,
    0,
    0,
    3090
] spawn bis_fnc_dynamicText;

closeDialog 0;
