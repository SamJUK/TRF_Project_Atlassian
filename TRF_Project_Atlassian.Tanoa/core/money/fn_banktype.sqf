disableSerialization;
_type = _this select 0;

ctrlSetText [1000, format["Bank Type: %1",_type]];

if (_type == "Self")then{
  _dialog = uiNamespace getVariable "TRF_ATM";
  _ctrl = _dialog displayCtrl 1603;
  _ctrl ctrlSetTextColor [0,1,0,1];
  _ctrl2 = _dialog displayCtrl 1604;
  _ctrl2 ctrlSetTextColor [1,0,0,1];
  ATMMODE = "Self";
} else{
  _dialog = uiNamespace getVariable "TRF_ATM";
  _ctrl = _dialog displayCtrl 1604;
  _ctrl ctrlSetTextColor [0,1,0,1];
  _ctrl2 = _dialog displayCtrl 1603;
  _ctrl2 ctrlSetTextColor [1,0,0,1];
  ATMMODE = "Unit";
};
