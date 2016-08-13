if (!(player getVariable "GotPersonalCams")) exitWith {Hint 'You have no cameras to return!'};
detach HeadCam;
detach BodyCam;
HeadCam setPos [0,0,0];
BodyCam setPos [0,0,0];
player setVariable ["GotPersonalCams", false];
camBox setVariable ["CamAvailability", True];
hint "You have returned your cameras!";
