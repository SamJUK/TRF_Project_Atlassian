_type = _this select 0;

createDialog "TRF_Store";
ctrlSetText [1000,format["TRF %1 Missions",_type]];
_dialog = uiNamespace getVariable "TRF_Store";
_list = _dialog displayCtrl 1500;
_list ctrlAddEventHandler [ "LBSelChanged", {[]call trf_fnc_MissionLBChange;}];

lbClear 1500;
MissionArray = DeliveryMissions;
switch(_type) do {
  case "Delivery":{
    MissionArray = DeliveryMissions;
    buttonSetAction [1607,"['Delivery']spawn trf_fnc_MissionChoose"];
    _list ctrlAddEventHandler [ "LBSelChanged", {['Delivery']call trf_fnc_MissionLBChange;}];
  };
};
_count = 0;
{
  _listitem = lbAdd [1500,_x select 0];
  lbSetData [_listitem,_count];
  _count = _count + 1;
}forEach MissionArray;
