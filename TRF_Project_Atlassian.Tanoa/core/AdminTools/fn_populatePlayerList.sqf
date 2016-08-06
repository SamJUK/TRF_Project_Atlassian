_dialog = uiNamespace getVariable "TRF_Admintools";
_list = _dialog displayCtrl 1500;
PlayerArray = [];
PCount = 0;
{
  _name = name _x;
  _listitem = _list lbAdd _name;
  _list lbSetData [_listitem, str(PCount)];
  if (side _x == WEST)then {
      _list lbSetColor [_listitem, [0.2,1,0.878,1]];
  };
  if (side _x == EAST)then {
      _list lbSetColor [_listitem, [1, 0, 0, 1]];
  };
  PlayerArray pushBack _x;
  PCount = PCount + 1;
}forEach allPlayers;
