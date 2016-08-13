//Variables
_ctrl = (_this select 0) select 0;
_index = (_this select 0) select 1;
_group = (_this select 1) select 0;
_class = (_this select 1) select 1;
_dialog = uiNamespace getVariable "TRF_Store2";

if (!(_group == "Firearms")) exitWith {};
if (_class == "Rifles") then {
  //Get selected Firearm
    _selected = ((Storev2Firearms select 0) select 0) select _index;
  //Mags
    //Clear ammo lsitbox
    lbClear 1501;
    //Re add compatable Mags
    _ctrl = _dialog displayCtrl 1501;
    {
        if (_x in (getArray (configFile >> "CfgWeapons" >> _selected >> "magazines")))then {
          _listitem = _ctrl lbAdd (gettext(configFile >> "CfgMagazines" >> _x >> "displayName"));
          _ctrl lbSetData [_listitem, _x];
        };
    }forEach ((Storev2Firearms select 0)select 1);
  //Optics
    lbClear 1502;
    _ctrl = _dialog displayCtrl 1502;
    {
        if (_x in (getArray (configfile >> "CfgWeapons" >> _selected >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems")))then {
          _listitem = _ctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _x >> "displayName"));
          _ctrl lbSetData [_listitem, _x];
        };
    }forEach ((Storev2Firearms select 0)select 2);
  //Barrel
  lbClear 1503;
  _ctrl = _dialog displayCtrl 1503;
  {
      if ((_x in (getArray (configfile >> "CfgWeapons" >> _selected >> "WeaponSlotsInfo" >> "PointerSlot" >> "compatibleItems"))) || (_x in (getArray (configfile >> "CfgWeapons" >> _selected >> "WeaponSlotsInfo" >> "UnderBarrelSlot" >> "compatibleItems"))))then {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      };
  }forEach ((Storev2Firearms select 0)select 3);
  //Muzzle
  lbClear 1505;
  _ctrl = _dialog displayCtrl 1505;
  {
      if (_x in (getArray (configfile >> "CfgWeapons" >> _selected >> "WeaponSlotsInfo" >> "MuzzleSlot" >> "compatibleItems")))then {
        _listitem = _ctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _x >> "displayName"));
        _ctrl lbSetData [_listitem, _x];
      };
  }forEach ((Storev2Firearms select 0)select 4);
};
if (_class == "Sidearms") then {
  //Get selected Firearm
    _selected = ((Storev2Firearms select 1) select 0) select _index;
  //Mags
    //Clear ammo lsitbox
    lbClear 1501;
    //Re add compatable Mags
    _ctrl = _dialog displayCtrl 1501;
    {
        if (_x in (getArray (configFile >> "CfgWeapons" >> _selected >> "magazines")))then {
          _listitem = _ctrl lbAdd (gettext(configFile >> "CfgMagazines" >> _x >> "displayName"));
          _ctrl lbSetData [_listitem, _x];
        };
    }forEach ((Storev2Firearms select 1)select 1);
};
