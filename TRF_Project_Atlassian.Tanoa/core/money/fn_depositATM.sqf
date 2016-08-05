if (ATMMODE == "Self") then {
  _value = parseNumber(ctrlText 1400);
  _bank = player getVariable "TRF_Bank";
  _cash = player getVariable "TRF_Cash";
  _newBank = _bank + _value;
  _newCash = _cash - _value;
  if (_cash < _value) exitWith {hint "You dont have enougth money on you!!"};
  if (_value <= 0) exitWith {hint "You cant deposit less than £1!!"};

  player setVariable ["TRF_Bank",_newBank];
  player setVariable ["TRF_Cash",_newCash];
  []spawn TRF_fnc_refreshATM;
  hint format["You have successfully deposited £%1!",_value];
} else {
  _value = parseNumber(ctrlText 1400);
  _bank = missionNamespace getVariable "TRF_Money";
  _cash = player getVariable "TRF_Cash";
  _newBank = _bank + _value;
  _newCash = _cash - _value;
  if (_cash < _value) exitWith {hint "You dont have enougth money on you!!"};
  if (_value <= 0) exitWith {hint "You cant deposit less than £1!!"};

  missionNamespace setVariable ["TRF_Money",_newBank];
  player setVariable ["TRF_Cash",_newCash];
  []spawn TRF_fnc_refreshATM;
  hint format["You have successfully deposited £%1!",_value];
};
