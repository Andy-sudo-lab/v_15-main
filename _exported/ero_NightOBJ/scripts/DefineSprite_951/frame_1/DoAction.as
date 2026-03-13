this.stop();
var i = 0;
while(i <= 8)
{
   var ins = "textMC" + i;
   if(_root.mararaFlg[i])
   {
      this[ins].gotoAndStop(2);
   }
   else
   {
      this[ins].gotoAndStop(1);
   }
   i++;
}
