//Military Island To Main Island Bridge
  _bushesToHide = [162226,162220,162187,162235,162230,162233];
  _treesToHide = [492650,492646];


_AllToHide = _bushesToHide + _treesToHide;

{
  _obj = [0,0,0] nearestObject _x;
  _obj hideObject true;
  _obj setDamage 1;
}
forEach _AllToHide
