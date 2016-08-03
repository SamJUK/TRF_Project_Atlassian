  _store = _this select 0;
  switch(_store) do {
    case "Clothing": {
      _item = lbCurSel 1500;
      _data = lbData [1500, _item];

      _array = clothingArray select _item;
      _classname = _array select 0;
      _uniform = gettext(configFile >> "CfgWeapons" >> _array select 1 >> "displayName");
      _vest = gettext(configFile >> "CfgWeapons" >> _array select 2 >> "displayName");
      _backpack = gettext(configFile >> "CfgWeapons" >> _array select 3 >> "displayName");
      _helmet = gettext(configFile >> "CfgWeapons" >> _array select 4 >> "displayName");
      _goggles = gettext(configFile >> "CfgWeapons" >> _array select 5 >> "displayName");

      _dialog = uiNamespace getVariable "TRF_Store";
      _control = _dialog displayCtrl 1100;
      _control ctrlSetStructuredText parseText format[
        "<t size='1.25' font='Zeppelin33' color='#FFFFF'>Name: %1</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>Uniform: %2</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>Vest: %3</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>Backpack: %4</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>Helmet: %5</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>Goggles: %6</t>
        ",_classname,_uniform,_vest,_backpack,_helmet,_goggles
      ];
    };
    case "Weapon": {
      _item = lbCurSel 1500;
      _data = lbData [1500, _item];

      _array = weaponArray select _item;
      _classname = _array select 0;
      _primary = gettext(configFile >> "CfgWeapons" >> _array select 1 >> "displayName");
      _secondary = gettext(configFile >> "CfgWeapons" >> _array select 2 >> "displayName");
      _launcher = gettext(configFile >> "CfgWeapons" >> _array select 3 >> "displayName");
      _attachments = _array select 4;
      _scope = gettext(configFile >> "CfgWeapons" >> _attachments select 0 >> "displayName");
      _acc = gettext(configFile >> "CfgWeapons" >> _attachments select 1 >> "displayName");
      _Silencer = gettext(configFile >> "CfgWeapons" >> _attachments select 2 >> "displayName");
      _bipod = gettext(configFile >> "CfgWeapons" >> _attachments select 3 >> "displayName");
      _magazines = _array select 5;

      _smokeList = ["SmokeShell","SmokeShellRed","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellPurple","SmokeShellYellow"];
      _heList = ["HandGrenade","MiniGrenade"];
      pmags = 0;
      smags = 0;
      lmags = 0;
      smokes = 0;
      he = 0;
      IR = 0;
      FAK = 0;
      {
          if (_x select 0 in (getArray (configFile >> "CfgWeapons" >> _primary >> "magazines"))) then {
            pmags = pmags + (_x select 1);
          };
          if (_x select 0 in (getArray (configFile >> "CfgWeapons" >> _secondary >> "magazines"))) then {
            smags = smags + (_x select 1);
          };
          if (_x select 0 in (getArray (configFile >> "CfgWeapons" >> _launcher >> "magazines"))) then {
            lmags = lmags + (_x select 1);
          };
          if (_x select 0 in _smokeList) then {
            smokes = smokes + (_x select 1);
          };
          if (_x select 0 in _heList) then {
            he = he + (_x select 1);
          };
          if (_x select 0 == "B_IR_Grenade") then {
            IR = IR + (_x select 1);
          };
          if (_x select 0 == "FirstAidKit") then {
            FAK = FAK + (_x select 1);
          };
      }forEach _magazines;

      _dialog = uiNamespace getVariable "TRF_Store";
      _control = _dialog displayCtrl 1100;
      _control ctrlSetStructuredText parseText format[
        "<t size='1.25' font='Zeppelin33' color='#FFFFF'>Name: %1</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>Primary: %2</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>Secondary: %3</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>Launcher: %4</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>Attachments:</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>     Scope: %5</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>     Accessory: %6</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>     Silencer: %7</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>     Bipod: %8</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>Magazines: </t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>     Primary: %9</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>     Secondary: %10</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>     Launcher: %11</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>     FAK's: %12</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>     Smokes: %13</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>     HeGrenades: %14</t>
        <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>     IRGrenade: %15</t>
        ",_classname,_primary,_secondary,_launcher,_scope,_acc,_Silencer,_bipod,pmags,smags,lmags,FAK,smokes,he,IR
      ];
    };
};
