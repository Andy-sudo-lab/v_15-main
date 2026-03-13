var en = _root.eNo;
var ectP = _root.enemy[en].ectP;
var ectPmax = _root.enemy[en].ectPmax;
var pe = Math.round(ectP / ectPmax * 100);
if(pe == 0)
{
   pe = 1;
}
this.gotoAndStop(pe);
