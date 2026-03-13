initialSet(0);
_root.hosiMarkMC._visible = false;
_root.sBattleMC.gotoAndStop(SBcursole);
var i = 0;
while(i <= 100)
{
   if(SBCflg[i])
   {
      var ins = "SBMC" + i;
      _root.sBattleMC[ins].gotoAndStop(2);
   }
   i++;
}
