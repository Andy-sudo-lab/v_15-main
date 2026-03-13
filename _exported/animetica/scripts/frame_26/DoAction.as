function TPsurvey()
{
   var _loc3_ = 0;
   var _loc2_ = 0;
   var _loc1_ = 0;
   _loc3_ = Math.round(volumeValP[vol[4]] / 3);
   _loc2_ = Math.round(2 * volumeValP[vol[4]] / 3);
   _loc1_ = volumeValP[vol[4]];
   if(_loc1_ <= BFco)
   {
      return true;
   }
   if(_loc2_ <= BFco)
   {
      transP1 = 2;
   }
   else if(_loc3_ <= BFco)
   {
      transP1 = 1;
   }
   else
   {
      transP1 = 0;
   }
   if(transP1 == transP2)
   {
      return false;
   }
   transP2 = transP1;
   return true;
}
function transitionPatturnPro()
{
   bfO = false;
   rtCo = 0;
   var _loc2_ = 0;
   var _loc1_ = 0;
   _loc2_ = Math.round(volumeValP[vol[4]] / 3);
   _loc1_ = Math.round(2 * volumeValP[vol[4]] / 3);
   if(ITno >= 1 && ITno <= 3)
   {
      if(_loc1_ <= BFco)
      {
         TPno = transitionVal[ITno][2];
      }
      else if(_loc2_ <= BFco)
      {
         TPno = transitionVal[ITno][1];
      }
      else
      {
         TPno = transitionVal[ITno][0];
      }
   }
   else if(ITno == 4)
   {
      do
      {
         bfR1 = Math.floor(Math.random() * 4);
      }
      while(bfR1 == bfR2);
      TPno = bfR2 = bfR1;
   }
   if(TPno != 0)
   {
      if(TPno != 1)
      {
         if(TPno != 2)
         {
            if(TPno == 3)
            {
            }
         }
      }
   }
}
function patternCheck()
{
   var _loc13_ = _root.initSetMC;
   var _loc12_ = false;
   var _loc9_ = false;
   var _loc3_ = "";
   var _loc11_ = _loc13_.myPattern.text;
   if(_loc11_ == "" || _loc11_ == " " || _loc11_ == "  " || _loc11_ == "   " || _loc11_ == "　" || _loc11_ == "　　" || _loc11_ == "　　　")
   {
      _loc13_.myPattern.text = simpleP[patNo];
   }
   var _loc5_ = 0;
   while(_loc5_ <= 10)
   {
      pf[_loc5_] = false;
      if(copyFlg[_loc5_])
      {
         pf[_loc5_] = pFlg[_loc5_];
      }
      _loc5_ = _loc5_ + 1;
   }
   var _loc0_;
   _loc11_ = myPattern = _loc13_.myPattern.text;
   var _loc6_;
   if(fukuLv != 101)
   {
      _loc6_ = true;
   }
   else
   {
      _loc6_ = false;
   }
   var _loc7_ = 0;
   var _loc4_;
   var _loc2_;
   var _loc10_;
   var _loc8_;
   while(_loc7_ <= _loc11_.length - 1)
   {
      _loc4_ = _loc11_.slice(_loc7_,_loc7_ + 1);
      _loc2_ = _loc4_.charCodeAt(0);
      if(_loc2_ >= 97 && _loc2_ <= 122 || _loc2_ == 85 || _loc2_ == 76 || _loc2_ == 73 || _loc2_ == 72 || _loc2_ == 69 || _loc2_ == 65 || _loc2_ == 82)
      {
         if(_loc2_ == 97 || _loc2_ == 98 || _loc2_ == 104 || _loc2_ == 105 || _loc2_ == 108)
         {
            _loc3_ += _loc4_;
         }
         else if(_loc2_ == 99)
         {
            if(_loc6_)
            {
               _loc6_ = false;
               _loc3_ += _loc4_;
            }
         }
         else if(_loc2_ == 100 || _loc2_ == 102 || _loc2_ == 117 || _loc2_ == 119)
         {
            if(_loc6_)
            {
               _loc6_ = false;
               _loc3_ += "c" + _loc4_;
            }
            else
            {
               _loc3_ += _loc4_;
            }
         }
         else if(_loc2_ == 101 || _loc2_ == 118)
         {
            if(_loc6_)
            {
               _loc6_ = false;
               _loc3_ += "c";
            }
            if(tgS.paiZuriFlg)
            {
               if(pf[4])
               {
                  _loc3_ += "@" + _loc4_;
                  _loc5_ = 0;
                  while(_loc5_ <= 4)
                  {
                     pf[_loc5_] = false;
                     _loc5_ = _loc5_ + 1;
                  }
               }
               else
               {
                  _loc3_ += _loc4_;
               }
            }
            else
            {
               _loc3_ += _loc4_;
            }
         }
         else if(_loc2_ == 103)
         {
            _loc5_ = 0;
            while(_loc5_ <= 10)
            {
               _loc10_ = TOcheck(pOrderO[_loc5_],true);
               if(_loc10_)
               {
                  _loc3_ += _loc4_;
                  pf[pOrderO[_loc5_]] = false;
                  break;
               }
               _loc5_ = _loc5_ + 1;
            }
         }
         else if(_loc2_ == 85 || _loc2_ == 76)
         {
            _loc5_ = 0;
            while(_loc5_ <= 4)
            {
               if(_loc2_ == 85)
               {
                  _loc10_ = TOcheck(pOrderU[_loc5_],true);
                  if(_loc10_)
                  {
                     _loc3_ += _loc4_;
                     pf[pOrderU[_loc5_]] = false;
                     break;
                  }
               }
               else if(_loc2_ == 76)
               {
                  _loc10_ = TOcheck(pOrderL[_loc5_],true);
                  if(_loc10_)
                  {
                     _loc3_ += _loc4_;
                     pf[pOrderL[_loc5_]] = false;
                     break;
                  }
               }
               _loc5_ = _loc5_ + 1;
            }
         }
         else if(_loc2_ == 106)
         {
            _loc10_ = TOcheck(4,false);
            if(_loc10_)
            {
               _loc3_ += _loc4_;
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ <= 3)
               {
                  _loc8_ = TOcheck(pOrderU[_loc5_],true);
                  if(_loc8_)
                  {
                     _loc3_ += "U";
                     pf[pOrderU[_loc5_]] = false;
                  }
                  _loc5_ = _loc5_ + 1;
               }
               _loc3_ += _loc4_;
            }
         }
         else if(_loc2_ == 82)
         {
            _loc10_ = TOcheck(3,false);
            if(_loc10_)
            {
               if(itemInvestigate(1))
               {
                  _loc3_ += _loc4_;
               }
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ <= 2)
               {
                  _loc8_ = TOcheck(pOrderU[_loc5_],true);
                  if(_loc8_)
                  {
                     _loc3_ += "U";
                     pf[pOrderU[_loc5_]] = false;
                  }
                  _loc5_ = _loc5_ + 1;
               }
               if(itemInvestigate(1))
               {
                  _loc3_ += _loc4_;
               }
            }
         }
         else if(_loc2_ == 107)
         {
            _loc10_ = TOcheck(10,false);
            if(_loc10_)
            {
               _loc3_ += _loc4_;
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ <= 3)
               {
                  _loc8_ = TOcheck(pOrderL[_loc5_],true);
                  if(_loc8_)
                  {
                     _loc3_ += "L";
                     pf[pOrderL[_loc5_]] = false;
                  }
                  _loc5_ = _loc5_ + 1;
               }
               _loc3_ += _loc4_;
            }
         }
         else if(_loc2_ == 109)
         {
            _loc10_ = TOcheck(2,false);
            if(_loc10_)
            {
               _loc3_ += _loc4_;
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ <= 1)
               {
                  _loc8_ = TOcheck(pOrderU[_loc5_],true);
                  if(_loc8_)
                  {
                     _loc3_ += "U";
                     pf[pOrderU[_loc5_]] = false;
                  }
                  _loc5_ = _loc5_ + 1;
               }
               _loc3_ += _loc4_;
            }
         }
         else if(_loc2_ == 110)
         {
            _loc10_ = TOcheck(11,false);
            if(_loc10_)
            {
               _loc3_ += _loc4_;
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ <= 4)
               {
                  _loc8_ = TOcheck(pOrderU[_loc5_],true);
                  if(_loc8_)
                  {
                     _loc3_ += "U";
                     pf[pOrderU[_loc5_]] = false;
                  }
                  _loc5_ = _loc5_ + 1;
               }
               _loc3_ += _loc4_;
            }
         }
         else if(_loc2_ == 111 || _loc2_ == 112 || _loc2_ == 114)
         {
            _loc10_ = TOcheck(8,false);
            if(_loc10_)
            {
               if(_loc2_ == 114)
               {
                  if(itemInvestigate(1))
                  {
                     _loc3_ += _loc4_;
                  }
               }
               else
               {
                  _loc3_ += _loc4_;
               }
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ <= 2)
               {
                  _loc8_ = TOcheck(pOrderL[_loc5_],true);
                  if(_loc8_)
                  {
                     _loc3_ += "L";
                     pf[pOrderL[_loc5_]] = false;
                  }
                  _loc5_ = _loc5_ + 1;
               }
               if(_loc2_ == 114)
               {
                  if(itemInvestigate(1))
                  {
                     _loc3_ += _loc4_;
                  }
               }
               else
               {
                  _loc3_ += _loc4_;
               }
            }
         }
         else if(_loc2_ == 113 || _loc2_ == 65 || _loc2_ == 115 || _loc2_ == 116 || _loc2_ == 73 || _loc2_ >= 120 && _loc2_ <= 122)
         {
            if(_loc2_ == 73)
            {
               _loc6_ = false;
            }
            _loc10_ = TOcheck(12,false) && TOcheck(10,false);
            if(_loc10_)
            {
               if(_loc2_ == 115)
               {
                  if(itemInvestigate(2))
                  {
                     _loc3_ += _loc4_;
                  }
               }
               else if(_loc2_ == 116)
               {
                  if(itemInvestigate(3))
                  {
                     _loc3_ += _loc4_;
                  }
               }
               else
               {
                  _loc3_ += _loc4_;
               }
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ <= 4)
               {
                  _loc8_ = TOcheck(pOrderL[_loc5_],true);
                  if(_loc8_)
                  {
                     _loc3_ += "L";
                     pf[pOrderL[_loc5_]] = false;
                  }
                  _loc5_ = _loc5_ + 1;
               }
               if(_loc2_ == 115)
               {
                  if(itemInvestigate(2))
                  {
                     _loc3_ += _loc4_;
                  }
               }
               else if(_loc2_ == 116)
               {
                  if(itemInvestigate(3))
                  {
                     _loc3_ += _loc4_;
                  }
               }
               else
               {
                  _loc3_ += _loc4_;
               }
            }
         }
         else if(_loc2_ == 72 || _loc2_ == 69)
         {
            _loc10_ = TOcheck(1,false);
            if(!_loc10_)
            {
               _loc3_ += "g";
               pf[pOrderO[0]] = false;
            }
            if(_loc2_ == 72 && !_loc9_)
            {
               _loc9_ = true;
               _loc3_ += _loc4_;
            }
            else if(_loc2_ == 69 && _loc9_)
            {
               _loc9_ = false;
               _loc3_ += _loc4_;
            }
         }
      }
      if(_loc2_ >= 117 && _loc2_ <= 122)
      {
         _loc12_ = true;
         finishP = _loc2_;
         break;
      }
      _loc7_ = _loc7_ + 1;
   }
   myPattern = _loc3_ + "!";
   return _loc12_;
}
function MCinitSet()
{
   var _loc3_ = _root.initSetMC;
   var _loc4_ = _loc3_.lv;
   var _loc5_ = _loc3_._currentframe;
   var _loc8_ = _loc3_._totalframes;
   if(KF(0) || KF(1) || KF(2) || KF(3))
   {
      winClose();
   }
   if(KF(1) && keyWait(3))
   {
      if(_loc5_ == 1)
      {
         _loc3_.gotoAndStop(_loc8_);
      }
      else
      {
         _loc3_.prevFrame();
      }
   }
   else if(KF(3) && keyWait(3))
   {
      if(_loc5_ == _loc8_)
      {
         _loc3_.gotoAndStop(1);
      }
      else
      {
         _loc3_.nextFrame();
      }
   }
   else if(KF(2) && keyWait(3))
   {
      if(_loc5_ == 1)
      {
         _loc3_.gotoAndStop(13);
      }
      else if(_loc5_ == 2)
      {
         _loc3_.gotoAndStop(16);
      }
      else if(_loc5_ >= 3 && _loc5_ <= 6)
      {
         _loc3_.gotoAndStop(17);
      }
      else if(_loc5_ >= 7 && _loc5_ <= 9)
      {
         _loc3_.gotoAndStop(18);
      }
      else if(_loc5_ >= 10 && _loc5_ <= 12)
      {
         _loc3_.gotoAndStop(19);
      }
   }
   else if(KF(0) && keyWait(3))
   {
      if(_loc5_ >= 13 && _loc5_ <= 15)
      {
         _loc3_.gotoAndStop(1);
      }
      else if(_loc5_ == 16)
      {
         _loc3_.gotoAndStop(2);
      }
      else if(_loc5_ == 17)
      {
         _loc3_.gotoAndStop(5);
      }
      else if(_loc5_ == 18)
      {
         _loc3_.gotoAndStop(8);
      }
   }
   var _loc9_ = Selection.getEndIndex();
   if(_loc4_ == "patternSet" && _loc9_ == -1)
   {
      Selection.setFocus(_loc3_.myPattern);
   }
   else if(_loc4_ != "patternSet")
   {
      Selection.setFocus(null);
   }
   if(_loc5_ == 1)
   {
      _loc3_.startTextMC.play();
   }
   else
   {
      _loc3_.startTextMC.gotoAndStop(1);
   }
   var _loc2_;
   var _loc6_;
   var _loc7_;
   if(KF(5) && keyWait(2))
   {
      if(_loc4_ == "start")
      {
         if(patternCheck())
         {
            AstartFlg = true;
            _loc2_ = 0;
            while(_loc2_ <= 10)
            {
               _loc6_ = "partsFlg" + _loc2_;
               if(copyFlg[_loc2_])
               {
                  enemy[eneNo][_loc6_] = pFlg[_loc2_];
               }
               _loc2_ = _loc2_ + 1;
            }
            tgS.stateSet();
         }
         else
         {
            _loc3_.gotoAndStop(_loc8_);
            Selection.setFocus(_loc3_.myPattern);
            _loc3_.errorTextMC.gotoAndStop(2);
         }
      }
      else if(_loc4_ == "iTransition")
      {
         ITno++;
         if(ITno >= 5)
         {
            ITno = 1;
         }
         _loc3_.insertTransitionMC.gotoAndStop(ITno);
      }
      else if(_loc4_ == "patternSelect")
      {
         patNo++;
         if(patNo >= 5)
         {
            patNo = 1;
         }
         _loc3_.patternMC.gotoAndStop(patNo);
         _loc3_.myPattern.text = "";
      }
      else if(_loc4_ == "patternSet")
      {
      }
      _loc2_ = 0;
      while(_loc2_ <= 10)
      {
         _loc7_ = "parts" + _loc2_;
         if(_loc4_ == _loc7_ && copyFlg[_loc2_])
         {
            if(pFlg[_loc2_])
            {
               pFlg[_loc2_] = false;
               _loc3_["onoffMC" + _loc2_].gotoAndStop(2);
            }
            else
            {
               pFlg[_loc2_] = true;
               _loc3_["onoffMC" + _loc2_].gotoAndStop(1);
            }
         }
         _loc2_ = _loc2_ + 1;
      }
      _loc2_ = 1;
      while(_loc2_ <= 4)
      {
         _loc7_ = "volume" + _loc2_;
         if(_loc4_ == _loc7_)
         {
            vol[_loc2_] = vol[_loc2_] + 1;
            if(vol[_loc2_] >= 6)
            {
               vol[_loc2_] = 1;
            }
            _loc3_["volumeMC" + _loc2_].gotoAndStop(vol[_loc2_]);
         }
         _loc2_ = _loc2_ + 1;
      }
      winClose();
   }
}
function BTNset()
{
   var _loc3_ = _root.initSetMC;
   _loc3_.txtName.text = enemy[eneNo].name + " ：";
   var _loc2_ = 0;
   var _loc5_;
   var _loc4_;
   while(_loc2_ <= 10)
   {
      _loc5_ = "onoffMC" + _loc2_;
      _loc4_ = "txt" + _loc2_;
      if(!copyFlg[_loc2_])
      {
         _loc3_[_loc5_].gotoAndStop(3);
      }
      else if(!pFlg[_loc2_])
      {
         _loc3_[_loc5_].gotoAndStop(2);
      }
      _loc3_[_loc4_].text = tgS["partsName" + _loc2_];
      _loc2_ = _loc2_ + 1;
   }
   _loc2_ = 1;
   while(_loc2_ <= 4)
   {
      _loc5_ = "volumeMC" + _loc2_;
      _loc3_[_loc5_].gotoAndStop(vol[_loc2_]);
      _loc2_ = _loc2_ + 1;
   }
   _loc3_.insertTransitionMC.gotoAndStop(ITno);
   _loc3_.patternMC.gotoAndStop(patNo);
   _loc3_.myPattern.text = myPattern;
}
function itemInvestigate(n)
{
   var _loc2_;
   if(n == 1)
   {
      _loc2_ = new Array(54,52,51);
   }
   else if(n == 2)
   {
      _loc2_ = new Array(71,70,68,66,64,62,60,59,57,52);
   }
   else if(n == 3)
   {
      _loc2_ = new Array(77,76,75);
   }
   var _loc1_ = 0;
   var _loc3_;
   while(_loc1_ <= _loc2_.length)
   {
      _loc3_ = BCtimes(_loc2_[_loc1_]);
      if(_loc3_ != -1)
      {
         BFweponLv = _loc2_[_loc1_];
         return true;
      }
      _loc1_ = _loc1_ + 1;
   }
   return false;
}
function BCtimes(no)
{
   var _loc1_ = 0;
   while(_loc1_ <= 23)
   {
      if(itemBN[_loc1_] == no)
      {
         return _loc1_;
      }
      _loc1_ = _loc1_ + 1;
   }
   return -1;
}
