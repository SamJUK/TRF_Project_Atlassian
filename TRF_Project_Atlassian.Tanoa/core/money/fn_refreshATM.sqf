disableSerialization;
_cash = player getVariable "TRF_Cash";
_bank = player getVariable "TRF_Bank";
_TRFmoney = missionNamespace getVariable "TRF_Money";
_dialog = uiNamespace getVariable "TRF_ATM";
_control = _dialog displayCtrl 1100;
_control ctrlSetStructuredText parseText format[
  "<t size='1.25' align='center' shadow='1' font='Zeppelin33' color='#FFFFF'>Cash: £%1</t>
  <br/><t size='1.25' align='center' shadow='1' font='Zeppelin33' color='#FFFFF'>Bank: £%2</t>
  <br/><t size='1.25' align='center' shadow='1' font='Zeppelin33' color='#FFFFF'>TRF Money: £%3</t>
  ",_cash, _bank, _TRFMoney
];
