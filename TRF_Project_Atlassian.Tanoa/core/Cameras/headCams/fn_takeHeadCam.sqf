if (!(camBox getVariable "CamAvailability")) exitWith {Hint 'No Cameras Available'};
if (player getVariable "GotPersonalCams") exitWith {Hint 'You already got a set of Cameras!'};
HeadCam attachTo [player, [0.1,-0.2,.3], "head"];
BodyCam attachTo [player, [0,0.05,0.03], "LeftShoulder"];


player setVariable ["GotPersonalCams", true];
camBox setVariable ["CamAvailability", false];

hint "You have taken a set of Cameras!";

CamGetInEVH = player addEventHandler ["GetInMan", {
    detach HeadCam;
    detach BodyCam;
    HeadCam setPos [0,0,0];
    BodyCam setPos [0,0,0];
    player setVariable ["GotPersonalCams", false];
    camBox setVariable ["CamAvailability", True];
    player removeEventHandler ["GetInMan", CamGetInEVH];
  }];
