_place = _this select 0;

place = "";
vehType = "";
switch (_place) do {
  //FUEL
    case "LRA_Fuel_Deliver": {
      place = LRA_Fuel_Deliver;
      vehType = "B_T_Truck_01_fuel_F";
    };
    case "BP_Fuel_Deliver": {
        place = BP_Fuel_Deliver;
        vehType = "B_T_Truck_01_fuel_F";
    };
    case "Oumere_Fuel_Deliver": {
      place = Oumere_Fuel_Deliver;
      vehType = "B_T_Truck_01_fuel_F"
    };
    case "LaRochelle_Fuel_Deliver":{
      place = LaRochelle_Fuel_Deliver;
      vehType = "B_T_Truck_01_fuel_F"
    };
  //Container
    case "BP_Cargo_Deliver": {
      place = BP_Cargo_Deliver;
      vehType = "B_T_Truck_01_Repair_F";
    };
    case "Oumere_Cargo_Deliver": {
      place = Oumere_Cargo_Deliver;
      vehType = "B_T_Truck_01_Repair_F";
    };
    case "LaRochelle_Cargo_Deliver":{
      place = LaRochelle_Cargo_Deliver;
      vehType = "B_T_Truck_01_fuel_F"
    };
  //Tarp
    case "Oumere_Ammo_Deliver": {
      place = Oumere_Ammo_Deliver;
      vehType = "B_T_Truck_01_ammo_F";
    };
};
_NO = NearestObjects [getPos place,[],20];
NO1 = [];
{NO1 pushBack (typeOf _x)}forEach _NO;
if (vehType in NO1) then {
  _veh = getPos place nearestObject vehType;
  _activity = _veh getVariable "active";
  _location = _veh getVariable "location";
  if (!_activity) exitWith {hint "You are too late!"};
  if (_location != place) exitWith {hint "I dont want that!"};

  _income = _veh getVariable "income";
  _bank = player getVariable "TRF_Bank";
  _newBank = _bank + _income;
  player setVariable ["TRF_Bank", _newBank];
  hint format["I have paid £%1 into your bank account!",_income];


  deleteVehicle _veh;
  player removeSimpleTask playercurrentTask;
} else{
  hint "WHERES MY CARGO!?!?!?!";
};
