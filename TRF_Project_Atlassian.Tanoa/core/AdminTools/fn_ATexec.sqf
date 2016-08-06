_who = _this select 0;

_item = lbCurSel 1500;
_data = lbData [1500, _item];
_data = parseNumber _Data;
_array = CMDS select _data;

if (_array select 3 == "Spacer") exitWith {};
if (_array select 3 == "Single") then {
  //Do command on who
  _array select 1;
};
if (_array select 3 == "Toggle") then {
  //Do command on who and toggle state
  if (_array select 4) then {
    _array select 2;
  } else {
    _array select 1;
  };
};
