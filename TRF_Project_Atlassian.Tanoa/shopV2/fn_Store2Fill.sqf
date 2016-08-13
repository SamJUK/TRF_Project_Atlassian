_type = _this select 0;
_innerType = _this select 1;
_dialog = uiNamespace getVariable "TRF_Store2";
_listBoxs = [1500,1501,1502,1503,1504,1505];
{lbClear _x}Foreach _listBoxs;
if (_type == "Firearms") then {
  switch(_innerType) do{
    case "Rifles": {
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Rifles/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
        _ctrl = _dialog displayCtrl 1500;
        _Array = (Storev2Firearms select 0)select 0;
        {
          _listitem = _ctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _x >> "displayName"));
          _ctrl lbSetData [_listitem, _x];
        }forEach _Array;
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Magazines/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
      _ctrl = _dialog displayCtrl 1501;
      _Array = (Storev2Firearms select 0)select 1;
      {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgMagazines" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      }forEach _Array;
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Scopes/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
      _ctrl = _dialog displayCtrl 1502;
      _Array = (Storev2Firearms select 0)select 2;
      {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      }forEach _Array;
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Rails/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
      _ctrl = _dialog displayCtrl 1503;
      _Array = (Storev2Firearms select 0)select 3;
      {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      }forEach _Array;
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Muzzles/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
      _ctrl = _dialog displayCtrl 1505;
      _Array = (Storev2Firearms select 0)select 4;
      {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      }forEach _Array;
    };
    case "Sidearms": {
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Sidearms/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
        _ctrl = _dialog displayCtrl 1500;
        _Array = (Storev2Firearms select 1)select 0;
        {
          _listitem = _ctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _x >> "displayName"));
          _ctrl lbSetData [_listitem, _x];
        }forEach _Array;
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Magazines/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
      _ctrl = _dialog displayCtrl 1501;
      _Array = (Storev2Firearms select 1)select 1;
      {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgMagazines" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      }forEach _Array;
    };
    case "Gear": {
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Launchers/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
        _ctrl = _dialog displayCtrl 1500;
        _Array = (Storev2Firearms select 2)select 0;
        {
          _listitem = _ctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _x >> "displayName"));
          _ctrl lbSetData [_listitem, _x];
        }forEach _Array;
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Launcher Ammo/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
      _ctrl = _dialog displayCtrl 1501;
      _Array = (Storev2Firearms select 2)select 1;
      {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgMagazines" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      }forEach _Array;
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Nades  /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
      _ctrl = _dialog displayCtrl 1502;
      _Array = (Storev2Firearms select 2)select 2;
      {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgMagazines" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      }forEach _Array;
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Binocs/NVGS/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
      _ctrl = _dialog displayCtrl 1503;
      _Array = (Storev2Firearms select 2)select 3;
      {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      }forEach _Array;
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Items /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
      _ctrl = _dialog displayCtrl 1505;
      _Array = (Storev2Firearms select 2)select 4;
      {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      }forEach _Array;
    };
  };
};
if (_type == "Clothing") then {
  switch(_innerType) do{
    case "Clothing": {
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Uniforms/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
        _ctrl = _dialog displayCtrl 1500;
        _Array = (Storev2Clothing select 0)select 0;
        {
          _listitem = _ctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _x >> "displayName"));
          _ctrl lbSetData [_listitem, _x];
        }forEach _Array;
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Vests/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
      _ctrl = _dialog displayCtrl 1501;
      _Array = (Storev2Clothing select 0)select 1;
      {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      }forEach _Array;
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Backpacks/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
      _ctrl = _dialog displayCtrl 1502;
      _Array = (Storev2Clothing select 0)select 2;
      {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgVehicles" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      }forEach _Array;
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Headgear/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
      _ctrl = _dialog displayCtrl 1503;
      _Array = (Storev2Clothing select 0)select 3;
      {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      }forEach _Array;
      ///*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ Eyewear/*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/ /*/*/*/*/*/*/
      _ctrl = _dialog displayCtrl 1505;
      _Array = (Storev2Clothing select 0)select 4;
      {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgGlasses" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      }forEach _Array;
    };
  };
};
