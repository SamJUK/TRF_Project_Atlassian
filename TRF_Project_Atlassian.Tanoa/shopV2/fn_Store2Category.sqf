_dialog = uiNamespace getVariable "TRF_Store2";
_type = _this select 0;
_innerType = _this select 1;
_cte = [1500, 1501,1502,1503,1505,1504,1600];
{_ctrl = _dialog displayCtrl _x;_ctrl ctrlShow true;} forEach _cte;
if (_type == "Firearms") then {
  switch (_innerType) do{
    case "Rifles": {
      _ctrl = _dialog displayCtrl 1150;
      _ctrl ctrlSetText "TRF - Rifle Store";
      ["Firearms","Rifles"]spawn TRF_fnc_Store2Fill;
      _evhctrls = [1500,1501,1502,1503,1505];
      {_ctrl = _dialog displayCtrl _x;_ctrl ctrlAddEventHandler ["LBDblClick", "[_this,'Firearms','Rifles'] spawn TRF_fnc_Store2AddBasket"];}forEach _evhctrls;
      _ctrl = _dialog displayCtrl 1500;
      _ctrl ctrlAddEventHandler ["LBSelChanged", "[_this,['Firearms','Rifles']] spawn TRF_fnc_Store2Filter"];
      _ctrl = _dialog displayCtrl 1504;
      _ctrl ctrlAddEventHandler ["LBDblClick", "_this spawn TRF_fnc_Store2RemoveBasket"];
      _ctrl = _dialog displayCtrl 1600;
      _ctrl buttonSetAction "['Firearms','Rifles']spawn TRF_fnc_Store2Choose";
  };
    case "Sidearms": {
      _ctrl = _dialog displayCtrl 1150;
      _ctrl ctrlSetText "TRF - Sidearms Store";
      _cth = [1502,1503,1505];
      {_ctrl = _dialog displayCtrl _x;_ctrl ctrlShow false;} forEach _cth;
      ["Firearms","Sidearms"]spawn TRF_fnc_Store2Fill;
      _evhctrls = [1500,1501];
      {_ctrl = _dialog displayCtrl _x;_ctrl ctrlAddEventHandler ["LBDblClick", "[_this,'Firearms','Sidearms'] spawn TRF_fnc_Store2AddBasket"];}forEach _evhctrls;
      _ctrl = _dialog displayCtrl 1500;
      _ctrl ctrlAddEventHandler ["LBSelChanged", "[_this,['Firearms','Sidearms']] spawn TRF_fnc_Store2Filter"];
      _ctrl = _dialog displayCtrl 1504;
      _ctrl ctrlAddEventHandler ["LBDblClick", "_this spawn TRF_fnc_Store2RemoveBasket"];
      _ctrl = _dialog displayCtrl 1600;
      _ctrl buttonSetAction "['Firearms','Sidearms']spawn TRF_fnc_Store2Choose";
    };
    case "Gear": {
      _ctrl = _dialog displayCtrl 1150;
      _ctrl ctrlSetText "TRF - Gear Store";
      ["Firearms","Gear"]spawn TRF_fnc_Store2Fill;
      _evhctrls = [1500,1501,1502,1503,1505];
      {_ctrl = _dialog displayCtrl _x;_ctrl ctrlAddEventHandler ["LBDblClick", "[_this,'Firearms','Gear'] spawn TRF_fnc_Store2AddBasket"];}forEach _evhctrls;
      /*_ctrl = _dialog displayCtrl 1500;
      _ctrl ctrlAddEventHandler ["LBSelChanged", "[_this,['Firearms','Gear']] spawn TRF_fnc_Store2Filter"];*/
      _ctrl = _dialog displayCtrl 1504;
      _ctrl ctrlAddEventHandler ["LBDblClick", "_this spawn TRF_fnc_Store2RemoveBasket"];
      _ctrl = _dialog displayCtrl 1600;
      _ctrl buttonSetAction "['Firearms','Gear']spawn TRF_fnc_Store2Choose";
    };
  };
};
if (_type == "Clothing") then {
  switch (_innerType) do{
      case "Clothing": {
        _ctrl = _dialog displayCtrl 1150;
        _ctrl ctrlSetText "TRF - Clothing Store";
        ["Clothing","Clothing"]spawn TRF_fnc_Store2Fill;
        _evhctrls = [1500,1501,1502,1503,1505];
        {_ctrl = _dialog displayCtrl _x;_ctrl ctrlAddEventHandler ["LBDblClick", "[_this,'Clothing','Clothing'] spawn TRF_fnc_Store2AddBasket"];}forEach _evhctrls;
        _ctrl = _dialog displayCtrl 1504;
        _ctrl ctrlAddEventHandler ["LBDblClick", "_this spawn TRF_fnc_Store2RemoveBasket"];
        _ctrl = _dialog displayCtrl 1600;
        _ctrl buttonSetAction "['Clothing','Clothing']spawn TRF_fnc_Store2Choose";
      };
  };
};
Storev2Basket = [];
