if (ATMMODE == "Self") then {
  _value = parseNumber(ctrlText 1400);
  _bank = player getVariable "TRF_Bank";
  _cash = player getVariable "TRF_Cash";
  _newBank = _bank - _value;
  _newCash = _cash + _value;
  if (_bank < _value) exitWith {hint "You dont have enougth money in your bank!!"};
  if (_value <= 0) exitWith {hint "You cant withdraw less than £1!!"};

  player setVariable ["TRF_Bank",_newBank];
  player setVariable ["TRF_Cash",_newCash];
  []spawn TRF_fnc_refreshATM;
  hint format["You have successfully withdrew £%1!",_value];
} else {
  _value = parseNumber(ctrlText 1400);
  _bank = missionNamespace getVariable "TRF_Money";
  _cash = player getVariable "TRF_Cash";
  _newBank = _bank - _value;
  _newCash = _cash + _value;
  if (_bank < _value) exitWith {hint "There is not enougth money in the Units Bank!"};
  if (_value <= 0) exitWith {hint "You cant withdraw less than £1!!"};

  missionNamespace setVariable ["TRF_Money",_newBank, true];
  player setVariable ["TRF_Cash",_newCash];
  []spawn TRF_fnc_refreshATM;
  hint format["You have successfully withdrew £%1!",_value];
};
