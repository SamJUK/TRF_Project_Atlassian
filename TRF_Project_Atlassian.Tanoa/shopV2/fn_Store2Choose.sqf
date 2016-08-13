_type = _this select 0;
_innerType = _this select 1;

_dialog = uiNamespace getVariable "TRF_Store2";
_ctrl = _dialog displayCtrl 1504;
_basketSize = lbSize _ctrl;
_count = 0;
if (_type == "Firearms") then {
  if (_innerType == "Rifles") then {
    while {_count < _basketSize} do {
        _item = lbData [1504,_count];
        player addWeapon _item;
        player addPrimaryWeaponItem _item;
        player addMagazine _item;
      _count = _count + 1;
    };
  };
  if (_innerType == "Sidearms") then {
    while {_count < _basketSize} do {
        _item = lbData [1504,_count];
        player addWeapon _item;
        player addPrimaryWeaponItem _item;
        player addMagazine _item;
      _count = _count + 1;
    };
  };
  if (_innerType == "Gear") then {
    while {_count < _basketSize} do {
      _item = lbData [1504,_count];
      player addWeapon _item;
      _count = _count + 1;
    };
  };
};
if (_type == "Clothing") then {
  if (_innerType == "Clothing") then {
    _mags = magazines player;
    _items = items player;

    while {_count < _basketSize} do {
        _item = lbData [1504,_count];

        _type = Storev2Basket select _count;
        if (_type == "Uniform") then {player forceAddUniform _item};
        if (_type == "Vest") then {player addVest _item};
        if (_type == "Bag") then {removeBackpack player; player addBackpack _item};
        if (_type == "Hat") then {player addHeadgear _item};
        if (_type == "Glasses") then {player addGoggles _item};

      _count = _count + 1;
  };
  {player addMagazine _x;}forEach _mags;
  {player addItem _x;}forEach _items;
};
};
lbClear _ctrl;
