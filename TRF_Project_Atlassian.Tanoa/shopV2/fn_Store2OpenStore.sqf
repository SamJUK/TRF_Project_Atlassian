_type = _this select 0;
disableSerialization;
createDialog "TRF_Store2";
_dialog = uiNamespace getVariable "TRF_Store2";

//Controls to hide
_cth = [1500, 1501,1502,1503,1505,1504,1600];
{_ctrl = _dialog displayCtrl _x;_ctrl ctrlShow false;} forEach _cth;
//Controls to disable
_ctd = [1601,1602,1603,1604,1605,1606,1607];
{_ctrl = _dialog displayCtrl _x;_ctrl ctrlEnable false;}forEach _ctd;
//Change Title
_ctrl = _dialog displayCtrl 1000;
if (_type == "Firearms")then{
  _ctrl ctrlsetText "TRF Firearms Store";
};
if (_type == "Clothing")then{
  _ctrl ctrlsetText "TRF Clothing Store"
};
//Change Selectors
if (_type == "Firearms")then{
  _ctrl = _dialog displayCtrl 1150;
  _ctrl ctrlSetText "TRF - Firearms Store";
  _cth = [1604,1605,1606,1607];
  {_ctrl = _dialog displayCtrl _x;_ctrl ctrlShow false;} forEach _cth;
  _cte = [1601,1602,1603];
  {_ctrl = _dialog displayCtrl _x;_ctrl ctrlEnable true;}forEach _cte;
  _ctrl = _dialog displayCtrl 1601;
  _ctrl ctrlSetText "Primarys";
  _ctrl buttonSetAction "['Firearms','Rifles']spawn TRF_fnc_Store2Category";
  _ctrl = _dialog displayCtrl 1602;
  _ctrl ctrlSetText "Sidearms";
  _ctrl buttonSetAction "['Firearms','Sidearms']spawn TRF_fnc_Store2Category";
  _ctrl = _dialog displayCtrl 1603;
  _ctrl ctrlSetText "Gear";
  _ctrl buttonSetAction "['Firearms','Gear']spawn TRF_fnc_Store2Category";
};
if (_type == "Clothing")then{
  _ctrl = _dialog displayCtrl 1150;
  _ctrl ctrlSetText "TRF - Clothing Store";
  _cth = [1602,1603,1604,1605,1606,1607];
  {_ctrl = _dialog displayCtrl _x;_ctrl ctrlShow false;} forEach _cth;
  _cte = [1601];
  {_ctrl = _dialog displayCtrl _x;_ctrl ctrlEnable true;}forEach _cte;
  _ctrl = _dialog displayCtrl 1601;
  _ctrl ctrlSetText "Clothing";
  _ctrl buttonSetAction "['Clothing','Clothing']spawn TRF_fnc_Store2Category";
};
