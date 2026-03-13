function BattleTextDataSet()
{
   var _loc2_ = _root.enemy[eNo].name;
   var _loc3_ = _root.cName;
   BTD = new Array();
   BTD[11] = _loc2_ + " pressed her boobs firmly! \n\n" + _loc2_ + ": Are you getting excited? ";
   BTD[12] = _loc2_ + " breathed to your ear! \n\n" + _loc2_ + ": Come on, let\'s have a little fun. ";
   BTD[13] = _loc2_ + " is trying to take down your pants! \n\n" + _loc2_ + ": Awww, come on, take them off already! ";
   BTD[14] = _loc2_ + " took down your pants! \n\n" + _loc2_ + ": Yeep!  Oh my gosh... ";
   BTD[15] = _loc2_ + " starts to do a hand job! \n\n" + _loc2_ + ": Am I doing it right? ";
   BTD[16] = _loc2_ + " starts to suck your cock! \n\n" + _loc2_ + ": Do you like that?  Is this good for you? ";
   BTD[17] = _loc2_ + " sucks your dick! \n\n" + _loc2_ + ": Oh, I\'m so embarrassed doing this... ";
   BTD[18] = _loc2_ + " is struggling. \n\n" + _loc2_ + ": Cut it out! ";
   BTD[28] = _loc2_ + " See you later! ";
   BTD[30] = _loc3_ + " came, and then fainted... \n\n" + _loc2_ + ": Hee hee hee...  Did you come already? ";
   BTD[31] = _loc3_ + " came, and then fainted... \n\n" + _loc2_ + ": You came already?  Awww, that\'s no fun! ";
   BTD[32] = _loc3_ + " came, and then fainted... \n\n" + _loc2_ + ": You\'re done?  I\'m disappointed in you. ";
   BTD[35] = _loc2_ + " has passed out... \n\n" + _loc2_ + ": I feel...  kind of...  sleepy... ";
   partsName0 = "nothing";
   partsName1 = "nothing";
   partsName2 = "Vest";
   partsName3 = "Shirt";
   partsName4 = "Brassiere";
   partsName5 = "Mule";
   partsName6 = "nothing";
   partsName7 = "Skirt";
   partsName8 = "Stocking";
   partsName9 = "nothing";
   partsName10 = "Panty";
}
function stateSet()
{
   tgE = this.enemyMC;
   tgHd1 = tgE.bodyUMC.headMC;
   tgHd2 = tgE.headMC;
   tgAR1 = tgE.bodyUMC.armRMC;
   tgAL1 = tgE.bodyUMC.armLMC;
   tgAR2 = tgE.armRMC;
   tgAR3 = tgE.armRMC2;
   tgAL2 = tgE.armLMC;
   tgLR1 = tgE.bodyLMC.legRMC;
   tgLL1 = tgE.bodyLMC.legLMC;
   tgBU = tgE.bodyUMC;
   tgBL = tgE.bodyLMC;
   tgMz = tgE.bodyLMC.mozaMC;
   tgP = this.priMC;
   tgPpn = tgE.pantsMC;
   tgPhd = tgE.handMC;
   tgPwpn = tgE.weponMC;
   tgPatk = tgE.bodyUMC.priAMC;
   var _loc5_;
   var _loc4_;
   var _loc3_;
   if(farFlg)
   {
      _loc5_ = tgAL1._totalframes;
      _loc4_ = tgAR1._totalframes;
      _loc3_ = this._currentframe;
      if(_loc3_ == 30 || _loc3_ == 35)
      {
         tgAL1.gotoAndStop(_loc5_);
         tgAR1.gotoAndStop(_loc4_);
      }
   }
   if(!_root.enemy[eNo].partsFlg5)
   {
      tgLL1.partsMC5._visible = tgLR1.partsMC5._visible = tgBL.partsMC5._visible = false;
   }
   if(!_root.enemy[eNo].partsFlg3)
   {
      tgBU.partsMC3._visible = tgBL.partsMC3._visible = tgE.partsMC3._visible = false;
      tgAR1.partsMC3._visible = tgAL1.partsMC3._visible = false;
      tgAR2.partsMC3._visible = tgAR3.partsMC3._visible = tgAL2.partsMC3._visible = false;
   }
   if(!_root.enemy[eNo].partsFlg2)
   {
      tgBU.partsMC2._visible = tgE.partsMC2._visible = false;
      tgBL.partsMC2._visible = false;
   }
   if(!_root.enemy[eNo].partsFlg7)
   {
      tgBL.partsMC7._visible = tgBL.partsMC7a._visible = tgE.partsMC7._visible = false;
   }
   if(!_root.enemy[eNo].partsFlg8)
   {
      tgBL.partsMC8._visible = tgBU.partsMC8._visible = tgE.partsMC8._visible = false;
      tgLL1.partsMC8._visible = tgLR1.partsMC8._visible = false;
   }
   if(!_root.enemy[eNo].partsFlg4)
   {
      tgBU.partsMC4._visible = tgE.partsMC4._visible = false;
   }
   if(!_root.enemy[eNo].partsFlg10)
   {
      tgBL.partsMC10._visible = tgE.partsMC10._visible = false;
      tgMz.gotoAndStop(2);
   }
   tgE.optionMC.itemMC41._visible = aromaLflg;
   tgE.optionMC.itemMC31._visible = okouFlg;
   tgPpn.gotoAndStop(_root.fukuLv - 100);
   tgPhd._visible = _root.BFbougyoFlg;
   if(weponLv >= 2)
   {
      tgPwpn.gotoAndStop(weponLv);
   }
   else
   {
      tgPwpn.gotoAndStop(1);
   }
}
function armCheck()
{
   if(!_root.enemy[eNo].partsFlg3)
   {
      tgBU.partsMC3._visible = tgBL.partsMC3._visible = tgE.partsMC3._visible = false;
      tgAR1.partsMC3._visible = tgAL1.partsMC3._visible = false;
      tgAR2.partsMC3._visible = tgAR3.partsMC3._visible = tgAL2.partsMC3._visible = false;
   }
}
eNo = 10;
MASOflg = true;
farFlg = false;
aromaLflg = false;
okouFlg = false;
weponLv = 1;
stateSet();
BattleTextDataSet();
if(_root.mapNo == 0 && _root.mapY == 46 && _root.mapX == 49)
{
   var no = 43;
}
else
{
   var no = _root.map[_root.mapNo][_root.mapY][_root.mapX];
}
if(no == -2)
{
   no = 55;
}
this.backMC.gotoAndStop(no);
_root.enemyDamCal(0);
if(_root.fukuLv != 101)
{
   pantsFlg = true;
}
else
{
   pantsFlg = false;
}
