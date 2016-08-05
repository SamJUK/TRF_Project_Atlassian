class TRF_Button
{
  	access = 0;
  	type = 1;
  	text = "";
  	colorText[] =
  	{
  		0,
  		0,
  		0,
  		0
  	};
  	colorDisabled[] =
  	{
  		0,
  		0,
  		0,
  		0
  	};
  	colorBackground[] =
  	{
  		0,0,0,0
  	};
  	colorBackgroundDisabled[] =
  	{
  		0,0,0,0
  	};
  	colorBackgroundActive[] =
  	{
  		0,0,0,0
  	};
  	colorFocused[] =
  	{
  		0,0,0,0
  	};
  	colorShadow[] =
  	{
  		0,0,0,0
  	};
  	colorBorder[] =
  	{
  	   0,0,0,0
  	};
  	soundEnter[] =
  	{
  		"\A3\ui_f\data\sound\RscButton\soundEnter",
  		0.09,
  		1
  	};
  	soundPush[] =
  	{
  		"\A3\ui_f\data\sound\RscButton\soundPush",
  		0.09,
  		1
  	};
  	soundClick[] =
  	{
  		"\A3\ui_f\data\sound\RscButton\soundClick",
  		0.09,
  		1
  	};
  	soundEscape[] =
  	{
  		"\A3\ui_f\data\sound\RscButton\soundEscape",
  		0.09,
  		1
  	};
  	style = 2;
  	x = 0;
  	y = 0;
  	w = 0.095589;
  	h = 0.039216;
  	shadow = 2;
  	font = "PuristaMedium";
  	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
  	offsetX = 0.003;
  	offsetY = 0.003;
  	offsetPressedX = 0.002;
  	offsetPressedY = 0.002;
  	borderSize = 0;
};

class TRF_Store_BG : IGUIBack
{
  colorbackground[] =
	{
		0,0,0,.7
	};
};
class TRFBankOn: RscText
{
  colorText[] =
	{
		0,
		1,
		0,
		1
	};
};
class TRFBankOff: RscText
{
  colorText[] =
  {
    1,
    0,
    0,
    1
  };
};
class TRF_ATM_BANK_INVIS_BUTTON: TRF_Button
{
};
