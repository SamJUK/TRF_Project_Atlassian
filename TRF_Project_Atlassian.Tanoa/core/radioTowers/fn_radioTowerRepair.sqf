_tower = _this select 0;
closeDialog 0;
player AttachTo [_tower, [0,-.6,0]];
player playMove 'Acts_carFixingWheel';
sleep 10;
player switchMove '';
detach player;
_tower setVariable ["Working", true];
hint "You have fixed the radio tower!";
