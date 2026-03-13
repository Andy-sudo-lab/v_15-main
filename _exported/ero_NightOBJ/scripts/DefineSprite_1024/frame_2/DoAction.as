var i = 0;
while(i <= 8)
{
   var ins = "no" + i;
   var sn = _root.storeNo;
   if(sn == 2)
   {
      if(_root.TEflg[191] && !_root.TEflg[192])
      {
         var f = _root.store[sn].article[8][i];
      }
      else
      {
         var f = _root.store[sn].article[_root.gameLv][i];
      }
   }
   else if(sn == 6)
   {
      var f = _root.store[sn].article[_root.gameLv][i];
   }
   else if(sn == 9)
   {
      if(_root.BTEflg[5])
      {
         var lv = 1;
      }
      else
      {
         var lv = 0;
      }
      var f = _root.store[sn].article[lv][i];
   }
   else
   {
      var f = _root.store[sn].article[i];
   }
   this.panelMC[ins].gotoAndStop(f);
   i++;
}
var sx = _root.stoC % 3;
var sy = Math.floor(_root.stoC / 3);
var tg = this.panelMC.cursoleMC1;
tg._x = sx * 70;
tg._y = sy * 70;
