_ctrl = _this select 0;
_id = _this select 1;
_dialog = uiNamespace getVariable "TRF_Store2";
_ctrl lbDelete _id;

Storev2Basket set [_id,-1];
Storev2Basket = Storev2Basket - [-1];
