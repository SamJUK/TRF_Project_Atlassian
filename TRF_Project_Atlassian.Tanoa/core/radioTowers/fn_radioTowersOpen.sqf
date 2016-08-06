disableSerialization;
tower = _this select 0;
createDialog "TRF_Radiotowers";

if (tower getVariable "Working") then {
  _dialog = uiNamespace getVariable "TRF_Radiotowers";
  _control = _dialog displayCtrl 1000;
  _control ctrlSetStructuredText parseText "<br/><br/><br/><t size='1.5' align='center' font='Zepelin33' color='#FFF'>Connections are <t color='#00FF00'>Stable!</t></t>";
  _ctrl2 = _dialog displayCtrl 1600;
  _ctrl2 ctrlEnable false;
} else {
  _dialog = uiNamespace getVariable "TRF_Radiotowers";
  _control = _dialog displayCtrl 1000;
  _control ctrlSetStructuredText parseText "<br/><br/><br/><t size='1.5' align='center' font='Zepelin33' color='#FFF'>Connections are <t color='#FF0000'>unstable!</t></t>";
  _ctrl2 = _dialog displayCtrl 1600;
  _ctrl2 ctrlEnable true;
  _ctrl2 buttonSetAction "[tower]spawn trf_fnc_radioTowerRepair";
};
