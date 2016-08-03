_shop = _this select 0;
createDialog "TRF_Store";
ctrlSetText [1000,format["TRF %1 Shop",_shop]];
_dialog = uiNamespace getVariable "TRF_Store";
_list = _dialog displayCtrl 1500;
_list ctrlAddEventHandler [ "LBSelChanged", {[]call trf_fnc_LBChange;}];

lbClear 1500;
shopArray = ClothingArray;
if ("Clothing" == _shop)then{
  shopArray = ClothingArray;
  buttonSetAction [1607,"['Clothing']spawn trf_fnc_StoreChoose"];
  _list ctrlAddEventHandler [ "LBSelChanged", {['Clothing']call trf_fnc_LBChange;}];
} else {
  shopArray = WeaponArray;
  buttonSetAction [1607,"['Weapon']spawn trf_fnc_StoreChoose"];
  _list ctrlAddEventHandler [ "LBSelChanged", {['Weapon']call trf_fnc_LBChange;}];
};
_count = 0;
{
  _listitem = lbAdd [1500,_x select 0];
  lbSetData [_listitem,_count];
  _count = _count + 1;
}forEach shopArray;
