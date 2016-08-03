_store = _this select 0;

closeDialog 0;

switch(_store) do{
  case "Clothing": {
    _item = lbCurSel 1500;
    _data = lbData [1500, _item];
    _array = clothingArray select _item;
    _uniform = _array select 1;
    _vest = _array select 2;
    _backpack = _array select 3;
    _helmet = _array select 4;
    _goggles = _array select 5;

    removeAllItems player;
    removeAllAssignedItems player;
    removeUniform player;
    removeVest player;
    removeBackpack player;
    removeHeadgear player;
    removeGoggles player;

    //Animation
    player playMove "Acts_CivilHiding_1";
    sleep 3;
    player switchMove "Acts_SupportTeam_Back_FromKneelLoop";
    sleep 2;
    player forceAddUniform _uniform;
    player addVest _vest;
    player addBackpack _backpack;
    player addHeadgear _helmet;
    player addGoggles _goggles;
    [player,"CTRG15"] call bis_fnc_setUnitInsignia;
    sleep 3;
    player switchMove "Acts_UnconsciousStandUp_part2";
    sleep 2;
    player switchMove "";
    };
  case "Weapon":{
    _item = lbCurSel 1500;
    _data = lbData [1500, _item];
    _array = weaponArray select _item;
    _primary = _array select 1;
    _secondary = _array select 2;
    _launcher = _array select 3;
    _primaryAttachments = _array select 4;
    _mags = _array select 5;

    removeAllWeapons player;
    ClearMagazineCargo player;

    //Animation
    player playMove "Acts_CivilHiding_1";
    sleep 3;
    player switchMove "Acts_SupportTeam_Back_FromKneelLoop";
    sleep 2;
    player addWeapon _primary;
    player addWeapon _secondary;
    player addWeapon _launcher;
    {
      player addPrimaryWeaponItem _x
    }forEach _primaryAttachments;
    {
      player addMagazines _x;
    }forEach _mags;
    player selectWeapon ((weapons player) select 1);
    player switchMove "Acts_UnconsciousStandUp_part2";
    player action ["SwitchWeapon", player, player, 100];
    sleep 2;
    player switchMove "";
};
};
