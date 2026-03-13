_root.TAIKEN = _root.checkMC.m1.flg;
var tg1 = _root.checkMC.m1.ero;
var tg2 = _root.checkMC.m2.ero;
if(_root.TAIKEN)
{
   _root.stop();
   _root.dataCheckMC.gotoAndStop(2);
}
else if(tg1 == tg2 && tg1 != undefined)
{
   _root.keyFlg1 = true;
   _root.keyFlg2 = false;
   _root.keyFlg3 = true;
}
else
{
   _root.stop();
   _root.dataCheckMC.gotoAndStop(3);
}
