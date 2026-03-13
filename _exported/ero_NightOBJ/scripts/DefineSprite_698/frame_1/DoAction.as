var i = 1;
while(i <= 9)
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
