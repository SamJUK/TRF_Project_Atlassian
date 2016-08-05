_store = _this select 0;
switch(_store) do {
  case "Delivery": {
    _item = lbCurSel 1500;
    _data = lbData [1500, _item];

    _array = DeliveryMissions select _item;
    _name = _array select 0;
    _location = _array select 1;
    _vehicle = _array select 3;
    _income = _array select 4;

    _dialog = uiNamespace getVariable "TRF_Store";
    _control = _dialog displayCtrl 1100;
    _control ctrlSetStructuredText parseText format[
      "<t size='1.25' font='Zeppelin33' color='#FFFFF'>Name: %1</t>
      <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>Location: %2</t>
      <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>Vehicle: %3</t>
      <br/><t size='1.25' font='Zeppelin33' color='#FFFFF'>Income: %4</t>
      ",_classname,_location,_vehicle,_income
    ];
  };
};
