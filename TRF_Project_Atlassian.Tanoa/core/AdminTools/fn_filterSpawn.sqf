switch(_this select 0) do {
  case "All": {
    _dialog = uiNamespace getVariable "TRF_Admintools_Spawn";
    _list = _dialog displayCtrl 1500;
    lbClear _list;
    _vehicles = "";
    _vehicles = "getText (_x >> 'vehicleClass') in ['Air','Armored','Car']" configClasses (configFile >> "CfgVehicles");
    {
      _dName = getText(_x>>"displayName"); // get the vehicles class and display name
      _class = configName _x;
    //  _vehicle = _vehicle + (format ["<t size='1.25' align='left'>%1</t>", _dName]);
      _index = _list lbAdd _dName;
      _list lbSetData [_index, _class];

    }forEach _vehicles;
  };
  case "Air": {
    _dialog = uiNamespace getVariable "TRF_Admintools_Spawn";
    _list = _dialog displayCtrl 1500;
    lbClear _list;
    _vehicles = "";
    _vehicles = "getText (_x >> 'vehicleClass') in ['Air']" configClasses (configFile >> "CfgVehicles");
    {
      _dName = getText(_x>>"displayName"); // get the vehicles class and display name
      _class = configName _x;
    //  _vehicle = _vehicle + (format ["<t size='1.25' align='left'>%1</t>", _dName]);
      _index = _list lbAdd _dName;
      _list lbSetData [_index, _class];

    }forEach _vehicles;
  };
  case "Ground": {
    _dialog = uiNamespace getVariable "TRF_Admintools_Spawn";
    _list = _dialog displayCtrl 1500;
    lbClear _list;
    _vehicles = "";
    _vehicles = "getText (_x >> 'vehicleClass') in ['Armored','Car']" configClasses (configFile >> "CfgVehicles");
    {
      _dName = getText(_x>>"displayName"); // get the vehicles class and display name
      _class = configName _x;
    //  _vehicle = _vehicle + (format ["<t size='1.25' align='left'>%1</t>", _dName]);
      _index = _list lbAdd _dName;
      _list lbSetData [_index, _class];

    }forEach _vehicles;
  };
  case "Water": {
    _dialog = uiNamespace getVariable "TRF_Admintools_Spawn";
    _list = _dialog displayCtrl 1500;
    lbClear _list;
    _vehicles = "";
    _vehicles = "getText (_x >> 'vehicleClass') in ['Ship']" configClasses (configFile >> "CfgVehicles");
    {
      _dName = getText(_x>>"displayName"); // get the vehicles class and display name
      _class = configName _x;
      _index = _list lbAdd _dName;
      _list lbSetData [_index, _class];

    }forEach _vehicles;
  };
};
