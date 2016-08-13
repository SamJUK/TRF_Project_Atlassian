_ctrl = (_this select 0 )select 0;
_id = (_this select 0) select 1;
_type = _this select 1;
_innerType = _this select 2;
_dialog = uiNamespace getVariable "TRF_Store2";
_basketctrl = _dialog displayCtrl 1504;
_itemType = "";
if (_Type == "Firearms") then {
  switch (_innerType)do {
    case "Rifles":{
      _itemType = (Storev2Firearms select 0);
      _itemType
    };
    case "Sidearms":{
      _itemType = (Storev2Firearms select 1);
      _itemType
    };
    case "Gear": {
      _itemType = (Storev2Firearms select 2);
      _itemType
    };
  };
};
if (_Type == "Clothing") then {
  switch (_innerType)do {
    case "Clothing":{
      _itemType = (Storev2Clothing select 0);
      _itemType
    };
  };
};
if (_Type == "Firearms") then {
  if (_innerType == "Rifles" || _innerType == "Sidearms") then {
    switch (str _ctrl) do {
      //Box 1
      case "Control #1500": {
        _item = (_itemType select 0) select _id;
        _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _item >> "displayName"));
        _basketctrl lbSetData [_listitem, _item];
      };
      case "Control #1501": {
        _ctrl = _dialog displayCtrl 1501;
        _item = _ctrl lbData _id;
        _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgMagazines" >> _item >> "displayName"));
        _basketctrl lbSetData [_listitem, _item];
      };
      case "Control #1502": {
        _item = (_itemType select 2) select _id;
        _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _item >> "displayName"));
        _basketctrl lbSetData [_listitem, _item];
      };
      case "Control #1503": {
        _item = (_itemType select 3) select _id;
        _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _item >> "displayName"));
        _basketctrl lbSetData [_listitem, _item];
      };
      case "Control #1505": {
        _item = (_itemType select 4) select _id;
        _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _item >> "displayName"));
        _basketctrl lbSetData [_listitem, _item];
      };
    };
  };
  if (_innerType == "Gear") then {
    switch (str _ctrl) do {
      //Box 1
      case "Control #1500": {
        _item = (_itemType select 0) select _id;
        _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _item >> "displayName"));
        _basketctrl lbSetData [_listitem, _item];
      };
      case "Control #1501": {
        _ctrl = _dialog displayCtrl 1501;
        _item = _ctrl lbData _id;
        _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgMagazines" >> _item >> "displayName"));
        _basketctrl lbSetData [_listitem, _item];
      };
      case "Control #1502": {
        _item = (_itemType select 2) select _id;
        _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgMagazines" >> _item >> "displayName"));
        _basketctrl lbSetData [_listitem, _item];
      };
      case "Control #1503": {
        _item = (_itemType select 3) select _id;
        _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _item >> "displayName"));
        _basketctrl lbSetData [_listitem, _item];
      };
      case "Control #1505": {
        _item = (_itemType select 4) select _id;
        _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _item >> "displayName"));
        _basketctrl lbSetData [_listitem, _item];
      };
    };
  };
};
if (_Type == "Clothing") then {
  switch (str _ctrl) do {
    //Box 1
    case "Control #1500": {
      _item = (_itemType select 0) select _id;
      _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _item >> "displayName"));
      _basketctrl lbSetData [_listitem, _item];
      _arr = "Uniform";
      Storev2Basket pushBack _arr;
    };
    case "Control #1501": {
      _item = (_itemType select 1) select _id;
      _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _item >> "displayName"));
      _basketctrl lbSetData [_listitem, _item];
      _arr = "Vest";
      Storev2Basket pushBack _arr;
    };
    case "Control #1502": {
      _item = (_itemType select 2) select _id;
      _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgVehicles" >> _item >> "displayName"));
      _basketctrl lbSetData [_listitem, _item];
      _arr = "Bag";
      Storev2Basket pushBack _arr;
    };
    case "Control #1503": {
      _item = (_itemType select 3) select _id;
      _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgWeapons" >> _item >> "displayName"));
      _basketctrl lbSetData [_listitem, _item];
      _arr = "Hat";
      Storev2Basket pushBack _arr;
    };
    case "Control #1505": {
      _item = (_itemType select 4) select _id;
      _listitem = _basketctrl lbAdd (gettext(configFile >> "CfgGlasses" >> _item >> "displayName"));
      _basketctrl lbSetData [_listitem, _item];
      _arr = "Glasses";
      Storev2Basket pushBack _arr;
    };
  };
};
