_type = _this select 0;

_item = lbCurSel 1500;
_data = lbData [1500, _item];
_array = DeliveryMissions select _item;

_VehClassname = _array select 3;
_location = _array select 1;
_locationMan = _array select 2;
_income = _array select 4;

_veh = createVehicle [_VehClassname,getMarkerPos "deliveMissionSpawn_1",[], 0, "CAN_COLLIDE"];
_veh setDir markerDir "deliveMissionSpawn_1";
_veh setVariable ["location", _locationMan];
_veh setVariable ["income", _income];
_veh setVariable ["active", true];

player setDir 187;

playercurrentTask = player createSimpleTask ["Delivery Mission"];
playercurrentTask setSimpleTaskDestination getPos _locationMan;
playercurrentTask setSimpleTaskDescription [
   "TES TEST TEST RTTESA AADSGSFA GDSF",
   "Delivery Mission",
   "Delivery Mission1"
];
playercurrentTask setTaskState "CREATED";
player setCurrentTask playercurrentTask;

hint "You got a new delivery task!";
closeDialog 0;
