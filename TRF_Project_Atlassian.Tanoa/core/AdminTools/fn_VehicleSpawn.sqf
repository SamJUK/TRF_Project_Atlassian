_dialog = uiNamespace getVariable "TRF_Admintools_Spawn";
_list = _dialog displayCtrl 1500;
_index = lbCurSel _list;

_data = _list lbData _index;
_text = _list lbText _index;

_veh = _data createVehicle position player;
_orig = getPos player;
_dest = getPos _veh;
_vector = ((((_dest select 0) - (_orig select 0)) atan2 ((_dest select 1) - (_orig select 1))) + 360) % 360;
player setDir _vector;
_pos = str (getPos player);
hint parseText format["<t size='1.25' font='Zeppelin33' color='#33FF7D'>Vehicle Spawned!</t>
<br/><t size='1.25' font='Zeppelin33' color='#33A5FF'>Vic: %1</t>
<br/><t size='1.25' font='Zeppelin33' color='#F3FF33'>Vic Classname: %2</t>
<br/><t size='1.25' font='Zeppelin33' color='#FF33C4'>Pos: %3</t><br/>",_text,_data,_pos];
