_dialog = uiNamespace getVariable "TRF_Admintools_Spawn";
_list = _dialog displayCtrl 1500;

_veh = "";
_veh = "getText (_x >> 'vehicleClass') in ['Air','Armored','Car']" configClasses (configFile >> "CfgVehicles");

{
  _dName = getText(_x>>"displayName"); // get the vehicles class and display name
  _class = configName _x;
  _index = _list lbAdd _dName;
  _list lbSetData [_index, _class];
}ForEach _veh;
