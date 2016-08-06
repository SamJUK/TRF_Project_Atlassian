CMDS = [
  //"DisplayName", "On - Toggle / Single","Off - Toggle ","Type | Toggle | Spacer | Single, "Active? Only in toggle"
  ["---Toggleable---","","","Spacer"],
  ["God Mode",{player allowDamage false;},{player allowDamage true;},"Toggle",false],
  ["Unlimited Ammo",{player addEventHandler ["Fired",{player setVehicleAmmo 1;}];},{player removeEventHandler ["Fired", 0];},"Toggle",false],
  ["Invisable",{player hideObject true;player setCaptive true;},{player hideObject false;player setCaptive false;},"Toggle",false],
  ["---Administration---","","","Spacer"],
  ["Silent Kick","","","Single"],
  ["Kick","","","Single"],
  ["Silent Ban","","","Single"],
  ["Ban","","","Single"],
  ["Spectate","","","Single"],
  ["TP To player","","","Single"],
  ["TP Player to me","","","Single"],
  ["---TRF Funcs---","","","Spacer"],
  ["Use ATM","[]spawn TRF_fnc_useATM","","Single"],
  ["Weapon Shop","['Weapon']spawn TRF_fnc_OpenShop","","Single"],
  ["Clothing Shop","['Clothing']spawn TRF_fnc_OpenShop","","Single"]
];

_dialog = uiNamespace getVariable "TRF_Admintools";
_list = _dialog displayCtrl 1501;
_Icount = 0;
{
  _CMDNAME = _x select 0;
  _listitem = _list lbAdd _CMDNAME;
  _list lbSetData [_listitem, str(_Icount)];
  if (_x select 3 == "Toggle") then {
    _list lbSetColor [_listitem, [1, 0, 0, 1]];
  };
  if (_x select 3 == "Spacer")then{
    _list lbSetColor [_listitem, [0.576,0.576,0.576,1]];
  };
  _Icount = _Icount + 1;
}ForEach CMDS;
